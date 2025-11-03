Imports System.Drawing.Printing
Public Class VDirecta
    Dim codteclado As String
    Dim lineaboleta As String
    Dim acumventa As Integer
    Dim acumdesc As Integer
    Dim prodcant(50, 1) As Decimal
    Dim contlineas As Integer
    Dim idpublicovta As Integer
    Dim yPos As Integer
    Dim xPos As Single = 5
    Dim idz As Integer
    Dim indencargo As Integer
    Public idvtazrecuperacion As Integer


    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click

        vta_panel.idpublicovta = idpublicovta
        vta_panel.idz = idz
        vta_panel.ShowDialog()

    End Sub
    Sub TotalVenta()
        Dim stock As Stock = New Stock


        If acumventa < 1 Then

            lbestado.Text = "La venta debe ser mayor a 0"
            Exit Sub
        End If
        PagoTotal.Borrar()
        PagoTotal.total = acumventa
        PagoTotal.txtmontototal.Text = acumventa
        PagoTotal.txtsubmonto.Text = acumventa
        PagoTotal.idpublicovta = idpublicovta
        PagoTotal.id_encargo = indencargo

        PagoTotal.lbsubtotal2.ResetText()
        PagoTotal.ShowDialog()
        PagoTotal.Dispose()
    End Sub
    Private Sub btntotal_Click(sender As Object, e As EventArgs) Handles btntotal.Click
        
        TotalVenta()

    End Sub
    Function AnulaPlu()
        Dim paso As Integer
        lbplu.Text = codteclado
        codteclado = Nothing
        paso = 0
        lbestado.Text = ""
        If lbcantidad.Text = 0 Then
            lbcantidad.Text = 1

        End If

        ' obtiene precio y nombre producto
        If ObtienePrecioProducto(CInt(Val(lbplu.Text))) > 0 Then

            If (acumventa - (ObtienePrecioProducto(CInt(lbplu.Text)) * CDbl(lbcantidad.Text))) < 0 Then

                lbestado.Text = "ANULACION POR MENOS DEL TOTAL"
                lbcantidad.Text = 0
                lbplu.Text = ""
                codteclado = Nothing

                Exit Function
            End If

            For t = 0 To contlineas
                If prodcant(t, 0) = CInt(lbplu.Text) Then

                    If prodcant(t, 1) > CInt(lbcantidad.Text) Then
                        prodcant(t, 1) = prodcant(t, 1) - CInt(lbcantidad.Text)
                        EliminaItems(prodcant(t, 0), t, (-1 * CInt(lbcantidad.Text)))
                        paso = 1
                    ElseIf prodcant(t, 1) = CInt(lbcantidad.Text) Then
                        prodcant(t, 1) = prodcant(t, 1) - CInt(lbcantidad.Text)
                        EliminaItems(prodcant(t, 0), t, (-1 * CInt(lbcantidad.Text)))
                        prodcant(t, 0) = 0
                        paso = 1
                        Exit For
                    End If

                End If
            Next t
            If paso = 0 Then
                lbestado.Text = "PRODUCTO NO EXISTE"
                lbcantidad.Text = 0
                lbplu.Text = ""
                codteclado = Nothing
                lbdigitado.Text = ""
                Exit Function
            End If


            lineaboleta = vbCrLf & "******** Producto Anulado ******** " & vbCrLf

            lineaboleta = lineaboleta & lbcantidad.Text & " X " & ObtienePrecioProducto(CInt(lbplu.Text)) & "                  " & FormatCurrency(ObtienePrecioProducto(CInt(lbplu.Text)) * CDbl(lbcantidad.Text), 0, TriState.True, TriState.False, TriState.True) & vbCrLf

            lineaboleta = lineaboleta & "Plu (" & Val(lbplu.Text) & ") " & ObtieneNomProducto(CInt(lbplu.Text)) & "  -" & vbCrLf
            lineaboleta = lineaboleta & "******** Producto Anulado ********" & vbCrLf
            logProductos(idpublicovta, lineaboleta)
            txtboleta.AppendText(lineaboleta)
            acumdesc = acumdesc + CDbl(lbcantidad.Text) * ObtienePrecioProducto(CInt(lbplu.Text))
            lbdescuentos.Text = FormatCurrency(acumdesc, 0, TriState.True, TriState.False, TriState.True)
            acumventa = acumventa - CDbl(lbcantidad.Text) * ObtienePrecioProducto(CInt(lbplu.Text))
            lbsubtotal.Text = FormatCurrency(acumventa, 0, TriState.False, TriState.False, TriState.True)
            lbcantidad.Text = 0
            lbplu.Text = ""
            codteclado = Nothing
            lbdigitado.Text = ""

        Else

            lbestado.Text = "Producto no encontrado"
            lbcantidad.Text = 0
            lbplu.Text = ""
            codteclado = Nothing
            'lbsubtotal.Text = ""
            lbdigitado.Text = ""
        End If


    End Function
    Private Sub btnanula_Click(sender As Object, e As EventArgs) Handles btnanula.Click
        AnulaPlu()

    End Sub

    Sub imprimeX()
        
        Dim printDoc3 As New PrintDocument

        printDoc3.PrinterSettings.PrinterName = ObtieneImpresora()
        printDoc3.PrintController = New System.Drawing.Printing.StandardPrintController()
        AddHandler printDoc3.PrintPage, AddressOf ImpX

        printDoc3.Print()
        printDoc3 = Nothing
        yPos = 0
    End Sub
    Function ObtieneImpresora() As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        sql = "select idimpticket from config"
        tablas = objconnn.ExecutarMySQLTablas(sql)

        Return tablas.Rows(0)("idimpticket")
    End Function
    Sub ImpX(ByVal sender As Object, ByVal e As PrintPageEventArgs)

        Dim prFont As New Font("Tahoma", 8, FontStyle.Regular)
        Dim prFont1 As New Font("Tahoma", 12, FontStyle.Regular)
        Dim prFont2 As New Font("Tahoma", 8, FontStyle.Bold)
        Dim prFont3 As New Font("Tahoma", 10, FontStyle.Bold )
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim ytmp As Integer
        Dim fecha, hora As String
        Dim montotrans As Integer
        Dim dif As Integer


        ' Ventas del dia por log

        'sql = "select log_desc from vta_log where id_cabz=" & idz

        'tablas.Load(objconnn.executarmysql(sql))

        'For y = 0 To tablas.Rows.Count - 1

        '    If Len(tablas.Rows(y)("log_desc")) > 90 Then
        '        ytmp = 50
        '    End If

        '    e.Graphics.DrawString(tablas.Rows(y)("log_desc"), prFont, Brushes.Black, xPos, yPos)
        '    yPos = yPos + 32 + ytmp
        '    ytmp = 0
        'Next y
        'tablas.Reset()

        fecha = Format(Now(), "dd-MM-yyyy")
        hora = Format(Now(), "HH:mm:ss")

        e.Graphics.DrawString("Cierre Turno " & fecha & " " & hora, prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 32
        e.Graphics.DrawString("  Usuario: " & nombreusr, prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 32

        '  Arqueo de productos
        tablas.Reset()


        sql = " SELECT e.`DESCRIPCION` AS producto ,SUM(b.`cant`) AS cantidad "
        sql = sql & "FROM vta_cab a "
        sql = sql & "INNER JOIN vta_det b ON a.`id_vencab`=b.`id_cabvta` "
        sql = sql & "INNER JOIN vta_prodvta c ON c.`id_producto`=b.`id_producto` "
        sql = sql & "LEFT JOIN productos e ON e.`CODARTICULO`=c.`id_producto` "
        sql = sql & "WHERE "
        sql = sql & "a.`id_vtaz`=" & idz & " and a.estado in(2) AND c.`id_sucursal`=" & idsucursalpublic
        sql = sql & " GROUP BY b.`id_producto` "

        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count < 1 Then
            MsgBox("No Existen Ventas ")
            Exit Sub
        End If

        e.Graphics.DrawString("Arqueo de Productos", prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 32

        For t = 0 To tablas.Rows.Count - 1
            e.Graphics.DrawString(tablas.Rows(t)("producto"), prFont, Brushes.Black, xPos, yPos)
            e.Graphics.DrawString(tablas.Rows(t)("cantidad"), prFont, Brushes.Black, xPos + 210, yPos)
            yPos = yPos + 24
        Next t

        tablas.Reset()


        ' ventas por tipo de pago

        sql = "SELECT c.`texto_tipopago` as tipo ,SUM(b.monto - b.cambio) monto,b.monto montob "
        ' sql = "SELECT c.`texto_tipopago` as tipo ,SUM(b.monto) monto "
        sql = sql & "FROM vta_cab a "
        sql = sql & "INNER JOIN vta_pago b ON b.`id_cabvta`=a.`id_vencab` "
        sql = sql & "INNER JOIN vta_tipopago c ON b.`id_tipo`=c.`id_tipopago` "
        sql = sql & " WHERE a.estado=2 and a.`id_vtaz`=" & idz
        sql = sql & " GROUP BY b.`id_tipo` "


        tablas = objconnn.ExecutarMySQLTablas(sql)
        e.Graphics.DrawString("Total x tipo pago", prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 24

        For t = 0 To tablas.Rows.Count - 1

            If tablas.Rows(t)("monto") = 0 Then
                montotrans = tablas.Rows(t)("montob")
            Else
                montotrans = tablas.Rows(t)("monto")
            End If


            e.Graphics.DrawString(tablas.Rows(t)("tipo"), prFont, Brushes.Black, xPos, yPos)
            e.Graphics.DrawString(FormatCurrency(montotrans, 0, TriState.True, TriState.False, TriState.True), prFont, Brushes.Black, xPos + 150, yPos)
            yPos = yPos + 24

        Next

        tablas.Reset()

        'Diferencias Ticket

        sql = "select sum(a.cambio) as totdif from vta_pago a "
        sql = sql & " inner join vta_cab b on a.id_cabvta=b.id_vencab "
        sql = sql & " inner join vta_z c on b.id_vtaz=c.id_cabz   "
        sql = sql & " where  b.estado=2 and id_tipo<>1 and c.id_cabz=" & idz

        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 Then

            dif = tablas.Rows(0)("totdif")
            e.Graphics.DrawString("Diferencia Ticket", prFont, Brushes.Black, xPos, yPos)
            e.Graphics.DrawString(FormatCurrency(dif, 0, TriState.True, TriState.False, TriState.True), prFont, Brushes.Black, xPos + 150, yPos)
            yPos = yPos + 24

        End If


        tablas.Reset()

        'Ventas Totales


        sql = "select sum(a.total) as total from vta_cab a "
        sql = sql & " where a.estado=2 and a.id_vtaz=" & idz

        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count < 1 Then
            MsgBox("No existen ventas para cerrar caja")
            Exit Sub
        End If
        e.Graphics.DrawString("Total Ventas ", prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 32
        e.Graphics.DrawString(FormatCurrency(tablas.Rows(0)("total") + dif, 0, TriState.False, TriState.False, TriState.True), prFont, Brushes.Black, xPos, yPos)
        yPos = yPos + 24

        tablas.Reset()

        ' Ticket Anulados


        sql = "select * from  vta_cab a  where a.estado=3 and a.id_vtaz= " & idz

        tablas = objconnn.ExecutarMySQLTablas(sql)

        e.Graphics.DrawString("Ticket Anulados ", prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 24

        For t = 0 To tablas.Rows.Count - 1

            e.Graphics.DrawString("N° Ticket " & tablas.Rows(t)("id_vencab") & " Total " & FormatCurrency(tablas.Rows(t)("total"), 0, TriState.UseDefault, TriState.False, TriState.UseDefault), prFont, Brushes.Black, xPos, yPos)
            yPos = yPos + 24

        Next t
        yPos = yPos + 24

        tablas.Reset()



        ' Total Por Tipo pago Declarado

        sql = "SELECT efectivo,tdebito,tcredito,sodexo,amipass,trestaurant FROM vta_arqueo where id_vtaz=" & idz
        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 Then

            e.Graphics.DrawString("Total x Tipo de Pago Declaradas", prFont1, Brushes.Black, xPos, yPos)
            yPos = yPos + 24

            e.Graphics.DrawString("Efectivo ", prFont, Brushes.Black, xPos, yPos)
            e.Graphics.DrawString(FormatCurrency(tablas.Rows(0)("efectivo"), 0, TriState.False, TriState.False, TriState.True), prFont, Brushes.Black, xPos + 150, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString("T.Debito ", prFont, Brushes.Black, xPos, yPos)
            e.Graphics.DrawString(FormatCurrency(tablas.Rows(0)("tdebito"), 0, TriState.False, TriState.False, TriState.True), prFont, Brushes.Black, xPos + 150, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString("T.Credito ", prFont, Brushes.Black, xPos, yPos)
            e.Graphics.DrawString(FormatCurrency(tablas.Rows(0)("tcredito"), 0, TriState.False, TriState.False, TriState.True), prFont, Brushes.Black, xPos + 150, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString("Sodexo ", prFont, Brushes.Black, xPos, yPos)
            e.Graphics.DrawString(FormatCurrency(tablas.Rows(0)("sodexo"), 0, TriState.False, TriState.False, TriState.True), prFont, Brushes.Black, xPos + 150, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString("Amipass ", prFont, Brushes.Black, xPos, yPos)
            e.Graphics.DrawString(FormatCurrency(tablas.Rows(0)("amipass"), 0, TriState.False, TriState.False, TriState.True), prFont, Brushes.Black, xPos + 150, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString("T. Restaurant ", prFont, Brushes.Black, xPos, yPos)
            e.Graphics.DrawString(FormatCurrency(tablas.Rows(0)("trestaurant"), 0, TriState.False, TriState.False, TriState.True), prFont, Brushes.Black, xPos + 150, yPos)
            yPos = yPos + 24


            e.Graphics.DrawString("Total Ventas Declaradas", prFont1, Brushes.Black, xPos, yPos)
            yPos = yPos + 24

            e.Graphics.DrawString(FormatCurrency(tablas.Rows(0)("efectivo") + tablas.Rows(0)("tdebito") + tablas.Rows(0)("tcredito") + tablas.Rows(0)("sodexo") + tablas.Rows(0)("amipass") + tablas.Rows(0)("trestaurant"), 0, TriState.False, TriState.False, TriState.True), prFont, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
            tablas.Reset()
        End If

        'Boletas Declaradas

        tablas.Reset()

        sql = "select numini,numfin from vta_boleta where id_vtaz=" & idz

        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 Then

            If IsDBNull(tablas.Rows(0)("numini")) = False Then
                e.Graphics.DrawString("Boletas Declaradas ", prFont1, Brushes.Black, xPos, yPos)
                yPos = yPos + 32

                For t = 0 To tablas.Rows.Count - 1
                    e.Graphics.DrawString("Numero de Inicio " & tablas.Rows(t)("numini"), prFont, Brushes.Black, xPos, yPos)
                    yPos = yPos + 24
                    e.Graphics.DrawString("Numero de Final " & tablas.Rows(t)("numfin"), prFont, Brushes.Black, xPos, yPos)
                    yPos = yPos + 24
                Next t
            End If
        End If
        tablas.Reset()


        ' movimientos realizados

        sql = "select c.nom_cuenta,b.desc_vtatipomov,SUM(a.monto) AS monto from vta_mov a "
        sql = sql & " inner join vta_tipomov b  on a.id_mov=b.id_vtatipomov"
        sql = sql & " inner join vta_cuentas c on a.id_cuenta=c.id_vtacuentas"
        sql = sql & " where  a.id_vtaz= " & idz
        sql = sql & " group by b.desc_vtatipomov"
        tablas = objconnn.ExecutarMySQLTablas(sql)

        e.Graphics.DrawString("Mov Ingreso-Egreso ", prFont1, Brushes.Black, xPos, yPos)
        yPos = yPos + 32

        For t = 0 To tablas.Rows.Count - 1

            e.Graphics.DrawString(tablas.Rows(t)("nom_cuenta"), prFont2, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString(tablas.Rows(t)("desc_vtatipomov") & "  " & FormatCurrency(tablas.Rows(t)("monto"), 0, TriState.False, TriState.False, TriState.True), prFont, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
        Next t

        ' diferencias dinero
        tablas.Reset()
        e.HasMorePages = False

    End Sub

    Private Sub btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click
        codteclado = codteclado & "1"
        lbdigitado.Text = codteclado
    End Sub

    Private Sub btn2_Click(sender As Object, e As EventArgs) Handles btn2.Click
        codteclado = codteclado & "2"
        lbdigitado.Text = codteclado
    End Sub

    Private Sub btn3_Click(sender As Object, e As EventArgs) Handles btn3.Click
        codteclado = codteclado & "3"
        lbdigitado.Text = codteclado
    End Sub

    Private Sub btn4_Click(sender As Object, e As EventArgs) Handles btn4.Click
        codteclado = codteclado & "4"
        lbdigitado.Text = codteclado
    End Sub

    Private Sub btn5_Click(sender As Object, e As EventArgs) Handles btn5.Click
        codteclado = codteclado & "5"
        lbdigitado.Text = codteclado
    End Sub

    Private Sub btn6_Click(sender As Object, e As EventArgs) Handles btn6.Click
        codteclado = codteclado & "6"
        lbdigitado.Text = codteclado
    End Sub

    Private Sub btn7_Click(sender As Object, e As EventArgs) Handles btn7.Click
        codteclado = codteclado & "7"
        lbdigitado.Text = codteclado
    End Sub

    Private Sub btn8_Click(sender As Object, e As EventArgs) Handles btn8.Click
        codteclado = codteclado & "8"
        lbdigitado.Text = codteclado
    End Sub

    Private Sub btn9_Click(sender As Object, e As EventArgs) Handles btn9.Click
        codteclado = codteclado & "9"
        lbdigitado.Text = codteclado
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        codteclado = codteclado & "0"
        lbdigitado.Text = codteclado
    End Sub

    Private Sub btnpor_Click(sender As Object, e As EventArgs) Handles btnpor.Click
        Por()
    End Sub

    Private Sub btnplu_Click(sender As Object, e As EventArgs) Handles btnplu.Click

        Plu()
    End Sub
    Function Por()
        If codteclado = Nothing Then
            codteclado = 0
        End If
        lbcantidad.Text = codteclado
        codteclado = Nothing
        lbestado.Text = "Vendiendo"
        lbdigitado.Text = ""

    End Function
    Function Plu()
        Dim unidad
        lbestado.Text = "Vendiendo"
        lbdigitado.Text = ""

        lbplu.Text = codteclado
        codteclado = Nothing
        If lbcantidad.Text = 0 Then
            lbcantidad.Text = 1
        End If

        If ObtieneUnidadNomProducto(Val(lbplu.Text)) = False Then
            lbestado.Text = "Producto no encontrado"
            lbcantidad.Text = 0
            lbplu.Text = ""
            codteclado = Nothing
            Exit Function

        End If
        unidad = ObtieneUnidadNomProducto(Val(lbplu.Text))
        If unidad <> 3 And (lbcantidad.Text - Int(lbcantidad.Text)) > 0 Then
            lbestado.Text = "Solo Cantidades Enteras"
            lbcantidad.Text = 0
            lbplu.Text = ""
            codteclado = Nothing
            Exit Function
        End If
        ' obtiene precio y nombre producto
        If ObtienePrecioProducto(CInt(Val(lbplu.Text))) > 0 Then

            lineaboleta = lbcantidad.Text & " X " & ObtienePrecioProducto(CInt(lbplu.Text)) & "                  " & FormatCurrency(PrecioxCantidad(CDbl(lbcantidad.Text), ObtienePrecioProducto(CInt(lbplu.Text))), 0, TriState.True, TriState.False, TriState.True) & vbCrLf


            lineaboleta = lineaboleta & "Plu (" & Val(lbplu.Text) & ") " & ObtieneNomProducto(CInt(lbplu.Text)) & "  " & vbCrLf
            logProductos(idpublicovta, lineaboleta)
            txtboleta.AppendText(lineaboleta)
            prodcant(contlineas, 0) = CInt(lbplu.Text)
            prodcant(contlineas, 1) = CDbl(lbcantidad.Text)
            AgregaItems(contlineas)


            acumventa = acumventa + PrecioxCantidad(CDbl(lbcantidad.Text), ObtienePrecioProducto(CInt(lbplu.Text)))
            lbsubtotal.Text = FormatCurrency(acumventa, 0, TriState.True, TriState.False, TriState.True)


            lbcantidad.Text = 0
            lbplu.Text = ""
            codteclado = Nothing

            contlineas = contlineas + 1

        ElseIf ProductoPrecioLibre(CInt(Val(lbplu.Text))) > 0 Then

            lineaboleta = "1 X " & ObtieneNomProducto(CInt(lbplu.Text)) & vbCrLf
            ' padright o padleft


            lineaboleta = lineaboleta & ObtieneNomProducto(CInt(lbplu.Text)) & "                    " & FormatCurrency(CDbl(lbcantidad.Text), 0, TriState.True, TriState.False, TriState.True) & vbCrLf
            logProductos(idpublicovta, lineaboleta)
            txtboleta.AppendText(lineaboleta)
            prodcant(contlineas, 0) = CInt(lbplu.Text)
            prodcant(contlineas, 1) = CDbl(lbcantidad.Text)
            AgregaItems(contlineas)


            acumventa = acumventa + CDbl(lbcantidad.Text)
            lbsubtotal.Text = FormatCurrency(acumventa, 0, TriState.True, TriState.False, TriState.True)


            lbcantidad.Text = 0
            lbplu.Text = ""
            codteclado = Nothing

            contlineas = contlineas + 1


        Else
            lbestado.Text = "Producto no encontrado"
            lbcantidad.Text = 0
            lbplu.Text = ""
            codteclado = Nothing
            'lbsubtotal.Text = ""
        End If

    End Function

    Function PrecioxCantidad(cant As Double, valor As Integer) As Integer

        Dim totales As Integer

        totales = Math.Round(cant * valor)
        Return totales

    End Function
    Function iniciaboleta() As Integer

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable


        ' CREA SECUENCIA Z QUE ENGLOBA VENTA DE TURNO

        If idz = 0 Then
            sql = "select max(id_cabz)+1 as ids from vta_z "
            tablas = objconnn.ExecutarMySQLTablas(sql)

    
            If IsDBNull(tablas.Rows(0)("ids")) = False Then

                sql = "insert into vta_z (id_cabz,id_sucursal,id_caja,fec_ini,hrs_ini,estado) values("
                sql = sql & "(select max(b.id_vencab)+1 from vta_cab b)," & idsucursalpublic & "," & idcajapublic & ",'" & Format(Now(), "yyyy-MM-dd") & "','" & Format(Now(), "HH:mm:ss") & "',1)"
                objconnn.ExecutarMySQLInsert(sql)
            Else

                sql = "insert into vta_z (id_cabz,id_sucursal,id_caja,fec_ini,hrs_ini,estado) values("
                sql = sql & idpedidoventapublic & "," & idsucursalpublic & "," & idcajapublic & ",'" & Format(Now(), "yyyy-MM-dd") & "','" & Format(Now(), "HH:mm:ss") & "',1)"
                objconnn.ExecutarMySQLInsert(sql)
            End If
            tablas.Reset()

            sql = "select max(id_cabz) as ids from vta_z "
            tablas = objconnn.ExecutarMySQLTablas(sql)
            idz = tablas.Rows(0)("ids")
            End If

        '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
        tablas.Reset()


        sql = "select max(id_vencab) as ids from vta_cab "
        tablas = objconnn.ExecutarMySQLTablas(sql)
        If IsDBNull(tablas.Rows(0)("ids")) = False Then

            sql = "insert into vta_cab (id_vencab,id_sucursal,id_caja,id_usuario,fecha,hora,id_vtaz,estado) values("
            sql = sql & "(select max(b.id_vencab)+1 from vta_cab b)," & idsucursalpublic & "," & idcajapublic & "," & usr & ",'" & Format(Now(), "yyyy-MM-dd") & "','" & Format(Now(), "HH:mm:ss") & "'," & idz & ",1)"

        Else

            sql = "insert into vta_cab (id_vencab,id_sucursal,id_caja,id_usuario,fecha,hora,id_vtaz,estado) values("
            sql = sql & idpedidoventapublic & "," & idsucursalpublic & "," & idcajapublic & "," & usr & ",'" & Format(Now(), "yyyy-MM-dd") & "','" & Format(Now(), "HH:mm:ss") & "'," & idz & ",1)"

        End If

        tablas.Reset()

        objconnn.ExecutarMySQLInsert(sql)

        sql = "select max(id_vencab) as ID from vta_cab "

        tablas = objconnn.ExecutarMySQLTablas(sql)

        Return tablas.Rows(0)("ID")



    End Function
    
    Sub AgregaItems(contlineas As Integer)

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable

        Dim sql As String


        sql = "select max(id_detvta) as ids from vta_det "
        tablas = objconnn.ExecutarMySQLTablas(sql)
        If IsDBNull(tablas.Rows(0)("ids")) = False Then

            sql = "insert into vta_det (id_detvta,id_cabvta,id_producto,numunico,cant,precio_unitario) values( (select max(b.id_detvta)+1 from vta_det b ) , "
            sql = sql & idpublicovta & "," & ObtieneCodigoProducto(prodcant(contlineas, 0)) & "," & contlineas & ",replace('" & prodcant(contlineas, 1) & "',',','.')," & ObtienePrecioProducto(prodcant(contlineas, 0)) & ")"

        Else

            sql = "insert into vta_det (id_detvta,id_cabvta,id_producto,numunico,cant,precio_unitario) values("
            sql = sql & idsucursalpublic & "," & idpublicovta & "," & ObtieneCodigoProducto(prodcant(contlineas, 0)) & ",'" & contlineas & "',replace('" & prodcant(contlineas, 1) & "',',','.')," & ObtienePrecioProducto(prodcant(contlineas, 0)) & ")"

        End If

        objconnn.ExecutarMySQLInsert(sql)


    End Sub
    Sub EliminaItems(idplu As Integer, contlineas As Integer, cant As Integer)


        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String

        sql = "insert into vta_det (id_detvta,id_cabvta,id_producto,numunico,cant,precio_unitario) values ( (select max(b.id_detvta)+1 from vta_det b ) ,"
        sql = sql & idpublicovta & "," & ObtieneCodigoProducto(idplu) & "," & contlineas & ",'" & cant & "','" & -1 * ObtienePrecioProducto(prodcant(contlineas, 0)) & "')"
        objconnn.ExecutarMySQLInsert(sql)


    End Sub
    Sub EliminaItemsBorrar()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String

        sql = "delete from vta_det where id_cabvta=" & idpublicovta

        objconnn.ExecutarMySQLInsert(sql)


    End Sub
    Sub logProductos(idcab As Integer, log As String)

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String

        sql = "insert into vta_log (id_vtacab,log_desc,id_cabz) values("
        sql = sql & idcab & ",'" & log & "'," & idz & ")"
        objconnn.ExecutarMySQLInsert(sql)

    End Sub
    Sub EliminaLog()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String


        sql = "delete from vta_log where id_vtacab=" & idpublicovta

        objconnn.ExecutarMySQLInsert(sql)


    End Sub

    Function ObtienePrecioProducto(codigo As Integer) As Integer

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        If Val(codigo) < 0 Then
            Return 0

        End If

        sql = "select precio from vta_prodvta where id_activo=1 and  cod_plu=" & codigo & " and id_sucursal= " & idsucursalpublic

        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 Then

            Return CInt(tablas.Rows(0)("precio"))
        Else
            Return 0
        End If

    End Function
    Function ProductoPrecioLibre(codigo As Integer) As Integer

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        If Val(codigo) < 0 Then
            Return 0

        End If

        sql = "select count(*) as total from vta_prodvta where id_activo=1 and   id_plibre=1  and   cod_plu=" & codigo & " and id_sucursal= " & idsucursalpublic

        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 Then

            Return CInt(tablas.Rows(0)("total"))
        Else
            Return 0
        End If

    End Function
   
    Function ObtieneNomProducto(codigo As Integer) As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable


        sql = "select b.descripcion from vta_prodvta a inner join productos b on a.id_producto=b.codarticulo where a.id_activo=1 and  a.cod_plu=" & codigo & " and a.id_sucursal= " & idsucursalpublic

        tablas = objconnn.ExecutarMySQLTablas(sql)
        Return tablas.Rows(0)("descripcion")
       

    End Function
    Function ObtieneUnidadNomProducto(codigo As Integer) As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable


        sql = "select b.medidareferencia from vta_prodvta a inner join productos b on a.id_producto=b.codarticulo where a.id_activo=1 and  a.cod_plu=" & codigo & " and a.id_sucursal= " & idsucursalpublic

        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 Then

            Return tablas.Rows(0)("medidareferencia")
        Else
            Return 0
        End If

    End Function


    Function ObtieneCodigoProducto(plucod As Integer) As Integer
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable


        sql = "select b.codarticulo from vta_prodvta a inner join productos b on a.id_producto=b.codarticulo where a.id_activo=1 and  a.cod_plu=" & plucod & " and a.id_sucursal= " & idsucursalpublic

        tablas = objconnn.ExecutarMySQLTablas(sql)
        Return tablas.Rows(0)("codarticulo")


    End Function

    Private Sub btn00_Click(sender As Object, e As EventArgs) Handles btn00.Click
        codteclado = codteclado & "00"
        lbdigitado.Text = codteclado
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        codteclado = codteclado & ","
        lbdigitado.Text = codteclado
    End Sub

    Private Sub btnborrar_Click(sender As Object, e As EventArgs) Handles btnborrar.Click
        codteclado = Nothing
        lbplu.Text = Nothing
        lbcantidad.Text = 0
        lbdigitado.Text = ""
        txtboleta.Clear()
        lbsubtotal.ResetText()
        lbdescuentos.ResetText()
        acumdesc = 0
        acumventa = 0
        lbestado.Text = "Vendiendo"
        lbmsgencargo.Text = ""
        indencargo = 0
        totalgeneral = 0        
        Dim prodcant(50, 1) As Integer
        lineaboleta = 0
        contlineas = 0

        EliminaItemsBorrar()
        EliminaLog()

    End Sub
    Public Sub BorrarVenta()
        codteclado = Nothing
        lbplu.Text = Nothing
        lbcantidad.Text = 0
        lbdigitado.Text = ""
        txtboleta.Clear()
        lbsubtotal.ResetText()
        lbdescuentos.ResetText()
        acumdesc = 0
        acumventa = 0
        lbestado.Text = "Vendiendo"
        lbmsgencargo.Text = ""
        indencargo = 0
        totalgeneral = 0
        idpublicovta = iniciaboleta()

        Dim prodcant(50, 1) As Integer
        lineaboleta = 0
        contlineas = 0
    End Sub
    Public Sub BorraLinea()
        codteclado = Nothing
        lbplu.Text = Nothing
        lbcantidad.Text = 0
        lbdigitado.Text = ""    
        lbestado.Text = "Vendiendo"

    End Sub



    Private Sub VDirecta_KeyDown(sender As Object, e As KeyEventArgs) Handles Me.KeyDown

        If e.KeyCode = Keys.Tab Then

            Exit Sub

        End If


        If e.KeyCode = Keys.Add Then
            btnplu.BackColor = Color.Blue
            Plu()

            Exit Sub
        End If

        If e.KeyCode = Keys.Subtract Then
            btnanula.BackColor = Color.Blue
            AnulaPlu()

            Exit Sub
        End If
        If e.KeyCode = Keys.Multiply Then
            btnpor.BackColor = Color.Blue
            Por()
            Exit Sub
        End If
        If e.KeyCode = Keys.Enter Then
            btnpor.BackColor = Color.Blue
            TotalVenta()
            Exit Sub
        End If



        If e.KeyData = Keys.Decimal Or _
         e.KeyData = Keys.NumPad0 Or e.KeyData = Keys.NumPad1 Or e.KeyData = Keys.NumPad2 Or e.KeyData = Keys.NumPad3 _
           Or e.KeyData = Keys.NumPad4 Or e.KeyData = Keys.NumPad5 Or e.KeyData = Keys.NumPad6 Or _
           e.KeyData = Keys.NumPad7 Or e.KeyData = Keys.NumPad8 Or e.KeyData = Keys.NumPad9 _
           Or e.KeyData = Keys.D0 Or e.KeyData = Keys.D1 Or e.KeyData = Keys.D2 Or e.KeyData = Keys.D3 Or _
           e.KeyData = Keys.D4 Or e.KeyData = Keys.D5 Or e.KeyData = Keys.D6 _
           Or e.KeyData = Keys.D7 Or e.KeyData = Keys.D8 Or e.KeyData = Keys.D9 Or e.KeyData = Keys.ShiftKey Or _
           e.KeyValue = 50 Or e.KeyValue = 189 Then

            Select Case e.KeyValue

                Case 96
                    codteclado = codteclado & Chr(48)
                Case 97
                    codteclado = codteclado & Chr(49)
                Case 98
                    codteclado = codteclado & Chr(50)
                Case 99
                    codteclado = codteclado & Chr(51)
                Case 100
                    codteclado = codteclado & Chr(52)
                Case 101
                    codteclado = codteclado & Chr(53)
                Case 102
                    codteclado = codteclado & Chr(54)
                Case 103
                    codteclado = codteclado & Chr(55)
                Case 104
                    codteclado = codteclado & Chr(56)
                Case 105
                    codteclado = codteclado & Chr(57)
                Case 106
                    codteclado = codteclado & Chr(58)
                Case 110
                    codteclado = codteclado & Chr(58)
                Case Else

                    codteclado = codteclado & Chr(e.KeyValue)
            End Select
            lbdigitado.Text = codteclado

        Else

            Beep()

        End If


    End Sub

    Private Sub VDirecta_KeyUp(sender As Object, e As KeyEventArgs) Handles Me.KeyUp
        btnplu.BackColor = Color.MediumPurple
        btnpor.BackColor = Color.DarkKhaki
    End Sub
    Sub RecuperaValores()

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable


        sql = "select max(a.id_vencab) as ids from vta_cab a  where a.id_sucursal=" & idsucursalpublic & " and  date(a.fecha)='" & Format(Now, "yyyy-MM-dd") & "' and  a.estado=1 and  a.id_vtaz =" & idvtazrecuperacion
        tablas = objconnn.ExecutarMySQLTablas(sql)

        idpublicovta = tablas.Rows(0)("ids")


        idpedidoventapublic = idpublicovta

        tablas.Reset()


        sql = "SELECT SUM(b.precio_unitario*b.cant) subtotal FROM  vta_cab a "
        sql = sql & "  INNER JOIN vta_det b ON b.`id_cabvta`=a.`id_vencab` "
        sql = sql & " WHERE  date(a.fecha)='" & Format(Now, "yyyy-MM-dd") & "'  and  a.estado = 1 And a.id_vtaz =" & idvtazrecuperacion

        tablas = objconnn.ExecutarMySQLTablas(sql)

        If IsDBNull(tablas.Rows(0)("subtotal")) Then

            Exit Sub
        End If

        acumventa = tablas.Rows(0)("subtotal")

        lbsubtotal.Text = FormatCurrency(acumventa, 0, TriState.True, TriState.False, TriState.True)

        tablas.Reset()

        sql = "SELECT max(b.numunico) cotlineas FROM  vta_cab a "
        sql = sql & "  INNER JOIN vta_det b ON b.`id_cabvta`=a.`id_vencab` "
        sql = sql & " WHERE  date(a.fecha)='" & Format(Now, "yyyy-MM-dd") & "'  and  a.estado = 1 And a.id_vtaz =" & idvtazrecuperacion

        tablas = objconnn.ExecutarMySQLTablas(sql)
        contlineas = tablas.Rows(0)("cotlineas")

        tablas.Reset()

        sql = "select a.log_desc from  vta_log a "
        sql = sql & "inner join vta_cab b on b.id_vencab=a.id_vtacab "
        sql = sql & "where  date(b.fecha)='" & Format(Now, "yyyy-MM-dd") & "' and   b.estado = 1 And b.id_vtaz = " & idvtazrecuperacion

        tablas = objconnn.ExecutarMySQLTablas(sql)

        For Each row As DataRow In tablas.Rows
            lineaboleta = lineaboleta & row.Item(0).ToString
        Next
        txtboleta.AppendText(lineaboleta)
    End Sub

    Private Sub VDirecta_Load(sender As Object, e As EventArgs) Handles MyBase.Load


        lbcaja.Text = "Caja N° " & idcajapublic
        lbnombre.Text = nombreusr
        lbsucursal.Text = ObtieneSucursal(idsucursalpublic)
        lbmsgencargo.Text = ""
        lbcantidad.Text = 0


        If idvtazrecuperacion > 0 Then

            idz = idvtazrecuperacion
            RecuperaValores()

        Else
            idpedidoventapublic = 200000
            idpublicovta = iniciaboleta()
            idcabpedidopublica = idpublicovta

        End If


        Me.KeyPreview = True


    End Sub

    Sub RptX()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        sql = " "


    End Sub

    Function ObtieneSucursal(idsucu As Integer) As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        sql = "select nom_sucursal from sucursal where id_sucursal=" & idsucu

        tablas = objconnn.ExecutarMySQLTablas(sql)

        Return tablas.Rows(0)("nom_sucursal")


    End Function

    Private Sub btncerrarturno_Click(sender As Object, e As EventArgs) Handles btncerrarturno.Click
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        ' validar cierre

        If acumventa > 0 Then

            lbestado.Text = "Tiene una venta en curso !!!"
            Exit Sub

        End If



        Me.WindowState = FormWindowState.Minimized



        AnulaBoleta.idz = idz

        AnulaBoleta.ShowDialog()


        arqueo.idcab = idpublicovta
        arqueo.idz = idz


        arqueo.ShowDialog()


        If arqueo.estado = True Then

            imprimeX()
            login.Show()

            sql = "update vta_z set estado=2,fec_ter='" & Format(Now(), "yyyy-MM-dd") & "',hrs_ter='" & Format(Now(), "HH:mm:ss") & "'  where id_cabz=" & idz
            objconnn.ExecutarMySQLInsert(sql)

            Me.Close()

        End If
        Me.WindowState = FormWindowState.Normal

    End Sub

    Private Sub btnauditoria_Click(sender As Object, e As EventArgs) Handles btnauditoria.Click
        imprimeX()
    End Sub

    Private Sub btnAnulaBoleta_Click(sender As Object, e As EventArgs) Handles btnAnulaBoleta.Click
        AnulaDoc.ShowDialog()
    End Sub

    Sub PluHelper()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim plua As Integer
        Dim plub As Integer
        Dim helpplu As String

        'txtproductosventa.ResetText()


        If Len(lbdigitado.Text) < 1 Then

            lbestado.Text = "Debe ingresar un plu"
            lbdigitado.ResetText()
            lbplu.ResetText()
            codteclado = ""
            Exit Sub
        End If

        plua = lbdigitado.Text - 5

        If plua < 0 Then
            plua = 0
        End If

        plub = lbdigitado.Text + 5

        sql = "select a.cod_plu,b.descripcion from vta_prodvta a inner join productos b  on a.id_producto=b.codarticulo  where a.cod_plu between " & plua & " and " & plub & ""
        tablas = objconnn.ExecutarMySQLTablas(sql)

        For t = 0 To tablas.Rows.Count - 1

            helpplu = helpplu & tablas.Rows(t)("cod_plu") & "-" & tablas.Rows(t)("descripcion") & " "

        Next
        ' txtproductosventa.Text = helpplu
        lbdigitado.ResetText()
        lbplu.ResetText()
        codteclado = ""

    End Sub

    Private Sub btnconsulta_Click(sender As Object, e As EventArgs) Handles btnconsulta.Click

        Helpers.ShowDialog()
        Helpers.Dispose()

    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick

        ActualizaDatos()


    End Sub
    Public Sub ActualizaDatos()
        Dim proces As New Process()

        proces.StartInfo.FileName = "C:\programacion\SJA.exe"
        proces.StartInfo.Arguments = "C:\programacion\possaletoserver.xml -r400"
        proces.StartInfo.WindowStyle = ProcessWindowStyle.Hidden
        proces.Start()



    End Sub

    Public Sub ActualizaEstructura()
        Dim proces As New Process()

        proces.StartInfo.FileName = "C:\programacion\SJA.exe"
        proces.StartInfo.Arguments = "C:\programacion\servertopossale.xml"
        proces.StartInfo.WindowStyle = ProcessWindowStyle.Hidden
        proces.Start()
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick

        ActualizaEstructura()

    End Sub


    Private Sub btnBorrarLinea_Click_1(sender As Object, e As EventArgs) Handles btnBorrarLinea.Click
        BorraLinea()

    End Sub

    Private Sub btncreditos_Click(sender As Object, e As EventArgs) Handles btncreditos.Click
        If idsucursalpublic = 7 Or idsucursalpublic = 9 Or idsucursalpublic = 10 Then
            Creditos.ShowDialog()
            Creditos.Dispose()
        Else
            Exit Sub
        End If

      
    End Sub

    Private Sub btnsubtotal_Click(sender As Object, e As EventArgs) Handles btnsubtotal.Click

    End Sub

End Class