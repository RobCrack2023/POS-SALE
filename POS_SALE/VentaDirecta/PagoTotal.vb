Imports System.Drawing.Printing
Imports System.IO
Imports System.Net.WebClient
Imports Newtonsoft.Json




Public Class PagoTotal

    Dim botonera As Integer
    Public total As Integer
    Dim objeto As TextBox
    Public idpublicovta As Integer
    Dim yPos As Integer
    Dim xPos As Single = 5
    Dim total_descuento As Integer
    Dim tipo_doc As Integer
    Public id_encargo As Integer
    Public codteclado As String
    Dim Resultadoanterior As Integer
    Dim EstadoCliente As Integer
    Dim tipocliente As Integer
    Public rutadte As String = "C:\programacion\SmartFact\wapi\"
    Public rutadtepdf As String = "C:\programacion\SmartFact\wapi\pdfs\"

    Private Sub PagoTotal_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        Me.Refresh()
        CargaMotivos()
        CargaBtnTipoPago()
        objeto = txtsubmonto

        grillapago.Rows.Clear()

        'txtsubmonto.Text = ""
        txtcambio.ResetText()
        txtrestante.ResetText()
        tipo_doc = 1
        btnboleta.Select()

    End Sub
    Private Sub CargaBtnTipoPago()
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim obsdata As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable()
        Dim mov As Integer = 15
        Me.GroupBox1.Controls.Clear()

        sql = "select id_tipopago,texto_tipopago,color_tipopago,in_doc from vta_tipopago where id_activo=1 order by posicion"

        obsdata = objconnn.ExecutarMySQL(sql)
        tablas.Load(obsdata)
        For r = 0 To tablas.Rows.Count - 1
            Dim boton As New Button
            boton.AutoSize = False
            boton.BackColor = Color.FromName(tablas.Rows(r)("color_tipopago"))
            boton.ForeColor = Color.Black
            boton.Location = New Point(mov, 19)
            boton.Width = 100
            boton.Height = 45
            If idsucursalpublic = 7 Or idsucursalpublic = 9 Or idsucursalpublic = 10 Then

                If tablas.Rows(r)("id_tipopago") = 4 Then

                    boton.Enabled = True


                End If
            Else

                If tablas.Rows(r)("id_tipopago") = 4 Then

                    boton.Enabled = False

                End If

            End If

            boton.TabStop = False
            boton.Name = tablas.Rows(r)("id_tipopago")
            boton.Tag = tablas.Rows(r)("in_doc")
            boton.Text = tablas.Rows(r)("texto_tipopago")
            AddHandler boton.Click, AddressOf Me.boton_Click
            Me.GroupBox1.Refresh()
            Me.GroupBox1.Controls.Add(boton)
            mov = mov + 105
        Next
    End Sub



    Private Function ObtieneEntidades(tipo As Integer)
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable()

        sql = "select id_ente,nom_ente from entecrediticio where activo=1 and id_tipo= " & tipo & " and id_sucursal=" & idsucursalpublic & "  Order by nom_ente"
        tablas = objconnn.ExecutarMySQLTablas(sql)
        Return tablas

    End Function



    Private Sub boton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim y As String
        Dim x As String
        Dim texto As String
        Dim sumar As Integer
        Dim resultado As Integer
        Dim ultimodigito As Integer
        Dim ResultadoCompuesto As Integer


        y = CType(sender, System.Windows.Forms.Button).Name
        x = CType(sender, System.Windows.Forms.Button).Tag
        texto = CType(sender, System.Windows.Forms.Button).Text


        lbmsj.Text = ""
        If txtsubmonto.Text.Length < 1 Then

            lbmsj.Text = "Debe ingresar un Monto"
            Exit Sub
        End If

        ' ******** evalua ultimo digito y redondea cuando se paga con efectivo ********


        'If CInt(y) = 1 Then

        '    Resultadoanterior = CInt(txtmontototal.Text)
        '    ultimodigito = Val(txtmontototal.Text.Substring(Val(txtmontototal.Text.Length) - 1))

        '    If ultimodigito > 5 Then

        '        ResultadoCompuesto = (Int((Val(txtmontototal.Text) / 10)) * 10) + 10

        '        txtmontototal.Text = CStr(ResultadoCompuesto)

        '   Else

        '        ResultadoCompuesto = (Int((Val(txtmontototal.Text) / 10)) * 10)
        '        txtmontototal.Text = CStr(ResultadoCompuesto)

        '   End if

        'End If


        ' ************************************FIn Rutina ************************


        For Each row As DataGridViewRow In grillapago.Rows()

            If CInt(row.Cells(0).Value) = y And CInt(row.Cells(2).Value) = Val(txtsubmonto.Text) Then

                lbmsj.Text = "No debe repetir tipo de pago y valor"
                Exit Sub
            End If

        Next

        For Each row As DataGridViewRow In grillapago.Rows()
            sumar = sumar + CInt(row.Cells(2).Value)
        Next

        If (sumar + Val(txtrestante.Text)) > Val(txtmontototal.Text) And y <> 1 Then
            lbmsj.Text = "Monto supera el Total"
            Exit Sub
        End If

        If sumar > 0 Then
            resultado = Val(txtrestante.Text) - Val(txtsubmonto.Text)
            ' Rutina que complementa el redondeo	
            'ElseIf ResultadoCompuesto <> 0 Then
            '    resultado = Val(txtmontototal.Text) - ResultadoCompuesto
            ' *****************Fin Rutina *******************	
        Else
            resultado = Val(txtmontototal.Text) - Val(txtsubmonto.Text)
        End If
        'rutina de varios




        If resultado < 0 And y = 1 Then

            grillapago.Rows.Add(y, texto, Val(txtsubmonto.Text), Math.Abs(resultado))
            txtrestante.ResetText()
            txtcambio.Text = Math.Abs(Val(resultado))
            ' rutina Agregada de ticket restaurant
        ElseIf x = 0 Then
            txtrestante.Text = Math.Abs(Val(resultado))
            grillapago.Rows.Add(y, texto, Val(txtsubmonto.Text))
        ElseIf x = 1 And Val(txtrestante.Text) < Val(txtsubmonto.Text) Then

            ' txtrestante.Text = Math.Abs(Val(resultado))
            txtrestante.Text = 0
            grillapago.Rows.Add(y, texto, Val(txtsubmonto.Text), Math.Abs(Val(resultado)))
            ' **************************FIN RUTINA ***********************************
        Else

            txtrestante.Text = Math.Abs(Val(resultado))

            grillapago.Rows.Add(y, texto, Val(txtsubmonto.Text))
        End If

        If y = 9 Then
            Varios.ShowDialog()


        End If

        txtsubmonto.Text = ""
        txtsubmonto.Select()

    End Sub
    
    Sub CargaMotivos()
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable

        sql = "select * from vta_mvodesc"

        tablas = objconnn.ExecutarMySQLTablas(sql)

        cmbmotivo.DataSource = tablas
        cmbmotivo.DisplayMember = "desc_mvodescp"
        cmbmotivo.ValueMember = "id_mvodesc"
    End Sub

    Private Sub btnvolver_Click(sender As Object, e As EventArgs) Handles btnvolver.Click
        EliminaDescuento()
        Me.Close()
    End Sub
    Private Sub btndescuentos_Click(sender As Object, e As EventArgs) Handles btndescuentos.Click

        If ValidasiMedioPago() = True Then

            lbmsj.Text = "No debe existir tipos de pago!!!"
            Exit Sub
        End If


        If cmbmotivo.Visible = False Then
            cmbmotivo.Visible = True
            cmbmotivo.SelectedIndex = -1
            Label1.Visible = True
            txtmontodesc.Visible = True
            txtmontodesc.Text = ""
            lbclaveaut.Visible = True
            txtclaveautor.Visible = True
            txtclaveautor.Text = ""
            btnaceptaclave.Visible = True
            Label5.Visible = True
            txtmontodesc.Select()
            objeto = txtmontodesc

        Else
            cmbmotivo.Visible = False
            Label1.Visible = False
            txtmontodesc.Visible = False
            lbclaveaut.Visible = False
            txtclaveautor.Visible = False
            btnaceptaclave.Visible = False
            Label5.Visible = False
            lbmsj.Text = ""
            objeto = txtsubmonto
        End If
    End Sub

    Private Sub txtmontodesc_Click(sender As Object, e As EventArgs) Handles txtmontodesc.Click

        objeto = txtmontodesc

    End Sub


    Private Sub txtmontodesc_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtmontodesc.KeyPress
        If Char.IsDigit(e.KeyChar) Then
            e.Handled = False
        ElseIf Char.IsControl(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub

    Private Sub txtclaveautor_Click(sender As Object, e As EventArgs) Handles txtclaveautor.Click
        objeto = txtclaveautor
    End Sub

    Private Sub txtclaveautor_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtclaveautor.KeyPress
        If Char.IsDigit(e.KeyChar) Then
            e.Handled = False
        ElseIf Char.IsControl(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub
    Function validar() As Boolean


        If botonera < 1 Then

            Return False
        Else
            Return True
        End If

    End Function
    Function validaMonto(total As Integer, subtotal As Integer, tipopago As Integer) As Boolean

        Dim suma As Integer


        For Each row As DataGridViewRow In grillapago.Rows()
            suma = suma + CInt(row.Cells(2).Value)

        Next
        If (suma + subtotal) > total And tipopago <> 1 Then
            lbmsj.Text = "Monto supera el Total"
            Return False
        End If
        Return True


    End Function
    Function ValidasiMedioPago() As Boolean

        With grillapago
            If .RowCount > 0 Then
                Return True
            End If
            Return False
        End With

    End Function

    Function ValidasTipoDoc() As Boolean

        If tipo_doc > 0 Then

            Return True
        End If
        Return False

    End Function

    Sub MontoParcial(total As Integer)
        Dim suma As Integer

        For Each row As DataGridViewRow In grillapago.Rows()
            suma = suma + Val(row.Cells(2).Value)
        Next

        If (total - suma) < 0 Then
            txtcambio.Text = Math.Abs((total - suma))
            lbsubtotal2.Text = ""
            txtrestante.Text = ""
            Exit Sub
        End If
        txtrestante.Text = total - suma
        ' lbsubtotal2.Text = total - suma

    End Sub

    Sub LimpiarValorTotal()

        If txtsubmonto.TextLength > 0 Then

            txtsubmonto.ResetText()
        End If

    End Sub

    Private Sub btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click

        objeto.Text = objeto.Text & "1"

    End Sub
    Private Sub btn2_Click(sender As Object, e As EventArgs) Handles btn2.Click

        objeto.Text = objeto.Text & "2"

    End Sub

    Private Sub btn3_Click(sender As Object, e As EventArgs) Handles btn3.Click

        objeto.Text = objeto.Text & "3"

    End Sub

    Private Sub btn4_Click(sender As Object, e As EventArgs) Handles btn4.Click


        objeto.Text = objeto.Text & "4"

    End Sub

    Private Sub btn5_Click(sender As Object, e As EventArgs) Handles btn5.Click

        objeto.Text = objeto.Text & "5"

    End Sub

    Private Sub btn6_Click(sender As Object, e As EventArgs) Handles btn6.Click

        objeto.Text = objeto.Text & "6"

    End Sub

    Private Sub btn7_Click(sender As Object, e As EventArgs) Handles btn7.Click

        objeto.Text = objeto.Text & "7"

    End Sub

    Private Sub btn8_Click(sender As Object, e As EventArgs) Handles btn8.Click


        objeto.Text = objeto.Text & "8"

    End Sub

    Private Sub btn9_Click(sender As Object, e As EventArgs) Handles btn9.Click

        objeto.Text = objeto.Text & "9"

        'End If
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        objeto.Text = objeto.Text & "0"

    End Sub
    Public Sub Borrar()
        objeto = txtmontototal
        txtsubmonto.ResetText()
        lbmsj.ResetText()
        grillapago.Rows.Clear()
        MontoParcial(total)
        objeto.ResetText()
        txtcambio.ResetText()
        txtsubmonto.Select()

        'CerrarBotonesTP()

    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        txtsubmonto.ResetText()
        lbmsj.ResetText()
        grillapago.Rows.Clear()
        MontoParcial(total)
        objeto.ResetText()
        txtcambio.ResetText()
        txtsubmonto.Select()
        idrutvarios = Nothing


        ' parte de rutina de redondeo 
        'If Resultadoanterior > 0 Then
        '    txtmontototal.Text = Resultadoanterior
        'End If
        '********************fin rutina******************

        'CerrarBotonesTP()
    End Sub

    Private Sub btntotal_Click(sender As Object, e As EventArgs) Handles btntotal.Click

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim stock As Stock = New Stock
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim sumtotal As Integer
        Dim DeudaActual As Integer

        EstadoCliente = 0

        If btnaceptaclave.Visible = True Then
            lbmsj.Text = "El descuento no fue Realizado!!"
            Exit Sub
        End If

        If ValidasiMedioPago() = False Then

            lbmsj.Text = "Falta Tipo de Pago"

            Exit Sub

        End If
        If ValidasTipoDoc() = False Then

            lbmsj.Text = "Falta Tipo de Documento"

            Exit Sub

        End If

        For t = 0 To grillapago.Rows.Count - 1

            sumtotal = sumtotal + (CInt(grillapago.Item(2, t).Value) - Val(grillapago.Item(3, t).Value))

        Next

        If sumtotal < CInt(txtmontototal.Text) Then

            lbmsj.Text = "El monto pagado es menor al total !!!!!"
            Exit Sub

        End If
        If sumtotal > CInt(txtmontototal.Text) Then

            lbmsj.Text = "El monto pagado es mayor al total !!!!!"
            Exit Sub

        End If

        For y = 0 To grillapago.Rows.Count - 1

            If grillapago.Item(0, y).Value = 9 Then
                sql = "insert into vta_pago (id_cabvta,id_tipo,monto,cambio,rut_varios) values(" & idpublicovta & "," & grillapago.Item(0, y).Value & "," & grillapago.Item(2, y).Value & "," & Val(grillapago.Item(3, y).Value) & ",'" & idrutvarios & "')"
            Else
                sql = "insert into vta_pago (id_cabvta,id_tipo,monto,cambio) values(" & idpublicovta & "," & grillapago.Item(0, y).Value & "," & grillapago.Item(2, y).Value & "," & Val(grillapago.Item(3, y).Value) & ")"
            End If
            objconnn.ExecutarMySQLInsert(sql)



        Next

        sql = "update vta_cab set estado=2,total=" & sumtotal & " where id_vencab=" & idpublicovta
        objconnn.ExecutarMySQLInsert(sql)
        stock.RebajaStockVenta(idpublicovta)

        ImprimeTicket()
        txtrestante.Text = 0
        VDirecta.BorrarVenta()

        ' InsertaPreEncargo()

        Me.Close()


    End Sub

    Function ObtieneDatosSiiEmpresa()
        Dim wc As New System.Net.WebClient

        Dim resultado As String = wc.DownloadString("https://zeus.sii.cl/cvc_cgi/stc/CViewCaptcha.cgi?oper=0")


    End Function

    Sub ImprimeTicket()

        Dim printDoc3 As New PrintDocument
        printDoc3.PrinterSettings.PrinterName = VDirecta.ObtieneImpresora
        printDoc3.PrintController = New System.Drawing.Printing.StandardPrintController()
        AddHandler printDoc3.PrintPage, AddressOf itemsimp

        printDoc3.Print()




        'Dim file As System.IO.StreamWriter = System.IO.File.CreateText("C:\temp.txt")

        'file.WriteLine(Chr(27) & Chr(112) & Chr(2) & Chr(0) & Chr(1))
        'file.Close()

        'Shell("print /d:USB006 C:\temp.txt", AppWinStyle.NormalFocus)


        printDoc3 = Nothing
        yPos = 0
    End Sub

    Sub itemsimp(ByVal sender As Object, ByVal e As PrintPageEventArgs)

        Dim prFont As New Font("Tahoma", 8, FontStyle.Regular)
        Dim prFont2 As New Font("Tahoma", 6, FontStyle.Regular)
        Dim prFont1 As New Font("Tahoma", 10, FontStyle.Bold)
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim ytmp As Integer
        Dim dif As Integer

        sql = "select log_desc from vta_log where id_vtacab=" & idpublicovta
        tablas = objconnn.ExecutarMySQLTablas(sql)

        e.Graphics.DrawString(FormatDateTime(Now(), DateFormat.ShortDate) & " " & FormatDateTime(Now(), DateFormat.ShortTime), prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 32


        e.Graphics.DrawString("Ticket N°: " & idpublicovta, prFont2, Brushes.Black, xPos, yPos)
        yPos = yPos + 32



        For y = 0 To tablas.Rows.Count - 1

            If Len(tablas.Rows(y)("log_desc")) > 90 Then
                ytmp = 50
            End If

            e.Graphics.DrawString(tablas.Rows(y)("log_desc"), prFont, Brushes.Black, xPos, yPos)
            yPos = yPos + 32 + ytmp

            ytmp = 0

        Next y

        ' imprime total

        tablas.Reset()

        'descuenta ticket restaurant

        sql = "select sum(a.monto) as total,SUM(a.`cambio`) AS dif from vta_pago a inner join  vta_tipopago b  on a.id_tipo=b.id_tipopago  where  b.in_doc=1  and a.id_cabvta=" & idpublicovta

        tablas = objconnn.ExecutarMySQLTablas(sql)

        If IsDBNull(tablas.Rows(0)("total")) = False Then

            If CInt(tablas.Rows(0)("dif")) > 0 Then
                dif = CInt(tablas.Rows(0)("dif"))
                total = total - CInt(tablas.Rows(0)("total"))
                If total < 0 Then
                    total = 0
                Else
                    total = total + dif
                End If
            Else
                total = total - CInt(tablas.Rows(0)("total"))

            End If

        End If
        tablas.Reset()

        'sql = "select sum(cant*precio_unitario) as total from vta_det where id_cabvta=" & idpublicovta

        'tablas.Load(objconnn.executarmysql(sql))


        e.Graphics.DrawString("SUBTOTAL : " & FormatCurrency(total, 0, TriState.True, TriState.False, TriState.True), prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 24

        e.Graphics.DrawString("Dif. Ticket :" & FormatCurrency(dif, 0, TriState.True, TriState.False, TriState.True), prFont, Brushes.Black, xPos, yPos)
        yPos = yPos + 24


        ' descuentos
        tablas.Reset()


        sql = "select monto_desc , monto_ant ,((monto_ant-monto_desc)/monto_ant)*100 AS porcentaje,(monto_ant-monto_desc) as diferencia from vta_descuento where id_cabvta=" & idpublicovta

        tablas = objconnn.ExecutarMySQLTablas(sql)
        If tablas.Rows.Count > 0 Then
            e.Graphics.DrawString("Dscto : % " & CInt(tablas.Rows(0)("porcentaje")) & " " & FormatCurrency(CInt(tablas.Rows(0)("diferencia")), 0, TriState.True, TriState.False, TriState.True), prFont1, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString("TOTAL : " & FormatCurrency(CInt(tablas.Rows(0)("monto_desc")), 0, TriState.True, TriState.False, TriState.True), prFont1, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
        End If

        'Imprime


        ' imprime tipos de pago
        tablas.Reset()
        ' yPos = 0
        sql = "select a.rut_varios,b.id_tipopago,b.texto_tipopago,a.monto,a.cambio from vta_pago a inner join  vta_tipopago b  on a.id_tipo=b.id_tipopago  where a.id_cabvta=" & idpublicovta

        tablas = objconnn.ExecutarMySQLTablas(sql)

        For y = 0 To tablas.Rows.Count - 1

            e.Graphics.DrawString(tablas.Rows(y)("texto_tipopago") & " : " & FormatCurrency(CInt(tablas.Rows(y)("monto")), 0, TriState.True, TriState.False, TriState.True), prFont, Brushes.Black, xPos, yPos)

            If tablas.Rows(y)("id_tipopago") = 9 Then
                yPos = yPos + 24
                e.Graphics.DrawString(ObtieneNomPersona(tablas.Rows(y)("rut_varios")) & " : " & FormatCurrency(CInt(tablas.Rows(y)("monto")), 0, TriState.True, TriState.False, TriState.True), prFont2, Brushes.Black, xPos, yPos)

            End If

            yPos = yPos + 24

        Next y

        e.Graphics.DrawString("Su Vuelto : " & FormatCurrency(Val(txtcambio.Text), 0, TriState.True, TriState.False, TriState.True), prFont, Brushes.Black, xPos, yPos)

        e.HasMorePages = False

        tipo_doc = 0


    End Sub
    Private Function ObtieneNomPersona(rut As String) As String
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable

        sql = "SELECT nombres FROM personaltalana WHERE rut='" & rut.Trim & "' AND activo=1"
        tablas = objconnn.ExecutarMySQLTablas(sql)
        If tablas.Rows.Count > 0 Then
            Return tablas.Rows(0)("nombres").ToString()
        End If
        Return rut.Trim

    End Function
    Private Sub btnaceptaclave_Click(sender As Object, e As EventArgs) Handles btnaceptaclave.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable
        Dim totalant As Integer

        lbmsj.ResetText()

        If Val(Trim(txtclaveautor.Text)) < 1 Then

            lbmsj.Text = "No esta autorizada a realizar descuentos"
            Exit Sub

        End If

        sql = "select idusuario from usuario where activo=1  and claveaut=" & Val(Trim(txtclaveautor.Text))
        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 Then

            tablas.Reset()

            sql = "select count(*) as total from vta_descuento where id_cabvta=" & idpublicovta
            tablas = objconnn.ExecutarMySQLTablas(sql)

            If tablas.Rows(0)("total") > 0 Then

                lbmsj.Text = "Ya existe un  descuento sobre el total !!!!"
                cerrarbtndesc()
                Exit Sub

            End If

            totalant = total
            total = total - ((total * CInt(txtmontodesc.Text)) / 100)
            txtmontototal.Text = total
            txtsubmonto.Text = total

            total_descuento = CInt(txtmontodesc.Text)

            sql = "insert into vta_descuento "
            sql = sql & " (id_cabvta,id_usuario,fecha,hora,monto_ant,monto_desc) values"
            sql = sql & " ( " & idpublicovta & "," & idpersonapublic & ",'" & Format(Now(), "yyyy-MM-dd") & "','" & Format(Now(), "HH:mm:ss") & "'," & totalant & "," & total & ")"
            objconnn.ExecutarMySQLInsert(sql)
            lbmsj.Text = "El descuento fue aplicado correctamente"
            MontoParcial(total)
            cerrarbtndesc()

        Else
            lbmsj.Text = "No esta autorizada a realizar descuentos"

        End If

    End Sub

    Sub EliminaDescuento()
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1

        sql = "delete from vta_descuento where id_cabvta=" & idpublicovta
        objconnn.ExecutarMySQLInsert(sql)


    End Sub

    Sub cerrarbtndesc()

        cmbmotivo.Visible = False
        Label1.Visible = False
        txtmontodesc.Visible = False
        lbclaveaut.Visible = False
        txtclaveautor.Visible = False
        btnaceptaclave.Visible = False
        Label5.Visible = False
        objeto = txtsubmonto
        txtsubmonto.Select()

    End Sub
 

    Sub InsertaPreEncargo()
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable

        sql = "insert into cliente (idcliente,Nombre,telefono1,idsucursal,rut) "
        sql = sql & "values((select max(b.idcliente)+1 from cliente b) ,'Temporal','111111111',11,'11111111'); "

        sql = sql & "insert into pedido_cab (idpedido_cab,id_cliente,numenc,idusuario,fec_ing,hrs_ing,abonado,saldo,total,estado,id_sucursal)"
        sql = sql & "values( (select max(c.idpedido_cab)+1 from pedido_cab c),(select max(idcliente) from cliente),0,1,'" & Format(Now(), "yyyy-MM-dd") & "','" & Format(Now(), "hh:mm:ss") & "',CDbl(frmtotal.txtabono.Text) ,CDbl(frmtotal.txtsaldo.Text) ,CDbl(frmtotal.txttotales.Text) ,1," & idsucursalpublic & ");"

        sql = sql & "insert into pedido_det (idpedido_det,idpedido_cab,id_producto,cantidad,medidas,precio,mensaje) "
        sql = sql & "values((select max(b.idpedido_det)+1 from pedido_det b),(select max(c.idpedido_cab) from pedido_cab c),0,0,'',0,'Temporal');"

        Try
            objconnn.ExecutarMySQLInsert(sql)

            sql = "select max(idpedido_cab) as idmax from pedido_cab "
            tablas = objconnn.ExecutarMySQLTablas(sql)
            If tablas.Rows.Count > 0 Then
                idcabpedidopublica = tablas.Rows(0)("idmax")
            End If

        Catch ex As Exception
            MsgBox("Ocurrio el siguiente Problema: " & ex.Message)
            Exit Sub
        End Try

    End Sub

    Private Sub txtsubmonto_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtsubmonto.KeyPress
        If Char.IsDigit(e.KeyChar) Then
            e.Handled = False
        ElseIf Char.IsControl(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub


    Public Sub GeneraDTE(tipoDoc As Integer, idtraslado As Integer, rut As String, razonsocial As String, giro As String, dir As String, comuna As String, ciudad As String, idcab As Integer)

        Dim DteArchivo As String
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable
        Dim iva As Integer
        Dim neto As Decimal
        Dim bruto As Decimal
        Dim cantidad As Decimal
        Dim precioUnitario As Decimal
        Dim subtotal As Decimal
        Dim Archivo As StreamWriter




        DteArchivo = "IdExterno;SS9563;" & vbNewLine
        DteArchivo = DteArchivo & "IdDoc;" & tipoDoc & ";" & Format(Now, "yyyy/MM/dd") & ";;;;1;;" & vbNewLine
        DteArchivo = DteArchivo & "Receptor;" & rut & ";" & razonsocial & ";" & giro & ";" & dir & ";" & comuna & ";" & ciudad & ";;" & vbNewLine

        If tipoDoc = 52 Then

            DteArchivo = DteArchivo & "GD;1;" & idtraslado & ";" & vbNewLine

        End If

        sql = "select b.descripcion,a.cant,ROUND(a.precio_unitario/1.19) as precio_unitario,ROUND(a.cant*(ROUND(a.precio_unitario/1.19) ))as total    from vta_det a "
        sql = sql & " inner join productos b on a.id_producto=b.codarticulo "

        sql = sql & "where a.id_cabvta = " & idcab

        tablas = objconnn.ExecutarMySQLTablas(sql)

        For Each row As DataRow In tablas.Rows


            cantidad = Replace(row.Item(1), ",", ".")
            precioUnitario = Replace(row.Item(2), ",", ".")
            subtotal = Replace(row.Item(3), ",", ".")

            DteArchivo = DteArchivo & "Detalle;;;" & row.Item(0) & ";;" & Replace(row.Item(1), ",", ".") & ";;" & Replace(row.Item(2), ",", ".") & ";" & Replace(row.Item(3), ",", ".") & ";;;;;;" & vbNewLine

        Next
        tablas.Reset()
        sql = "select ROUND(SUM(a.cant*(ROUND(a.precio_unitario/1.19)))) as total from vta_det a "
        sql = sql & "where a.id_cabvta = " & idcab

        tablas = objconnn.ExecutarMySQLTablas(sql)


        neto = tablas.Rows(0)("total")
        bruto = Math.Round((neto * 1.19), 0)
        iva = (neto) * 0.19



        DteArchivo = DteArchivo & "Totales;" & neto & ";;19;" & iva & ";" & bruto & ";" & vbNewLine

        If File.Exists(rutadte & "entrada.txt") = False Then

            Dim sys = File.Create(rutadte & "entrada.txt")

            sys.Close()
        Else
            File.Delete(rutadte & "entrada.txt")

            Dim sys = File.Create(rutadte & "entrada.txt")

            sys.Close()

        End If

        Dim escribir = File.AppendText(rutadte & "entrada.txt")

        escribir.WriteLine(DteArchivo)

        escribir.Close()

        GeneraDteSmartfact()
        ImprimenPdfDte()

    End Sub
    Sub ImprimenPdfDte()

        Dim psi As System.Diagnostics.ProcessStartInfo = New System.Diagnostics.ProcessStartInfo()
        Dim pdffs(3) As String
        Dim contador As Integer



        For Each foundFile As String In My.Computer.FileSystem.GetFiles(rutadtepdf)

            If foundFile.Substring(foundFile.Length - 3, 3) = "pdf" Then

                pdffs(contador) = foundFile.Substring(0)

                contador = contador + 1

            End If

        Next

        For Each archivos As String In pdffs

            If archivos <> Nothing Then
                psi.UseShellExecute = True
                psi.Verb = "print"
                psi.FileName = archivos.Substring(0)
                psi.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden
                psi.ErrorDialog = False
                psi.Arguments = "/p"
                Dim p As System.Diagnostics.Process = System.Diagnostics.Process.Start(psi)
                p.WaitForInputIdle()
            End If
        Next

    End Sub

    Public Sub GeneraDteSmartfact()

        Dim carpeta As New DirectoryInfo(rutadtepdf)
        Dim nomarch As String

        For Each Files As FileInfo In carpeta.GetFiles()

            nomarch = Files.Name
            File.Delete(rutadtepdf & nomarch)
        Next



        Dim proces As New Process()
        proces.StartInfo.WorkingDirectory = rutadte
        proces.StartInfo.FileName = rutadte & "SFCliente.exe"
        ' proces.StartInfo.Arguments = "C:\programacion\SFCliente\Aplicacion\entrada.txt"
        proces.StartInfo.WindowStyle = ProcessWindowStyle.Hidden

        proces.Start()
        proces.WaitForExit(6000)


    End Sub

    Private Sub lstReq_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
End Class