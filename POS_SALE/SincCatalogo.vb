Imports System.Net.Http
Imports System.Configuration
Imports System.IO
Imports Newtonsoft.Json.Linq

Module SincCatalogo

    Private Function BackendUrl() As String
        Dim url = ConfigurationManager.AppSettings("BackendUrl")
        If String.IsNullOrEmpty(url) Then url = "http://localhost:8000"
        Return url.TrimEnd("/"c)
    End Function

    ''' <summary>
    ''' Descarga el catálogo completo del backend y reemplaza los datos locales.
    ''' Retorna True si OK, False si hubo error (el POS sigue con datos anteriores).
    ''' </summary>
    Public Function DescargarCatalogo(idSucursal As Integer) As Boolean
        Try
            Using client As New HttpClient()
                client.Timeout = TimeSpan.FromSeconds(60)
                Dim url = $"{BackendUrl()}/api/v1/sync/{idSucursal}"
                Dim json = client.GetStringAsync(url).Result
                Dim data = JObject.Parse(json)
                AplicarCatalogo(data)
                Return True
            End Using
        Catch ex As Exception
            LogError("DescargarCatalogo: " & ex.Message)
            Return False
        End Try
    End Function

    Private Sub AplicarCatalogo(data As JObject)
        Dim db As New DBCONECTAR1
        Dim ops As New List(Of OperacionSQL)

        ' ── Sucursal ─────────────────────────────────────────────────────
        Dim suc = data("sucursal")
        ops.Add(Op("DELETE FROM sucursal"))
        ops.Add(Op("INSERT INTO sucursal (id_Sucursal, Nom_Sucursal, suc_ab, activo_caja) " &
                   "VALUES (@id, @nom, @ab, 1)", New Dictionary(Of String, Object) From {
            {"@id",  CInt(suc("id_sucursal"))},
            {"@nom", CStr(suc("nom_sucursal"))},
            {"@ab",  NS(suc("suc_ab"))}
        }))
        ops.Add(Op("UPDATE config SET idsucursal=@id",
            New Dictionary(Of String, Object) From {{"@id", CInt(suc("id_sucursal"))}}))

        ' ── Dptos ────────────────────────────────────────────────────────
        ops.Add(Op("DELETE FROM dpto"))
        For Each item In CType(data("dptos"), JArray)
            ops.Add(Op("INSERT INTO dpto (NUMDPTO, DESCRIPCION, ACTIVO) VALUES (@id, @desc, @activo)",
                New Dictionary(Of String, Object) From {
                    {"@id",     CInt(item("numdpto"))},
                    {"@desc",   CStr(item("descripcion"))},
                    {"@activo", CInt(item("activo"))}
                }))
        Next

        ' ── Secciones ────────────────────────────────────────────────────
        ops.Add(Op("DELETE FROM secciones"))
        For Each item In CType(data("secciones"), JArray)
            ops.Add(Op("INSERT INTO secciones (NUMSECCION, NUMDPTO, DESCRIPCION) " &
                       "VALUES (@id, @dpto, @desc)",
                New Dictionary(Of String, Object) From {
                    {"@id",   CInt(item("numseccion"))},
                    {"@dpto", CInt(item("numdpto"))},
                    {"@desc", CStr(item("descripcion"))}
                }))
        Next

        ' ── Unidades de medida ───────────────────────────────────────────
        ops.Add(Op("DELETE FROM umedida"))
        For Each item In CType(data("umedidas"), JArray)
            ops.Add(Op("INSERT INTO umedida (idumedida, descrip) VALUES (@id, @desc)",
                New Dictionary(Of String, Object) From {
                    {"@id",   CInt(item("idumedida"))},
                    {"@desc", NS(item("descrip"))}
                }))
        Next

        ' ── Productos ────────────────────────────────────────────────────
        ops.Add(Op("DELETE FROM productos"))
        For Each item In CType(data("productos"), JArray)
            ops.Add(Op("INSERT INTO productos " &
                       "(codarticulo, descripcion, dpto, seccion, unidadmedida, medidareferencia, porpeso, descatalogado, pedidoloc) " &
                       "VALUES (@cod, @desc, @dpto, @sec, @um, @mr, @pp, @dc, @pl)",
                New Dictionary(Of String, Object) From {
                    {"@cod",  CInt(item("codarticulo"))},
                    {"@desc", NS(item("descripcion"))},
                    {"@dpto", NI(item("dpto"))},
                    {"@sec",  NI(item("seccion"))},
                    {"@um",   NS(item("unidadmedida"))},
                    {"@mr",   If(item("medidareferencia") Is Nothing OrElse item("medidareferencia").Type = JTokenType.Null, 1, CInt(item("medidareferencia")))},
                    {"@pp",   NS(item("porpeso"))},
                    {"@dc",   If(item("descatalogado") Is Nothing OrElse item("descatalogado").Type = JTokenType.Null, "F", CStr(item("descatalogado")))},
                    {"@pl",   If(item("pedidoloc") Is Nothing OrElse item("pedidoloc").Type = JTokenType.Null, 0, CInt(item("pedidoloc")))}
                }))
        Next

        ' ── Precios ──────────────────────────────────────────────────────
        ops.Add(Op("DELETE FROM precioproductos"))
        For Each item In CType(data("precios"), JArray)
            ops.Add(Op("INSERT INTO precioproductos (CODARTICULO, PBRUTO, SUCURSAl) VALUES (@cod, @precio, @suc)",
                New Dictionary(Of String, Object) From {
                    {"@cod",    CInt(item("codarticulo"))},
                    {"@precio", CInt(item("pbruto"))},
                    {"@suc",    CInt(item("sucursal"))}
                }))
        Next

        ' ── ProdVta ──────────────────────────────────────────────────────
        ops.Add(Op("DELETE FROM vta_prodvta"))
        For Each item In CType(data("prodvta"), JArray)
            ops.Add(Op("INSERT INTO vta_prodvta (id_producto, cod_plu, id_sucursal, id_activo, descuentos, precio, id_plibre) " &
                       "VALUES (@prod, @plu, @suc, @activo, @desc, @precio, @plibre)",
                New Dictionary(Of String, Object) From {
                    {"@prod",   CInt(item("id_producto"))},
                    {"@plu",    CInt(item("cod_plu"))},
                    {"@suc",    CInt(item("id_sucursal"))},
                    {"@activo", CInt(item("id_activo"))},
                    {"@desc",   CInt(item("descuentos"))},
                    {"@precio", CDbl(item("precio"))},
                    {"@plibre", If(item("id_plibre") Is Nothing OrElse item("id_plibre").Type = JTokenType.Null, 0, CInt(item("id_plibre")))}
                }))
        Next

        ' ── Tipos de pago ────────────────────────────────────────────────
        ops.Add(Op("DELETE FROM vta_tipopago"))
        For Each item In CType(data("tipos_pago"), JArray)
            ops.Add(Op("INSERT INTO vta_tipopago (id_tipopago, texto_tipopago, color_tipopago, in_doc, id_activo, Posicion) " &
                       "VALUES (@id, @txt, @color, @indoc, @activo, @pos)",
                New Dictionary(Of String, Object) From {
                    {"@id",     CInt(item("id_tipopago"))},
                    {"@txt",    NS(item("texto_tipopago"))},
                    {"@color",  NS(item("color_tipopago"))},
                    {"@indoc",  CInt(item("in_doc"))},
                    {"@activo", CInt(item("id_activo"))},
                    {"@pos",    CInt(item("posicion"))}
                }))
        Next

        ' ── Tipos doc ────────────────────────────────────────────────────
        ops.Add(Op("DELETE FROM vta_tipodoc"))
        For Each item In CType(data("tipos_doc"), JArray)
            ops.Add(Op("INSERT INTO vta_tipodoc (id_tipodoc, desc) VALUES (@id, @desc)",
                New Dictionary(Of String, Object) From {
                    {"@id",   CInt(item("id_tipodoc"))},
                    {"@desc", NS(item("desc"))}
                }))
        Next

        ' ── Estados ──────────────────────────────────────────────────────
        ops.Add(Op("DELETE FROM vta_estado"))
        For Each item In CType(data("estados"), JArray)
            ops.Add(Op("INSERT INTO vta_estado (id_vtaestado, descrip) VALUES (@id, @desc)",
                New Dictionary(Of String, Object) From {
                    {"@id",   CInt(item("id_vtaestado"))},
                    {"@desc", NS(item("descrip"))}
                }))
        Next

        ' ── Motivos anulación ────────────────────────────────────────────
        ops.Add(Op("DELETE FROM vta_mtvoanula"))
        For Each item In CType(data("motivos_anula"), JArray)
            ops.Add(Op("INSERT INTO vta_mtvoanula (id_mtvoanula, desc_mtvoanula) VALUES (@id, @desc)",
                New Dictionary(Of String, Object) From {
                    {"@id",   CInt(item("id_mtvoanula"))},
                    {"@desc", NS(item("desc_mtvoanula"))}
                }))
        Next

        ' ── Motivos descuento ────────────────────────────────────────────
        ops.Add(Op("DELETE FROM vta_mvodesc"))
        For Each item In CType(data("motivos_desc"), JArray)
            ops.Add(Op("INSERT INTO vta_mvodesc (id_mvodesc, desc_mvodescp) VALUES (@id, @desc)",
                New Dictionary(Of String, Object) From {
                    {"@id",   CInt(item("id_mvodesc"))},
                    {"@desc", NS(item("desc_mvodescp"))}
                }))
        Next

        ' ── Tipos movimiento ─────────────────────────────────────────────
        ops.Add(Op("DELETE FROM vta_tipomov"))
        For Each item In CType(data("tipos_mov"), JArray)
            ops.Add(Op("INSERT INTO vta_tipomov (id_vtatipomov, desc_vtatipomov, tipo, id_tipocuenta) " &
                       "VALUES (@id, @desc, @tipo, @tc)",
                New Dictionary(Of String, Object) From {
                    {"@id",   CInt(item("id_vtatipomov"))},
                    {"@desc", NS(item("desc_vtatipomov"))},
                    {"@tipo", NI(item("tipo"))},
                    {"@tc",   NI(item("id_tipocuenta"))}
                }))
        Next

        ' ── Cuentas ──────────────────────────────────────────────────────
        ops.Add(Op("DELETE FROM vta_cuentas"))
        For Each item In CType(data("cuentas"), JArray)
            ops.Add(Op("INSERT INTO vta_cuentas (id_vtacuentas, nom_cuenta, activo) VALUES (@id, @nom, @activo)",
                New Dictionary(Of String, Object) From {
                    {"@id",     CInt(item("id_vtacuentas"))},
                    {"@nom",    NS(item("nom_cuenta"))},
                    {"@activo", CInt(item("activo"))}
                }))
        Next

        ' ── Usuarios ─────────────────────────────────────────────────────
        ops.Add(Op("DELETE FROM usuario"))
        For Each item In CType(data("usuarios"), JArray)
            ops.Add(Op("INSERT INTO usuario (idusuario, nombre, clave, perfil, id_sucursal, activo, claveaut) " &
                       "VALUES (@id, @nom, @clave, @perfil, @suc, @activo, @ca)",
                New Dictionary(Of String, Object) From {
                    {"@id",     CInt(item("idusuario"))},
                    {"@nom",    CStr(item("nombre"))},
                    {"@clave",  CStr(item("clave"))},
                    {"@perfil", CInt(item("perfil"))},
                    {"@suc",    CInt(item("id_sucursal"))},
                    {"@activo", CInt(item("activo"))},
                    {"@ca",     NI(item("claveaut"))}
                }))
        Next

        db.EjecutarTransaccion(ops, deshabilitarFK:=True)

        ' Actualizar variable global de intervalo de sync
        If suc("intervalo_sync_min") IsNot Nothing AndAlso suc("intervalo_sync_min").Type <> JTokenType.Null Then
            intervaloSincMin = CInt(suc("intervalo_sync_min"))
        End If
    End Sub

    ' ── Helpers ──────────────────────────────────────────────────────────

    Private Function Op(sql As String, Optional params As Dictionary(Of String, Object) = Nothing) As OperacionSQL
        Return New OperacionSQL With {.SQL = sql, .Parametros = params}
    End Function

    ''' <summary>Nullable String: devuelve DBNull si el token es null/Nothing.</summary>
    Private Function NS(token As JToken) As Object
        If token Is Nothing OrElse token.Type = JTokenType.Null Then Return DBNull.Value
        Return token.ToString()
    End Function

    ''' <summary>Nullable Integer: devuelve DBNull si el token es null/Nothing.</summary>
    Private Function NI(token As JToken) As Object
        If token Is Nothing OrElse token.Type = JTokenType.Null Then Return DBNull.Value
        Return CInt(token)
    End Function

    Private Sub LogError(msg As String)
        Try
            Dim logPath = Path.Combine(Application.StartupPath, "Data", "sinc_errors.log")
            File.AppendAllText(logPath, $"[{DateTime.Now:yyyy-MM-dd HH:mm:ss}] SincCatalogo: {msg}" & Environment.NewLine)
        Catch
        End Try
    End Sub

End Module
