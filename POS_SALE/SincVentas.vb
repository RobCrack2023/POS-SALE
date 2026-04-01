Imports System.Net.Http
Imports System.Text
Imports System.IO
Imports Newtonsoft.Json

''' <summary>
''' Sincronización de ventas con el backend FastAPI.
''' Errores se registran en Data\sinc_errors.log (sin interrumpir la caja).
''' </summary>
Module SincVentas

    Private ReadOnly LogPath As String =
        Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Data", "sinc_errors.log")

    Private ReadOnly Property BackendUrl As String
        Get
            Return apiurl.TrimEnd("/"c)
        End Get
    End Property

    Private Sub LogError(msg As String)
        Try
            File.AppendAllText(LogPath,
                $"[{DateTime.Now:yyyy-MM-dd HH:mm:ss}] {msg}{Environment.NewLine}")
        Catch
        End Try
    End Sub

    ' ── Conversión segura de enteros (DBNull → Nothing o valor por defecto) ──
    Private Function SafeInt(val As Object, Optional def As Object = Nothing) As Object
        If IsDBNull(val) OrElse val Is Nothing Then Return def
        Try
            Return CInt(val)
        Catch
            Return def
        End Try
    End Function

    ' ── Formato seguro de fecha desde SQLite ─────────────────────────────────
    Private Function FechaStr(val As Object) As String
        If IsDBNull(val) OrElse val Is Nothing Then Return Nothing
        Try
            Return CDate(val).ToString("yyyy-MM-dd")
        Catch
            Return val.ToString()
        End Try
    End Function

    Private Function HoraStr(val As Object) As String
        If IsDBNull(val) OrElse val Is Nothing Then Return Nothing
        Try
            ' SQLite puede devolver TIME como TimeSpan, DateTime o String
            ' según el locale de Windows, ToString() puede usar "-" como separador
            ' → forzar siempre "HH:mm:ss"
            If TypeOf val Is TimeSpan Then
                Dim ts As TimeSpan = CType(val, TimeSpan)
                Return String.Format("{0:D2}:{1:D2}:{2:D2}", ts.Hours, ts.Minutes, ts.Seconds)
            End If
            Dim dt As DateTime
            If DateTime.TryParse(val.ToString(), dt) Then
                Return dt.ToString("HH:mm:ss")
            End If
            Return val.ToString().Trim()
        Catch
            Return val.ToString().Trim()
        End Try
    End Function

    ' ─────────────────────────────────────────────────────────────────────────
    ' Obtiene el intervalo de sincronización configurado en el backend (minutos).
    ' ─────────────────────────────────────────────────────────────────────────
    Public Function ObtenerIntervaloSync(idSucursal As Integer) As Integer
        Try
            Using client As New HttpClient()
                client.Timeout = TimeSpan.FromSeconds(5)
                Dim resp = client.GetStringAsync(
                    BackendUrl & "/api/v1/ventas/config/" & idSucursal).Result
                Dim json = JsonConvert.DeserializeObject(Of Dictionary(Of String, Object))(resp)
                If json IsNot Nothing AndAlso json.ContainsKey("intervalo_sync_min") Then
                    Return CInt(json("intervalo_sync_min"))
                End If
            End Using
        Catch ex As Exception
            LogError("ObtenerIntervaloSync: " & ex.Message)
        End Try
        Return 5
    End Function

    ' ─────────────────────────────────────────────────────────────────────────
    ' Envío periódico: vta_cab + vta_det del Z activo (sin cerrar).
    ' ─────────────────────────────────────────────────────────────────────────
    Public Sub EnviarVentasPeriodica(idz As Integer)
        If idz <= 0 Then Exit Sub
        Try
            Dim objconnn As New DBCONECTAR1

            Dim tablaCab As DataTable = objconnn.ExecutarMySQLTablas(
                "SELECT * FROM vta_cab WHERE id_vtaz=" & idz)
            If tablaCab.Rows.Count = 0 Then Exit Sub

            Dim ventas As New List(Of Dictionary(Of String, Object))
            Dim idsCab As New List(Of String)
            For Each row As DataRow In tablaCab.Rows
                ventas.Add(BuildVtaCab(row))
                idsCab.Add(CInt(row("id_vencab")).ToString())
            Next

            Dim detalles = LeerDetalles(objconnn, idsCab)
            Dim pagos = LeerPagos(objconnn, idsCab)

            Dim tablaZ As DataTable = objconnn.ExecutarMySQLTablas(
                "SELECT * FROM vta_z WHERE id_cabz=" & idz)
            If tablaZ.Rows.Count = 0 Then Exit Sub

            EnviarPayload(tablaZ.Rows(0), ventas, detalles, pagos)

        Catch ex As Exception
            LogError("EnviarVentasPeriodica(idz=" & idz & "): " & ex.Message)
        End Try
    End Sub

    ' ─────────────────────────────────────────────────────────────────────────
    ' Envío completo al cierre Z: vta_z + todas sus vta_cab + vta_det + arqueo.
    ' ─────────────────────────────────────────────────────────────────────────
    Public Sub EnviarVentasBackend(idz As Integer)
        If idz <= 0 Then Exit Sub
        Try
            Dim objconnn As New DBCONECTAR1

            Dim tablaZ As DataTable = objconnn.ExecutarMySQLTablas(
                "SELECT * FROM vta_z WHERE id_cabz=" & idz)
            If tablaZ.Rows.Count = 0 Then Exit Sub

            Dim tablaCab As DataTable = objconnn.ExecutarMySQLTablas(
                "SELECT * FROM vta_cab WHERE id_vtaz=" & idz)

            Dim ventas As New List(Of Dictionary(Of String, Object))
            Dim idsCab As New List(Of String)
            For Each row As DataRow In tablaCab.Rows
                ventas.Add(BuildVtaCab(row))
                idsCab.Add(CInt(row("id_vencab")).ToString())
            Next

            Dim detalles = LeerDetalles(objconnn, idsCab)
            Dim pagos = LeerPagos(objconnn, idsCab)
            Dim arqueoDet = LeerArqueoDet(objconnn, idz)
            Dim boleta = LeerBoleta(objconnn, idz)

            EnviarPayload(tablaZ.Rows(0), ventas, detalles, pagos, arqueoDet, boleta)

        Catch ex As Exception
            LogError("EnviarVentasBackend(idz=" & idz & "): " & ex.Message)
        End Try
    End Sub

    ' ─────────────────────────────────────────────────────────────────────────
    ' Envío masivo: todos los turnos de la sucursal (para botón Actualizar).
    ' ─────────────────────────────────────────────────────────────────────────
    Public Function EnviarTodasLasVentas(Optional idSucursal As Integer = 0) As Integer
        Dim enviados As Integer = 0
        Dim idSuc As Integer = If(idSucursal > 0, idSucursal, idsucursalpublic)
        Try
            Dim objconnn As New DBCONECTAR1
            Dim whereClause As String = If(idSuc > 0, " WHERE id_sucursal=" & idSuc, "")
            Dim tablaZ As DataTable = objconnn.ExecutarMySQLTablas(
                "SELECT * FROM vta_z" & whereClause & " ORDER BY id_cabz")
            For Each rowZ As DataRow In tablaZ.Rows
                Dim idz As Integer = CInt(rowZ("id_cabz"))
                Try
                    Dim tablaCab As DataTable = objconnn.ExecutarMySQLTablas(
                        "SELECT * FROM vta_cab WHERE id_vtaz=" & idz)
                    Dim ventas As New List(Of Dictionary(Of String, Object))
                    Dim idsCab As New List(Of String)
                    For Each row As DataRow In tablaCab.Rows
                        ventas.Add(BuildVtaCab(row))
                        idsCab.Add(CInt(row("id_vencab")).ToString())
                    Next
                    Dim detalles = LeerDetalles(objconnn, idsCab)
                    Dim pagos = LeerPagos(objconnn, idsCab)
                    Dim arqueoDet = LeerArqueoDet(objconnn, idz)
                    Dim boleta = LeerBoleta(objconnn, idz)
                    EnviarPayload(rowZ, ventas, detalles, pagos, arqueoDet, boleta)
                    enviados += 1
                Catch ex As Exception
                    LogError("EnviarTodasLasVentas(idz=" & idz & "): " & ex.Message)
                End Try
            Next
        Catch ex As Exception
            LogError("EnviarTodasLasVentas: " & ex.Message)
        End Try
        Return enviados
    End Function

    ' ─────────────────────────────────────────────────────────────────────────
    ' Helpers privados
    ' ─────────────────────────────────────────────────────────────────────────
    Private Function BuildVtaCab(row As DataRow) As Dictionary(Of String, Object)
        Return New Dictionary(Of String, Object) From {
            {"id_vencab",    SafeInt(row("id_vencab"), 0)},
            {"id_sucursal",  SafeInt(row("id_sucursal"), 0)},
            {"id_caja",      SafeInt(row("id_caja"), 0)},
            {"id_usuario",   SafeInt(row("id_usuario"), 0)},
            {"fecha",        FechaStr(row("fecha"))},
            {"hora",         HoraStr(row("hora"))},
            {"id_vtaz",      SafeInt(row("id_vtaz"), 0)},
            {"total",        If(IsDBNull(row("total")), 0.0, CDbl(row("total")))},
            {"estado",       SafeInt(row("estado"), 1)},
            {"numboleta",    SafeInt(row("numboleta"))},
            {"id_mtvoanula", SafeInt(row("id_mtvoanula"))},
            {"obsmtvoanula", If(IsDBNull(row("obsmtvoanula")), Nothing, row("obsmtvoanula").ToString())}
        }
    End Function

    Private Function LeerDetalles(objconnn As DBCONECTAR1,
                                   idsCab As List(Of String)) As List(Of Dictionary(Of String, Object))
        Dim detalles As New List(Of Dictionary(Of String, Object))
        If idsCab.Count = 0 Then Return detalles

        Dim tablaDet As DataTable = objconnn.ExecutarMySQLTablas(
            "SELECT * FROM vta_det WHERE id_cabvta IN (" & String.Join(",", idsCab) & ")")
        For Each row As DataRow In tablaDet.Rows
            detalles.Add(New Dictionary(Of String, Object) From {
                {"id_detvta",       SafeInt(row("id_detvta"), 0)},
                {"id_cabvta",       SafeInt(row("id_cabvta"), 0)},
                {"id_producto",     SafeInt(row("id_producto"), 0)},
                {"numunico",        SafeInt(row("numunico"), 0)},
                {"cant",            If(IsDBNull(row("cant")), 0.0, CDbl(row("cant")))},
                {"precio_unitario", SafeInt(row("precio_unitario"), 0)},
                {"desc_producto",   If(IsDBNull(row("desc_producto")), Nothing, row("desc_producto").ToString())}
            })
        Next
        Return detalles
    End Function

    Private Function LeerPagos(objconnn As DBCONECTAR1,
                                idsCab As List(Of String)) As List(Of Dictionary(Of String, Object))
        Dim pagos As New List(Of Dictionary(Of String, Object))
        If idsCab.Count = 0 Then Return pagos

        Dim tablaPago As DataTable = objconnn.ExecutarMySQLTablas(
            "SELECT * FROM vta_pago WHERE id_cabvta IN (" & String.Join(",", idsCab) & ")")
        For Each row As DataRow In tablaPago.Rows
            pagos.Add(New Dictionary(Of String, Object) From {
                {"id_cabvta",  SafeInt(row("id_cabvta"), 0)},
                {"id_tipo",    SafeInt(row("id_tipo"), 0)},
                {"monto",      If(IsDBNull(row("monto")), 0.0, CDbl(row("monto")))},
                {"cambio",     If(IsDBNull(row("cambio")), 0.0, CDbl(row("cambio")))},
                {"rut_varios", If(IsDBNull(row("rut_varios")), Nothing, row("rut_varios").ToString())}
            })
        Next
        Return pagos
    End Function

    Private Function LeerArqueoDet(objconnn As DBCONECTAR1, idz As Integer) As List(Of Dictionary(Of String, Object))
        Dim result As New List(Of Dictionary(Of String, Object))
        Dim dt As DataTable = objconnn.ExecutarMySQLTablas(
            "SELECT id_vtaz, id_tipopago, monto FROM vta_arqueo_det WHERE id_vtaz=" & idz)
        For Each row As DataRow In dt.Rows
            result.Add(New Dictionary(Of String, Object) From {
                {"id_vtaz",     SafeInt(row("id_vtaz"), 0)},
                {"id_tipopago", SafeInt(row("id_tipopago"), 0)},
                {"monto",       If(IsDBNull(row("monto")), 0.0, CDbl(row("monto")))}
            })
        Next
        Return result
    End Function

    Private Function LeerBoleta(objconnn As DBCONECTAR1, idz As Integer) As Dictionary(Of String, Object)
        Dim dt As DataTable = objconnn.ExecutarMySQLTablas(
            "SELECT id_vtaz, id_vtacab, numini, numfin FROM vta_boleta WHERE id_vtaz=" & idz & " LIMIT 1")
        If dt.Rows.Count = 0 Then Return Nothing
        Dim row As DataRow = dt.Rows(0)
        Return New Dictionary(Of String, Object) From {
            {"id_vtaz",   SafeInt(row("id_vtaz"), 0)},
            {"id_vtacab", SafeInt(row("id_vtacab"), 0)},
            {"numini",    If(IsDBNull(row("numini")), 0, CInt(row("numini")))},
            {"numfin",    If(IsDBNull(row("numfin")), 0, CInt(row("numfin")))}
        }
    End Function

    Private Sub EnviarPayload(rowZ As DataRow,
                               ventas As List(Of Dictionary(Of String, Object)),
                               detalles As List(Of Dictionary(Of String, Object)),
                               pagos As List(Of Dictionary(Of String, Object)),
                               Optional arqueoDet As List(Of Dictionary(Of String, Object)) = Nothing,
                               Optional boleta As Dictionary(Of String, Object) = Nothing)
        Dim vtaZ As New Dictionary(Of String, Object) From {
            {"id_cabz",     SafeInt(rowZ("id_cabz"), 0)},
            {"id_sucursal", SafeInt(rowZ("id_sucursal"), 0)},
            {"id_caja",     SafeInt(rowZ("id_caja"), 0)},
            {"fec_ini",     FechaStr(rowZ("fec_ini"))},
            {"hrs_ini",     HoraStr(rowZ("hrs_ini"))},
            {"fec_ter",     FechaStr(rowZ("fec_ter"))},
            {"hrs_ter",     HoraStr(rowZ("hrs_ter"))},
            {"num_z",       SafeInt(rowZ("num_z"), 0)},
            {"estado",      SafeInt(rowZ("estado"), 1)}
        }

        Dim payload As New Dictionary(Of String, Object) From {
            {"vta_z",       vtaZ},
            {"ventas",      ventas},
            {"detalles",    detalles},
            {"pagos",       pagos},
            {"arqueo_det",  If(arqueoDet IsNot Nothing, arqueoDet, New List(Of Dictionary(Of String, Object))())},
            {"boleta",      boleta}
        }

        Dim json As String = JsonConvert.SerializeObject(payload)
        Dim endpoint As String = BackendUrl & "/api/v1/ventas/upload"

        Using client As New HttpClient()
            client.Timeout = TimeSpan.FromSeconds(30)
            Dim content As New StringContent(json, Encoding.UTF8, "application/json")
            Dim response = client.PostAsync(endpoint, content).Result
            If Not response.IsSuccessStatusCode Then
                Dim body = response.Content.ReadAsStringAsync().Result
                LogError($"EnviarPayload HTTP {CInt(response.StatusCode)}: {body.Substring(0, Math.Min(500, body.Length))}")
            End If
        End Using
    End Sub

End Module
