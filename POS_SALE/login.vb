
Imports System.IO
Imports System.Xml

Public Class login

    Dim cero As Integer
    Dim uno As Integer
    Dim dos As Integer
    Dim tres As Integer
    Dim cuatro As Integer
    Dim cinco As Integer
    Dim seis As Integer
    Dim siete As Integer
    Dim ocho As Integer
    Dim nueve As Integer

    Private Function EjecutaScriptSQL(idsucursal As Integer)
        Dim objconect As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim comandos As String

        sql = "select sql1 from config"

        tablas = objconect.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 AndAlso IsDBNull(tablas.Rows(0)("sql1")) = False And Len(tablas.Rows(0)("sql1")) > 2 Then

            'Rescatamos Query a ejecutar
            comandos = tablas.Rows(0)("sql1")
            tablas.Reset()

            ' Ejecutamos el Query
            objconect.ExecutarMySQLInsert(comandos)

            ' Insertar estado de ejecución del script
            sql = "insert into exe_script_sucursal (id_sucursal,fecha_exe,hora_exe,Tipo_Query) values(" & idsucursal & ",'" & Format(Now(), "yyyy-MM-dd") & "','" & Format(Now(), "HH:MM:SS") & "',1)"
            objconect.ExecutarMySQLInsert(sql)

        Else

            Return False
        End If




    End Function

    Private Function ObtieneXmlDoc(doc As Integer) As String
        Dim objconect As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim resultado As String

        If doc = 1 Then

            sql = "select xml_postoserver from xml_doc where id_sucursal=" & idsucursalpublic & " and activo=1"
            tablas = objconect.ExecutarMySQLTablas(sql)



            If tablas.Rows.Count < 1 Then

                resultado = ""

                Return resultado
            End If


            resultado = tablas.Rows(0)("xml_postoserver")
        End If
        If doc = 2 Then
            sql = "select xml_servertopos from xml_doc where id_sucursal=" & idsucursalpublic & " and activo=1"
            tablas = objconect.ExecutarMySQLTablas(sql)


            If tablas.Rows.Count < 1 Then

                resultado = ""

                Return resultado
            End If

            resultado = tablas.Rows(0)("xml_servertopos")
        End If


        Return resultado
    End Function
    Private Function BorrarXml()

        Dim ruta1 = "C:\programacion\possaletoserver.xml"
        Dim ruta2 = "C:\programacion\servertopossale.xml"

        If File.Exists(ruta1) = True Then

            File.Delete(ruta1)

        End If
        If File.Exists(ruta2) = True Then

            File.Delete(ruta2)

        End If

    End Function

    Private Function CreaXml()
        Dim resultado1 As String
        Dim resultado2 As String
        Dim objconect As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim ruta As String

        BorrarXml()
        resultado1 = ObtieneXmlDoc(1)
        resultado2 = ObtieneXmlDoc(2)

        If resultado1.Length < 1 Or resultado2.Length < 1 Then

            Return False
        End If

        Try
            ruta = "C:\programacion\possaletoserver.xml"
            Dim escritor As StreamWriter
            escritor = File.AppendText(ruta)
            escritor.Write(resultado1)
            escritor.Flush()
            escritor.Close()
            ruta = "C:\programacion\servertopossale.xml"
            escritor = File.AppendText(ruta)
            escritor.Write(resultado2)
            escritor.Flush()
            escritor.Close()

            sql = "insert into exe_script_sucursal (id_sucursal,fecha_exe,hora_exe,tipo_query) values(" & idsucursalpublic & ",'" & Format(Now(), "yyyy-MM-dd") & "','" & Format(Now(), "HH:MM:SS") & "',2)"
            objconect.ExecutarMySQLInsert(sql)


        Catch ex As Exception

            MsgBox("error al escribir")

        End Try

    End Function

    Private Sub FPOS_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        txtingreso.Select()
        ' Cargar URL del servidor desde la BD local
        Try
            Dim objDb As New DBCONECTAR1
            Dim tablas As DataTable = objDb.ExecutarMySQLTablas("SELECT apiurl FROM config LIMIT 1")
            If tablas.Rows.Count > 0 AndAlso Not IsDBNull(tablas.Rows(0)("apiurl")) Then
                Dim url As String = tablas.Rows(0)("apiurl").ToString().Trim()
                If url <> "" Then apiurl = url
            End If
        Catch
            ' Sin BD aún — usa el valor por defecto
        End Try

        ' Verificar si hay una nueva versión del instalador disponible (background)
        Dim tVer As New System.Threading.Thread(
            Sub()
                Try
                    Dim verLocal  As String = My.Application.Info.Version.ToString(3)
                    Dim urlLatest As String = apiurl & "/api/v1/instaladores/sale/latest"
                    Dim json      As String
                    Using wc As New System.Net.WebClient()
                        wc.Encoding = System.Text.Encoding.UTF8
                        wc.Headers.Add("Accept", "application/json")
                        json = wc.DownloadString(urlLatest)
                    End Using

                    Dim mVer As System.Text.RegularExpressions.Match =
                        System.Text.RegularExpressions.Regex.Match(json, """version""\s*:\s*""([^""]+)""")
                    If Not mVer.Success Then Exit Sub

                    Dim verServer As New Version(mVer.Groups(1).Value)
                    If verServer <= New Version(verLocal) Then Exit Sub

                    Dim mNotas As System.Text.RegularExpressions.Match =
                        System.Text.RegularExpressions.Regex.Match(json, """notas""\s*:\s*""([^""]*?)""")
                    Dim notas As String = If(mNotas.Success AndAlso mNotas.Groups(1).Value <> "",
                                             vbCrLf & vbCrLf & "Novedades:" & vbCrLf &
                                             mNotas.Groups(1).Value.Replace("\n", vbCrLf), "")

                    Dim msg As String = "Hay una nueva versión disponible: v" & mVer.Groups(1).Value &
                                        " (versión actual: v" & verLocal & ")" & notas &
                                        vbCrLf & vbCrLf & "Solicite al administrador que instale la actualización."
                    Me.Invoke(Sub()
                        MsgBox(msg, MsgBoxStyle.Information, "Nueva versión disponible")
                    End Sub)
                Catch ex As Exception
                    ' Silencioso — no interrumpir el inicio por fallo en chequeo de versión
                End Try
            End Sub)
        tVer.IsBackground = True
        tVer.Start()
    End Sub

    Private Sub btn0_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn0.Click
        txtingreso.Text = txtingreso.Text & 0

    End Sub
    Private Sub btn1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn1.Click
        txtingreso.Text = txtingreso.Text & 1

    End Sub

    Private Sub btnsalir_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnelim.Click
        Dim Anchor As Integer = txtingreso.TextLength - 1
        If Anchor >= 0 Then
            txtingreso.Text = Mid(txtingreso.Text, 1, Anchor)
        End If
    End Sub

    Private Sub btn2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn2.Click
        txtingreso.Text = txtingreso.Text & 2
    End Sub

    Private Sub Btn3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Btn3.Click
        txtingreso.Text = txtingreso.Text & 3
    End Sub

    Private Sub Btn4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Btn4.Click
        txtingreso.Text = txtingreso.Text & 4
    End Sub

    Private Sub Btn5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Btn5.Click
        txtingreso.Text = txtingreso.Text & 5
    End Sub

    Private Sub Btn6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Btn6.Click
        txtingreso.Text = txtingreso.Text & 6
    End Sub

    Private Sub btn7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn7.Click
        txtingreso.Text = txtingreso.Text & 7
    End Sub

    Private Sub Btn8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Btn8.Click
        txtingreso.Text = txtingreso.Text & 8
    End Sub

    Private Sub Btn9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Btn9.Click
        txtingreso.Text = txtingreso.Text & 9
    End Sub

    Private Sub btnsalir_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnsalir.Click
        Me.Close()
    End Sub

    Private Sub btnIng_Click(sender As Object, e As EventArgs) Handles btnIng.Click
        Dim objconect As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        If txtingreso.TextLength < 4 Then
            MsgBox("Debe ingresar su clave")
            txtingreso.ResetText()
            txtingreso.Select()
            Exit Sub
        End If

        ' ── Sincronizar con backend (registro + catálogo) ─────────────
        ' Se intenta para cualquier perfil. Solo bloquea al cajero si está pendiente.
        Dim asignacion As String = CajaService.SincronizarAsignacion()

        ' Cargar siempre idcaja/idsucursal desde config local (puede estar guardado de sesiones anteriores)
        tablas.Reset()
        sql = "SELECT idcaja, idsucursal FROM config"
        tablas = objconect.ExecutarMySQLTablas(sql)
        If tablas.Rows.Count > 0 Then
            idcajapublic = CInt(tablas.Rows(0)("idcaja"))
            Dim idSucConf As Integer = CInt(tablas.Rows(0)("idsucursal"))
            ' Solo descarga catálogo si el backend respondió ok
            If asignacion = "ok" AndAlso idSucConf > 0 Then
                SincCatalogo.DescargarCatalogo(idSucConf)
            End If
        End If
        tablas.Reset()

        ' ── Autenticar usuario ────────────────────────────────────────
        sql = "Select a.idusuario,a.nombre,a.perfil,a.id_sucursal,b.id_sucursalTalana FROM usuario a left join sucursal b on a.id_sucursal=b.id_sucursal WHERE a.activo=1 And a.clave='" & txtingreso.Text & "'"
        tablas = objconect.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count < 1 Then
            MsgBox("La cuenta no existe. Informe al administrador.")
            txtingreso.ResetText()
            Exit Sub
        End If

        usr = tablas.Rows(0)("idusuario")
        idpersonapublic = usr
        perfil = tablas.Rows(0)("perfil")
        nombreusr = tablas.Rows(0)("nombre")
        idsucursalpublic = tablas.Rows(0)("id_sucursal")
        idsucursaltalana = IIf(IsDBNull(tablas.Rows(0)("id_sucursalTalana")) = True, 0, tablas.Rows(0)("id_sucursalTalana"))

        ' ── Cajero: verificar que tenga caja asignada ─────────────────
        If perfil = 5 Then
            If asignacion = "pendiente" Then
                MsgBox("Este terminal está pendiente de asignación de caja." & vbCrLf &
                       "Solicite al administrador que lo active en el sistema.")
                txtingreso.ResetText()
                Exit Sub
            End If
            If idcajapublic = 0 Then
                MsgBox("Caja no configurada. Verifique la conexión al servidor.")
                txtingreso.ResetText()
                Exit Sub
            End If

            ' ── Verificar tiempo máximo sin sync exitosa (> 3 días) ───
            If asignacion <> "ok" Then
                Dim syncTabla As DataTable = New DataTable
                syncTabla = objconect.ExecutarMySQLTablas("SELECT ultima_sync FROM config LIMIT 1")
                Dim bloqueado As Boolean = True
                If syncTabla.Rows.Count > 0 AndAlso Not IsDBNull(syncTabla.Rows(0)("ultima_sync")) Then
                    Dim ultimaSync As String = syncTabla.Rows(0)("ultima_sync").ToString()
                    Dim fechaSync As DateTime
                    If DateTime.TryParse(ultimaSync, fechaSync) Then
                        If (DateTime.Now - fechaSync).TotalDays <= 3 Then
                            bloqueado = False
                        End If
                    End If
                End If
                If bloqueado Then
                    MsgBox("No se pudo conectar al servidor y han pasado más de 3 días sin actualización." & vbCrLf &
                           "Contacte al administrador del sistema.")
                    txtingreso.ResetText()
                    Exit Sub
                End If
            End If
        End If
        ' ***********************************************************************


        ' Ejecutar Script SQL
        'EjecutaScriptSQL(idsucursalpublic)
        ''Crear Xml de Agente Sincronizador
        'CreaXml()



        '***********************************************************************

        If tablas.Rows(0)("perfil") = 1 Then
            Principal.Show()
        End If

        ' If tablas.Rows(0)("perfil") = 3 Then
        'PedidoLocales.Show()
        'Me.Close()
        'End If

        If tablas.Rows(0)("perfil") = 5 Then

            If RecuperacionCierres() = True Then

                ResumenArqueoSinCerrar.Show()

                Me.Close()
            Else

                VDirecta.Show()
                Me.Close()
            End If


        End If


    End Sub

    Private Sub txtingreso_KeyDown(sender As Object, e As KeyEventArgs) Handles txtingreso.KeyDown

        If e.KeyCode = 13 Then

            btnIng.PerformClick()

        End If
    End Sub


End Class
