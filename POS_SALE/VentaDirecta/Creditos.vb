Imports System.Drawing.Printing

Public Class Creditos

    Dim cantidad As String
    Public tipo_entidad As Integer


    Private Sub btnsalir_Click(sender As Object, e As EventArgs)
        Me.Close()
    End Sub


    Public Function DeudaEntidades(id_entidad As Integer, tipo_mov As Integer)
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable()
        Dim tablas2 As DataTable = New DataTable()
        Dim totales As Integer
        Dim totales2 As Integer


        sql = "select sum(monto) as total from vta_creditos   where id_tipo=" & tipo_mov & " and id_ente= " & id_entidad & " and id_sucursal=" & idsucursalpublic
        tablas = objconnn.ExecutarMySQLTablas(sql)

        If IsDBNull(tablas.Rows(0)("total")) Then
            totales = 0
        Else
            totales = tablas.Rows(0)("total")
        End If
        sql = "select sum(monto) as total from vta_creditos   where id_tipo=5 and id_ente= " & id_entidad & " and id_sucursal=" & idsucursalpublic
        tablas2.Load(objconnn.executarmysql(sql))
        If IsDBNull(tablas2.Rows(0)("total")) Then
            totales2 = 0
        Else
            totales2 = tablas2.Rows(0)("total")
        End If


        Return totales - totales2

    End Function
    Private Function AdeudadoEntidades(id_entidad As Integer, tipo_mov As Integer)
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable()
        Dim totales As Integer
        sql = "select sum(monto) as total from vta_creditos   where  id_tipo=5 and  id_ente= " & id_entidad & " and id_sucursal=" & idsucursalpublic
        tablas = objconnn.ExecutarMySQLTablas(sql)

        If IsDBNull(tablas.Rows(0)("total")) Then
            totales = Val(txttotal.Text)
        Else
            totales = tablas.Rows(0)("total")
        End If

        Return totales

    End Function

    Private Function ObtieneEntidad(idente As Integer)
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable()


        sql = "select id_ente,nom_ente from entecrediticio where activo=1 and id_ente= " & idente & " and id_sucursal=" & idsucursalpublic & "  Order by nom_ente"
        tablas = objconnn.ExecutarMySQLTablas(sql)

        Return tablas.Rows(0)("nom_ente")

    End Function
    Public Function ObtieneCreditoEntidad(idente As Integer)
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable()
        Dim CreditoTotal As Integer


        sql = "select id_ente,nom_ente,monto_credito from entecrediticio where activo=1 and id_ente= " & idente & " and id_sucursal=" & idsucursalpublic & "  Order by nom_ente"
        tablas = objconnn.ExecutarMySQLTablas(sql)
        CreditoTotal = IIf(IsDBNull(tablas.Rows(0)("monto_credito")), 0, tablas.Rows(0)("monto_credito"))

        Return CreditoTotal

    End Function


    Private Function ObtieneEntidades(tipo As Integer)
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable()


        sql = "select id_ente,nom_ente from entecrediticio where activo=1 and id_tipo= " & tipo & " and id_sucursal=" & idsucursalpublic & "  Order by nom_ente"
        tablas = objconnn.ExecutarMySQLTablas(sql)
        Return tablas

    End Function

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Me.Close()
    End Sub

    Private Sub Creditos_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub btnccliente_Click(sender As Object, e As EventArgs) Handles btnccliente.Click
        lstentidades.DataSource = ObtieneEntidades(2)
        lstentidades.DisplayMember = "nom_ente"
        lstentidades.ValueMember = "id_ente"

        tipo_entidad = 2

        lbmsg.ResetText()

    End Sub

    Private Sub btnreq_Click(sender As Object, e As EventArgs) Handles btnreq.Click
        lstentidades.DataSource = ObtieneEntidades(1)
        lstentidades.DisplayMember = "nom_ente"
        lstentidades.ValueMember = "id_ente"

        tipo_entidad = 1

        lbmsg.ResetText()

    End Sub

    Private Sub btnimp_Click(sender As Object, e As EventArgs) Handles btnimp.Click
        ImprimeRpt()
    End Sub

    Sub ImprimeRpt()

        Dim printDoc3 As New PrintDocument
        printDoc3.PrinterSettings.PrinterName = VDirecta.ObtieneImpresora
        printDoc3.PrintController = New System.Drawing.Printing.StandardPrintController()
        AddHandler printDoc3.PrintPage, AddressOf itemsimp

        Try
            printDoc3.Print()
        Catch ex As Exception
            MsgBox("Error al imprimir reporte de créditos." & vbCrLf &
                   "Verifique que la impresora esté conectada y encendida." & vbCrLf &
                   ex.Message, MsgBoxStyle.Exclamation, "Error de impresión")
        End Try
        printDoc3 = Nothing

    End Sub
    Sub ImprimePago()

        Dim printDoc3 As New PrintDocument
        printDoc3.PrinterSettings.PrinterName = VDirecta.ObtieneImpresora
        printDoc3.PrintController = New System.Drawing.Printing.StandardPrintController()
        AddHandler printDoc3.PrintPage, AddressOf ItemPago

        Try
            printDoc3.Print()
        Catch ex As Exception
            MsgBox("Error al imprimir comprobante de pago." & vbCrLf &
                   "Verifique que la impresora esté conectada y encendida." & vbCrLf &
                   ex.Message, MsgBoxStyle.Exclamation, "Error de impresión")
        End Try
        printDoc3 = Nothing
        txtpago.ResetText()
    End Sub

    Sub ItemPago(ByVal sender As Object, ByVal e As PrintPageEventArgs)

        Dim prFont As New Font("Tahoma", 8, FontStyle.Regular)
        Dim prFont1 As New Font("Tahoma", 10, FontStyle.Bold)
       
        Dim yPos = 0
        Dim xPos = 5

        e.Graphics.DrawString("Fecha de Pago : " & FormatDateTime(Now, DateFormat.ShortDate), prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 20

        e.Graphics.DrawString("Pago de Cliente : ", prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 20

        e.Graphics.DrawString(ObtieneEntidad(lstentidades.SelectedValue), prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 20

        e.Graphics.DrawString("Deuda Actual : " & FormatCurrency(Val(txtpago.Text) + DeudaEntidades(lstentidades.SelectedValue, tipo_entidad), TriState.True, TriState.False, TriState.UseDefault), prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 20


        e.Graphics.DrawString("Pago Efectuado : " & FormatCurrency(Val(txtpago.Text), TriState.True, TriState.False, TriState.UseDefault), prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 20

        e.Graphics.DrawString("Deuda despues del Pago : " & FormatCurrency(DeudaEntidades(lstentidades.SelectedValue, tipo_entidad), TriState.True, TriState.False, TriState.UseDefault), prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 20

    End Sub

    Sub itemsimp(ByVal sender As Object, ByVal e As PrintPageEventArgs)

        Dim prFont As New Font("Tahoma", 8, FontStyle.Regular)
        Dim prFont1 As New Font("Tahoma", 10, FontStyle.Bold)
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim yPos = 0
        Dim xPos = 5

        sql = " select "
        sql = sql & "c.`fecha`,"
        sql = sql & "e.`DESCRIPCION`,"
        sql = sql & "d.`cant`,"
        sql = sql & "(d.`precio_unitario`*d.`cant`) as Precio"


        sql = sql & " from"
        sql = sql & " vta_creditos a"

        sql = sql & " inner join entecrediticio b on a.`id_ente`=b.`id_ente`"
        sql = sql & " inner join vta_cab c on a.`id_vtacab`=c.`id_vencab`"
        sql = sql & " inner join vta_det d on a.`id_vtacab`=d.`id_cabvta`"
        sql = sql & " inner join productos e on d.`id_producto`=e.`CODARTICULO`"



        sql = sql & " where"

        sql = sql & " a.id_ente=" & lstentidades.SelectedValue & " and a.id_Sucursal=" & idsucursalpublic & " and a.id_tipo= " & tipo_entidad


        sql = sql & " group by a.`id_vtacab`"


        'sql = "select * from vta_creditos where id_ente=" & lstentidades.SelectedValue & " and  id_tipo=" & tipo_entidad

        tablas = objconnn.ExecutarMySQLTablas(sql)


        e.Graphics.DrawString("Informe de Creditos : ", prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 20

        e.Graphics.DrawString(ObtieneEntidad(lstentidades.SelectedValue), prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 20

        e.Graphics.DrawString("Deuda a la Fecha : " & FormatCurrency(DeudaEntidades(lstentidades.SelectedValue, tipo_entidad), 0, TriState.True, TriState.False, TriState.UseDefault), prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 20

        For y = 0 To tablas.Rows.Count - 1

            e.Graphics.DrawString("Fecha de Consumo :" & tablas.Rows(y)("fecha"), prFont1, Brushes.Black, xPos, yPos)
            yPos = yPos + 20
            e.Graphics.DrawString("Producto :" & tablas.Rows(y)("DESCRIPCION"), prFont, Brushes.Black, xPos, yPos)
            yPos = yPos + 20
            e.Graphics.DrawString("Cantidad :" & FormatNumber(tablas.Rows(y)("cant"), 0, TriState.UseDefault, TriState.False), prFont, Brushes.Black, xPos, yPos)
            yPos = yPos + 20
            e.Graphics.DrawString("Precio :" & FormatNumber(tablas.Rows(y)("precio"), 0, TriState.UseDefault, TriState.False), prFont, Brushes.Black, xPos, yPos)
            yPos = yPos + 20

        Next y

    End Sub

    Private Sub btn0_Click(sender As Object, e As EventArgs) Handles btn0.Click
        cantidad = cantidad & "0"

        txtpago.Text = cantidad
    End Sub

    Private Sub btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click
        cantidad = cantidad & "1"
        txtpago.Text = cantidad
    End Sub

    Private Sub btn2_Click(sender As Object, e As EventArgs) Handles btn2.Click
        cantidad = cantidad & "2"
        txtpago.Text = cantidad
    End Sub

    Private Sub btn3_Click(sender As Object, e As EventArgs) Handles btn3.Click
        cantidad = cantidad & "3"
        txtpago.Text = cantidad
    End Sub

    Private Sub btn4_Click(sender As Object, e As EventArgs) Handles btn4.Click
        cantidad = cantidad & "4"
        txtpago.Text = cantidad
    End Sub

    Private Sub btn5_Click(sender As Object, e As EventArgs) Handles btn5.Click
        cantidad = cantidad & "5"
        txtpago.Text = cantidad
    End Sub

    Private Sub btn6_Click(sender As Object, e As EventArgs) Handles btn6.Click
        cantidad = cantidad & "6"
        txtpago.Text = cantidad
    End Sub

    Private Sub btn7_Click(sender As Object, e As EventArgs) Handles btn7.Click
        cantidad = cantidad & "7"
        txtpago.Text = cantidad
    End Sub

    Private Sub btn8_Click(sender As Object, e As EventArgs) Handles btn8.Click
        cantidad = cantidad & "8"
        txtpago.Text = cantidad
    End Sub

    Private Sub btn9_Click(sender As Object, e As EventArgs) Handles btn9.Click
        cantidad = cantidad & "9"
        txtpago.Text = cantidad
    End Sub

    Private Sub btnc_Click(sender As Object, e As EventArgs) Handles btnc.Click
        cantidad = ""
        txtpago.ResetText()


    End Sub

    Private Sub lstentidades_Click(sender As Object, e As EventArgs) Handles lstentidades.Click


        txttotal.Text = DeudaEntidades(lstentidades.SelectedValue, tipo_entidad)


        txtpago.Select()


    End Sub


    Private Sub btnPagar_Click(sender As Object, e As EventArgs) Handles btnPagar.Click
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String


        If Val(txttotal.Text) < Val(txtpago.Text) Then

            lbmsg.Text = "El monto no debe ser mayor al Adeudado "
            Exit Sub
        End If
        If Val(txtpago.Text) < 1 Then

            lbmsg.Text = "El monto debe ser mayor a 0 "
            Exit Sub
        End If

        sql = "insert into vta_creditos (id_vtacab,id_ente,id_tipo,monto,id_sucursal)  values(" & idpedidoventapublic & "," & lstentidades.SelectedValue & ",5," & Val(txtpago.Text) & "," & idsucursalpublic & ")"
        objconnn.ExecutarMySQLInsert(sql)


        lbmsg.Text = "El pago fue ingresado correctamente"

        'txtpago.Text = ""
        cantidad = ""

        txttotal.Text = DeudaEntidades(lstentidades.SelectedValue, tipo_entidad)
        ImprimePago()

    End Sub
End Class