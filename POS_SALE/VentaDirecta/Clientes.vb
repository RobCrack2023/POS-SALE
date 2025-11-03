Public Class Clientes


    Dim digito As String
    Public idz As Integer
    Public idcab As Integer
    Public estado As Boolean
    Public idtipodoc As Integer
    Public objeto As TextBox

    Sub CargaTraslado()
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable

        sql = "select * from vta_tipotraslado where id_tipotraslado"

        tablas = objconnn.ExecutarMySQLTablas(sql)

        cmbtraslado.DataSource = tablas
        cmbtraslado.DisplayMember = "desc_traslado"
        cmbtraslado.ValueMember = "id_tipotraslado"
        cmbtraslado.SelectedIndex = 1



    End Sub

    Sub CargaCiudad()
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable

        sql = "select * from s_region where ids_region in(0,13)"

        tablas = objconnn.ExecutarMySQLTablas(sql)

        cmbciudad.DataSource = tablas
        cmbciudad.DisplayMember = "nom_region"
        cmbciudad.ValueMember = "ids_region"


    End Sub
    Sub CargaComuna()
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable

        sql = "select * from s_comuna where id_region= 13 order by nom_comuna"

        tablas = objconnn.ExecutarMySQLTablas(sql)
        cmbcomuna.Items.Clear()
        cmbcomuna.DataSource = tablas
        cmbcomuna.DisplayMember = "nom_comuna"
        cmbcomuna.ValueMember = "ids_comuna"

    End Sub

    Private Sub arqueo_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        CargaCiudad()
        CargaTraslado()
        CargaComuna()

        If idtipodoc = 52 Then
            cmbtraslado.Enabled = True
        End If
        If idtipodoc = 33 Then
            cmbtraslado.Enabled = False
        End If

    End Sub

    Private Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
       
        Me.Close()
    End Sub


    Private Sub txtdireccion_GotFocus(sender As Object, e As EventArgs) Handles txtdireccion.GotFocus
        txtdireccion.BackColor = Color.Yellow

    End Sub


    Private Sub txtdireccion_LostFocus(sender As Object, e As EventArgs) Handles txtdireccion.LostFocus
        txtdireccion.BackColor = Color.White
    End Sub


    Private Sub txtgiro_GotFocus(sender As Object, e As EventArgs) Handles txtgiro.GotFocus
        txtgiro.BackColor = Color.Yellow

    End Sub


    Private Sub txtgiro_LostFocus(sender As Object, e As EventArgs) Handles txtgiro.LostFocus
        txtgiro.BackColor = Color.White
    End Sub


    Private Sub txtrazons_GotFocus(sender As Object, e As EventArgs) Handles txtrazons.GotFocus
        txtrazons.BackColor = Color.Yellow

    End Sub


    Private Sub txtrazons_LostFocus(sender As Object, e As EventArgs) Handles txtrazons.LostFocus
        txtrazons.BackColor = Color.White
    End Sub

    Private Sub txtrut_GotFocus(sender As Object, e As EventArgs) Handles txtrut.GotFocus
        txtrut.BackColor = Color.Yellow
       
    End Sub

    Private Sub txtrut_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtrut.KeyPress
        If Asc(e.KeyChar) = 8 Or IsNumeric(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub
    Private Sub txtrut_LostFocus(sender As Object, e As EventArgs) Handles txtrut.LostFocus
        txtrut.BackColor = Color.White
    End Sub

    Private Sub txtdv_GotFocus(sender As Object, e As EventArgs) Handles txtdv.GotFocus
        txtdv.BackColor = Color.Yellow

    End Sub
    Private Sub txtdv_LostFocus(sender As Object, e As EventArgs) Handles txtdv.LostFocus
        txtdv.BackColor = Color.White
        VerificaCLiente(txtrut.Text & "-" & txtdv.Text)
    End Sub

    Private Sub cmbcomuna_Click(sender As Object, e As EventArgs) Handles cmbcomuna.Click

    End Sub




    Private Sub btngrabarcliente_Click(sender As Object, e As EventArgs) Handles btngrabarcliente.Click

        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable


        If ValidarFormulario() = False Then

            Exit Sub
        End If

        VerificarRut(txtrut.Text & "-" & txtdv.Text)

        'sql = "insert into vta_cliente (rut_cliente,razon_social,giro,direccion,ciudad,comuna) values(" & txtrut.Text & "-" & txtdv.Text & ",'" & txtrazons.Text & "','" & txtgiro.Text & "','" & txtdireccion.Text & "'," & cmbciudad.SelectedValue & "," & cmbcomuna.SelectedValue & ")"

        'objconnn.executarmysqlinsert(sql)

        MsgBox("Cliente Creado Exitosamente")


    End Sub
    Public Function validar_rut(rut As String) As Boolean

        Try
            validar_rut = True
            Dim rutLimpio As String
            Dim digitoVerificador As String
            Dim suma As Integer
            Dim contador As Integer = 2

            rutLimpio = rut.Replace(".", "")
            rutLimpio = rutLimpio.Replace("-", "")
            rutLimpio = rutLimpio.Replace(" ", "")
            rutLimpio = rutLimpio.Substring(0, rutLimpio.Length - 1)
            digitoVerificador = rut.Substring(rut.Length - 1, 1)

            Dim i As Integer

            For i = rutLimpio.Length - 1 To 0 Step -1

                If contador > 7 Then
                    contador = 2
                End If

                suma += Integer.Parse(rutLimpio(i).ToString()) * contador
                contador += 1
            Next

            Dim dv As Integer = 11 - (suma Mod 11)
            Dim DigVer As String = dv.ToString()

            If DigVer = "10" Then
                DigVer = "K"
            End If

            If DigVer = "11" Then
                DigVer = "0"
            End If

            If DigVer <> digitoVerificador.ToUpper Then

                MessageBox.Show("Rut Invalido", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                validar_rut = False
                txtrut.Select()
                txtrut.SelectAll()
            End If

        Catch EX As Exception
            validar_rut = False
        End Try


    End Function

    Function ValidarFormulario()

        If validar_rut(txtrut.Text & "-" & txtdv.Text) = False Then

            txtrut.ResetText()
            txtdv.ResetText()
            txtrut.Select()
            Return False
        End If
        If txtrazons.TextLength < 5 Then
            MsgBox("Falta Razon Social!!!!")
            txtrazons.ResetText()
            txtrazons.Select()
            Return False
        End If
        If txtgiro.TextLength < 5 Then
            MsgBox("Falta Giro Comercial!!!!")
            txtgiro.ResetText()
            txtgiro.Select()
            Return False
        End If
        If txtdireccion.TextLength < 5 Then
            MsgBox("Falta Dirección!!!!")
            txtdireccion.ResetText()
            txtdireccion.Select()
            Return False
        End If
        If cmbcomuna.SelectedIndex = -1 Then
            MsgBox("Falta Comuna!!!!")
            cmbcomuna.Select()
            Return False
        End If
        Return True
    End Function
    Function VerificarRut(rut As String) As Integer

        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable
        Dim numdig As Integer = 1
        Dim numdigi As String

        Dim rutjunto As String

        rutjunto = rut.Substring(0, (rut.Length - 2))
        rutjunto = rutjunto & "0" & numdig
        sql = "select max(cod_rut) as cod_rut from vta_clientesuc where rut_softland='" & rut & "'"

        tablas = objconnn.ExecutarMySQLTablas(sql)


        If tablas.Rows.Count < 1 Or IsDBNull(tablas.Rows(0)("cod_rut")) = True Then

            'crear Auxiliar

            sql = "insert into vta_cliente (cod_rut,rut_cliente,razon_social,giro,id_sucursal) values ('" & rutjunto & "','" & rut & "','" & txtrazons.Text & "','" & txtgiro.Text & "'," & idsucursalpublic & " );"


            sql = sql & "insert into vta_clientesuc (cod_rut,dir,id_ciudad,id_comuna,rut_softland) values ('" & rutjunto & "','" & txtdireccion.Text & "'," & cmbciudad.SelectedValue & "," & cmbcomuna.SelectedValue & ",'" & rut & "')"

            objconnn.ExecutarMySQLInsert(sql)

        Else

            numdigi = tablas.Rows(0)("cod_rut")

            numdig = numdigi.Substring((numdigi.Length - 1), 1)

            rutjunto = numdigi.Substring(0, numdigi.Length - 1) & numdig + 1


            sql = "insert into vta_clientesuc (cod_rut,dir,id_ciudad,id_comuna,rut_softland) values ('" & rutjunto & "','" & txtdireccion.Text & "'," & cmbciudad.SelectedValue & "," & cmbcomuna.SelectedValue & ",'" & rut & "')"

            objconnn.ExecutarMySQLInsert(sql)


        End If

    End Function

    Function GrabaDte(id_tipo As Integer)
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1

        sql = "insert into vta_dtegenerado (id_vtacab,id_sucursal,fecha,hora,id_tipo,folio) values( " & idpedidoventapublic & "," & idsucursalpublic & ",'" & Format(Now, "yyyy-MM-dd") & "','" & Format(Now, "hh:mm:ss") & "'," & id_tipo & ")"
        objconnn.ExecutarMySQLInsert(sql)

    End Function
    Function VerificaCLiente(rut As String) As Integer


        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable

        txtdireccion.ResetText()
        txtgiro.ResetText()
        txtdireccion.ResetText()

        cmbdir.DataSource = Nothing

        If validar_rut(txtrut.Text & "-" & txtdv.Text) = False Then

            txtrut.ResetText()
            txtdv.ResetText()
            txtrut.Select()
            Return False
        End If


        sql = "select a.razon_social,"
        sql = sql & "a.rut_cliente,"
        sql = sql & "b.cod_rut,"
        sql = sql & "a.giro,"
        sql = sql & "b.dir"
        sql = sql & " from vta_cliente a "
        sql = sql & " inner join vta_clientesuc b on  a.rut_cliente=b.rut_softland "
        sql = sql & "where b.rut_softland='" & rut & "'"

        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 Then

            cmbdir.DataSource = tablas
            cmbdir.DisplayMember = "dir"
            cmbdir.ValueMember = "cod_rut"

        End If

    End Function

    Sub UsarDir(rutdir As String)
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable

        sql = "select b.razon_social,"
        sql = sql & "b.cod_rut,"
        sql = sql & "b.giro,"
        sql = sql & "a.dir,"
        sql = sql & "b.razon_social,"
        sql = sql & "a.id_ciudad,"
        sql = sql & "a.id_comuna"

        sql = sql & " from vta_clientesuc a "
        sql = sql & " inner join vta_cliente b on  b.rut_cliente=a.rut_softland  "

        sql = sql & " where a.cod_rut='" & rutdir & "'"

        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 Then
            btngrabarcliente.Enabled = False
            btnModificar.Enabled = True
            txtrazons.Text = tablas.Rows(0)("razon_social")
            txtgiro.Text = tablas.Rows(0)("giro")
            txtdireccion.Text = tablas.Rows(0)("dir")
            cmbcomuna.SelectedValue = tablas.Rows(0)("id_comuna")
        End If


    End Sub

    Private Sub btnusardir_Click(sender As Object, e As EventArgs) Handles btnusardir.Click
        UsarDir(cmbdir.SelectedValue)

    End Sub

    Sub ModificaEmpresa(rut As String)
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1

        Dim rutjunto As String = rut.Replace("-", "0")

        sql = "update vta_clientesuc set dir='" & txtdireccion.Text & "',id_comuna=" & cmbcomuna.SelectedValue & "  where cod_rut='" & rutjunto & "';"
        sql = sql & "update vta_cliente set razon_social='" & txtrazons.Text & "',giro='" & txtgiro.Text & "'  where rut_cliente='" & rut & "';"


        objconnn.ExecutarMySQLInsert(sql)

    End Sub

    Private Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click

        ModificaEmpresa(txtrut.Text & "-" & txtdv.Text)
    End Sub

    Private Sub btnnuevasucursal_Click(sender As Object, e As EventArgs) Handles btnnuevasucursal.Click
        txtdireccion.ResetText()
        btnModificar.Enabled = False
        btngrabarcliente.Enabled = True
    End Sub

    Private Sub txtdv_TextChanged(sender As Object, e As EventArgs) Handles txtdv.TextChanged

    End Sub
End Class