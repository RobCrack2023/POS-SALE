Imports System.Drawing.Printing
Public Class AgregarProductos
    Public botonsubseleccionado As Integer
    Public idcabpublico As Integer
    Private Sub PedidoLocales_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargaBotonesFavn1()

    End Sub

    Private Sub CargaBotonesFavn1()
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim obsdata As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable()
        Dim mov As Integer = 30

        sql = "select idfavnodo,descrip from pos_std.ped_favnodo order by posicion"

        obsdata = objconnn.executarmysql(sql)
        tablas.Load(obsdata)

        For r = 0 To tablas.Rows.Count - 1
            Dim boton As New Button
            boton.AutoSize = False
            boton.BackColor = Color.Blue
            boton.ForeColor = Color.White
            boton.Location = New Point(mov, 19)
            boton.Width = 145
            boton.Height = 45
            boton.TabStop = False
            boton.Name = tablas.Rows(r)("idfavnodo")
            boton.Text = tablas.Rows(r)("descrip")
            AddHandler boton.Click, AddressOf Me.boton_Click
            Me.GroupBox2.Controls.Add(boton)
            mov = mov + 150
        Next

    End Sub
    Private Sub boton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim y As String
        y = CType(sender, System.Windows.Forms.Button).Name
        CargaBotonesFavn2(y)

    End Sub
    Private Sub CargaBotonesFavn2(idfavnodo As Integer)

        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim obsdata As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable()
        Dim mov As Integer = 15


        Me.GroupBox2.Controls.Clear()
        CargaBotonesFavn1()
        sql = "select idfabsubnodo,descrip from pos_std.ped_fabsubnodo where idfavnodo=" & idfavnodo & "  order by posicion"

        obsdata = objconnn.executarmysql(sql)
        tablas.Load(obsdata)

        For r = 0 To tablas.Rows.Count - 1
            Dim boton1 As New Button
            boton1.AutoSize = False
            boton1.BackColor = Color.CadetBlue
            boton1.ForeColor = Color.White
            boton1.Location = New Point(mov, 70)
            boton1.Width = 135
            boton1.Height = 60
            boton1.TabStop = False
            boton1.Name = tablas.Rows(r)("idfabsubnodo")
            boton1.Text = tablas.Rows(r)("descrip")
            AddHandler boton1.Click, AddressOf Me.boton1_Click
            Me.GroupBox2.Controls.Add(boton1)
            mov = mov + 140
        Next
    End Sub
    Private Sub boton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim y As String

        'Dim sql As String
        'Dim objconnn As DBCONECTAR = New DBCONECTAR
        'Dim obsdata As MySql.Data.MySqlClient.MySqlDataReader
        'Dim tablas As DataTable = New DataTable()

        y = CType(sender, System.Windows.Forms.Button).Name

        productosBoton(y)
        'sql = "select iddpto,idseccion from pos_std.favseccion where idfavnodo=" & y

        'obsdata = objconnn.executarmysql(sql)

        'tablas.Load(obsdata)
        'For g = 0 To tablas.Rows.Count - 1

        '    productos(tablas.Rows(g)("iddpto"), tablas.Rows(g)("idseccion"))

        'Next
    End Sub
    Public Function productosBoton(y As String)
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()
        Dim tablas2 As DataTable = New DataTable()
        Dim tablas3 As DataTable = New DataTable()
        Dim col As New AutoCompleteStringCollection
        idcabpedidopublica = 999999
        grillaprodsol.Rows.Clear()
        tablas.Reset()
        tablas2.Reset()


        grillaprodsol.BackgroundColor = Color.DarkGoldenrod
        botonsubseleccionado = CInt(y)
        sql = "select iddpto,idseccion from pos_std.ped_favseccion where idfavnodo=" & y

        tablas.Load(objconnn.executarmysql(sql))

        For g = 0 To tablas.Rows.Count - 1

            sql = "select  upper(DESCRIPCION) as descripcion,codarticulo FROM pos_std.productos where pedidoloc=1 and descatalogado='F' and DPTO =" & tablas.Rows(g)("iddpto") & "  and seccion=" & tablas.Rows(g)("idseccion") & "   order by DESCRIPCION "
            tablas2.Load(objconnn.executarmysql(sql))

            For i = 0 To tablas2.Rows.Count - 1
                col.Add(tablas2.Rows(i)("descripcion").ToString())
                tablas3.Reset()
                sql = "select cantidad,inventario,merma from pedidolocal_det where idpedido_cab=" & idcabpedidopublica & " and id_producto=" & tablas2.Rows(i)("codarticulo")
                tablas3.Load(objconnn.executarmysql(sql))


                If tablas3.Rows.Count > 0 Then

                    grillaprodsol.Rows.Add(tablas2.Rows(i)("codarticulo"), tablas2.Rows(i)("descripcion").ToString(), tablas3.Rows(0)("cantidad"), tablas3.Rows(0)("inventario"), tablas3.Rows(0)("merma"), 0)

                    grillaprodsol.Rows.Item(grillaprodsol.Rows.GetLastRow(DataGridViewElementStates.None)).DefaultCellStyle.BackColor = Color.Red
                    grillaprodsol.Rows.Item(grillaprodsol.Rows.GetLastRow(DataGridViewElementStates.None)).DefaultCellStyle.ForeColor = Color.White


                Else
                    grillaprodsol.Rows.Add(tablas2.Rows(i)("codarticulo"), tablas2.Rows(i)("descripcion").ToString(), 0, 0, 0, 0)

                End If
            Next
            tablas2.Reset()

        Next

    End Function

    Private Sub grillaprodsol_CellValueChanged(sender As Object, e As DataGridViewCellEventArgs) Handles grillaprodsol.CellValueChanged

        Dim w As Integer = e.RowIndex()
        Dim f As Integer = e.ColumnIndex()
        Dim subtotal As Integer

        If w > -1 And f > -1 Then
            If IsNumeric(grillaprodsol.Item(f, w).Value) = False Then
                grillaprodsol.Item(f, w).Value = 0
                Exit Sub
            End If
        End If


        If w > -1 Then

            If grillaprodsol.Item(2, w).Value < 1 And grillaprodsol.Item(3, w).Value < 1 And grillaprodsol.Item(4, w).Value < 1 Then

                grillaprodsol.Rows.Item(w).DefaultCellStyle.BackColor = Color.White
                grillaprodsol.Rows.Item(w).DefaultCellStyle.ForeColor = Color.Black
                subtotal = Val(grillaprodsol.Item(2, w).Value) + Val(grillaprodsol.Item(3, w).Value)
                grillaprodsol.Item(5, w).Value = subtotal

                totalcantprod()


                'agregaproductos(300000, grillaprodsol.Item(0, w).Value, grillaprodsol.Item(2, w).Value, grillaprodsol.Item(3, w).Value, grillaprodsol.Item(3, w).Value)
                eliminaproductos(999999, grillaprodsol.Item(0, w).Value, grillaprodsol.Item(2, w).Value, grillaprodsol.Item(3, w).Value, grillaprodsol.Item(3, w).Value)

            Else
                grillaprodsol.Rows.Item(w).DefaultCellStyle.BackColor = Color.Red
                grillaprodsol.Rows.Item(w).DefaultCellStyle.ForeColor = Color.White


                subtotal = Val(grillaprodsol.Item(2, w).Value) + Val(grillaprodsol.Item(3, w).Value)
                grillaprodsol.Item(5, w).Value = subtotal
                totalcantprod()
                agregaproductos(999999, grillaprodsol.Item(0, w).Value, grillaprodsol.Item(2, w).Value, grillaprodsol.Item(3, w).Value, grillaprodsol.Item(3, w).Value)
            End If
        End If
    End Sub
    Sub totalcantprod()
        Dim totales As Integer
        For Each row As DataGridViewRow In grillaprodsol.Rows()
            totales = totales + Val(row.Cells(2).Value)
        Next
        lbtotal.Text = totales
    End Sub

    Sub agregaproductos(idcab As Integer, idproducto As Integer, cantidad As Integer, inventario As Integer, merma As Integer)
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()

        tablas.Reset()
        sql = "select id_producto from pedidolocal_det where idpedido_cab=" & idcab & " and id_producto=" & idproducto

        tablas.Load(objconnn.executarmysql(sql))
        If Val(tablas.Rows.Count) > 0 Then

            sql = "update pedidolocal_det  set cantidad=0,cantenviada=" & cantidad & ",merma=" & merma & "  where  idpedido_cab=" & idcab & " and   id_producto=" & idproducto
            objconnn.executarmysqlinsert(sql)
        Else
            sql = "insert into pedidolocal_det (idpedido_det,id_producto,idpedido_cab,cantidad,cantenviada,merma)  values ((select max(b.idpedido_det)+1 from pedidolocal_det b)," & idproducto & "," & idcab & ",0," & cantidad & "," & merma & ")"
            objconnn.executarmysqlinsert(sql)
        End If

    End Sub
    Sub eliminaproductos(idcab As Integer, idproducto As Integer, cantidad As Integer, inventario As Integer, merma As Integer)
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()

        tablas.Reset()
        sql = "select id_producto from pedidolocal_det where idpedido_cab=" & idcab & " and id_producto=" & idproducto

        tablas.Load(objconnn.executarmysql(sql))
        If Val(tablas.Rows.Count) > 0 Then

            sql = "delete   from  pedidolocal_det   where  idpedido_cab=" & idcab & " and   id_producto=" & idproducto
            objconnn.executarmysqlinsert(sql)

        End If
    End Sub
    Private Sub grillaprodsol_EditingControlShowing( _
        ByVal sender As Object, _
        ByVal e As DataGridViewEditingControlShowingEventArgs)

        ' referencia a la celda  
        Dim validar As TextBox = CType(e.Control, TextBox)

        ' agregar el controlador de eventos para el KeyPress  
        AddHandler validar.KeyPress, AddressOf validar_Keypress

    End Sub

    ' evento Keypress  
    ' '''''''''''''''''''  
    Private Sub validar_Keypress( _
        ByVal sender As Object, _
        ByVal e As System.Windows.Forms.KeyPressEventArgs)

        ' obtener indice de la columna  
        Dim columna As Integer = grillaprodsol.CurrentCell.ColumnIndex
        Dim linea As Integer = grillaprodsol.CurrentCell.RowIndex

        ' comprobar si la celda en edición corresponde a la columna 1 o 3  
        If columna = 2 Or columna = 3 Or columna = 4 Then

            ' Obtener caracter  
            Dim caracter As Char = e.KeyChar

            ' comprobar si el caracter es un número o el retroceso  
            If Not Char.IsNumber(caracter) And (caracter = ChrW(Keys.Back)) = False Then
                'Me.Text = e.KeyChar  
                e.KeyChar = Chr(0)
            End If
        End If
    End Sub

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR

        sql = "delete from pedidolocal_det where idpedido_cab=999999"
        objconnn.executarmysqlinsert(sql)

        Me.Close()
    End Sub

    Private Sub btnenviar_Click(sender As Object, e As EventArgs) Handles btnenviar.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()
        Dim imp As Imprime = New Imprime
        imp.ObtieneImpresora()
        Dim printDoc2 As New PrintDocument

        sql = "select idpedido_det from pedidolocal_det where idpedido_cab=999999"
        tablas.Load(objconnn.executarmysql(sql))

        If tablas.Rows.Count < 1 Then

            MsgBox("Debe ingresar productos para agregar al Pedido")

            Exit Sub

        End If
        'tablas.Reset()

        'sql = "INSERT INTO pedidolocal_cab "
        'sql = sql & " (`idpedido_cab`, `id_sucursal`,`estadopedloc`,`idturno`,`comentario`, `idusuario`,`fecha_pedido`,`fec_ing`,`hrs_ing`) "
        'sql = sql & " VALUES ( (select max(b.idpedido_cab)+1 from pedidolocal_cab b)," & idsucursalpublic & ",1," & cmbturno.SelectedValue & ",''," & usr & ",'" & Format(CDate(txtfechaped.Text), "yyyy-MM-dd") & "', DATE_FORMAT(NOW(),'%Y-%m-%d') ,DATE_FORMAT(NOW(),'%H:%i'))"
        'objconnn.executarmysqlinsert(sql)

        'sql = "select max(idpedido_cab) as ID from pedidolocal_cab"
        'tablas.Load(objconnn.executarmysql(sql))

        'idcabpedidopublica = tablas.Rows(0)("ID")

        'tablas.Reset()

        'sql = "INSERT INTO pedidolocal_cab_hist "
        'sql = sql & " (`idpedido_cab`, `id_sucursal`,`estadopedloc`,`idturno`,`comentario`, `idusuario`,`fecha_pedido`,`fec_ing`,`hrs_ing`) "
        'sql = sql & " VALUES ( " & idcabpedidopublica & "," & idsucursalpublic & ",1," & cmbturno.SelectedIndex & ",''," & usr & ",'" & Format(CDate(txtfechaped.Text), "yyyy-MM-dd") & "', DATE_FORMAT(NOW(),'%Y-%m-%d') ,DATE_FORMAT(NOW(),'%H:%i'))"
        'objconnn.executarmysqlinsert(sql)


        sql = "select idpedido_det from pedidolocal_det where idpedido_cab=999999"
        tablas.Load(objconnn.executarmysql(sql))

        For Each row As DataRow In tablas.Rows
            sql = "update pedidolocal_det set idpedido_cab=" & idcabpublico & " where idpedido_det=" & row.Item(0) & "; "
            'sql = sql & "INSERT INTO pedidolocal_det_hist(SELECT * FROM pedidolocal_det where idpedido_det=" & row.Item(0) & " )"
            objconnn.executarmysqlinsert(sql)
        Next
        tablas.Reset()
        MsgBox("El pedido N° " & idcabpublico & " fue agregado correctamente")

        grillaprodsol.Rows.Clear()
        totalcantprod()


        'printDoc2.PrinterSettings.PrinterName = imp.impresoraticket
        'printDoc2.PrintController = New System.Drawing.Printing.StandardPrintController()
        'AddHandler printDoc2.PrintPage, AddressOf imp.ImprimeRPTPedidoProductos

        'printDoc2.Print()
        'printDoc2 = Nothing
        idcabpedidopublica = 0
        Reportes.SelectedIndex = 0
    End Sub
    Sub Limpiar()

        grillaprodsol.DataSource = Nothing

    End Sub

    Private Sub Reportes_Click(sender As Object, e As EventArgs) Handles Reportes.Click

        'If Reportes.TabIndex = 1 Then
        '    grillapedact.DataSource = Nothing
        '    grillapedidos.DataSource = Nothing
        'End If
    End Sub
    Private Sub btnsalir_Click(sender As Object, e As EventArgs)
        Principal.Show()
        Me.Close()
    End Sub

End Class