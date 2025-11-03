Imports System.Drawing.Printing
Public Class AdminPedidoLocales
    Public botonsubseleccionado As Integer
    Public idcabpublico As Integer
    Public interruptor As Boolean = False
    Private Sub PedidoLocales_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        CargaEstado()
        CargaSucursal()
    End Sub
    Private Sub CargaSucursal()

        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select id_sucursal, nom_sucursal  from sucursal order by nom_sucursal"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        cmbsucursal.DataSource = tablas
        cmbsucursal.DisplayMember = "nom_sucursal"
        cmbsucursal.ValueMember = "id_sucursal"

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
   
    Private Sub btncerrar_Click(sender As Object, e As EventArgs)
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR

        sql = "delete from pedidolocal_det where idpedido_cab=999999"
        objconnn.executarmysqlinsert(sql)

        Reportes.SelectedIndex = 0
        'Principal.Show()
        'Me.Close()
    End Sub

    Sub Pedidoslocales(fechadesde As String, fechahasta As String)
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()

        sql = "select idpedido_cab as ID, Nom_sucursal as Sucursal from pedidolocal_cab a"
        sql = sql & " inner join sucursal b  on a.id_sucursal=b.id_sucursal"

        sql = sql & " where DATE(fecha_pedido) BETWEEN '" & fechadesde & "' AND '" & fechahasta & "'"

        tablas.Load(objconnn.executarmysql(sql))
        grillapedidos.DataSource = tablas



    End Sub

    Private Sub btnbuscar_Click(sender As Object, e As EventArgs) Handles btnbuscar.Click
        BuscarPedidos()

    End Sub
    Sub BuscarPedidos()
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()


        sql = "SELECT "
        sql = sql & "a.`idpedido_cab` AS ID,"
        sql = sql & "d.`descrip` AS Turno,"
        sql = sql & "a.`fecha_pedido` AS `Fecha Pedido`,"
        sql = sql & "e.`desc_estado` AS Estado,"
        sql = sql & "f.`nom_sucursal` AS Sucursal"

        sql = sql & " FROM "
        sql = sql & "pedidolocal_cab a"
        sql = sql & " INNER JOIN turno d ON d.`id_turno`=a.`idturno`"
        sql = sql & " INNER JOIN estado_ped e ON a.`estadopedloc`=e.`id_estado`"
        sql = sql & " INNER JOIN sucursal f ON f.`id_sucursal`=a.`id_sucursal`"

        sql = sql & " WHERE   estadopedloc=" & cmbestado.SelectedValue

        '' sql = sql & " WHERE   a.id_sucursal=" & cmbsucursal.SelectedValue & "  and  estadopedloc=" & cmbestado.SelectedValue ''&  " and  "
        '' sql = sql & " DATE(a.fecha_pedido) BETWEEN '" & Format(CDate(txtfecdesde.Text), "yyyy-MM-dd") & "' AND '" & Format(CDate(txtfechasta.Text), "yyyy-MM-dd") & "'"

        tablas.Load(objconnn.executarmysql(sql))

        grillapedidos.DataSource = tablas


        grillapedact.Rows.Clear()

    End Sub

    Private Sub grillapedidos_Click(sender As Object, e As EventArgs) Handles grillapedidos.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()
        Dim tablas2 As DataTable = New DataTable()

        Dim indice As String
        Dim estado As String

        If grillapedidos.Rows.Count < 1 Then

            MsgBox("Debe Seleccionar un Pedido", MsgBoxStyle.Critical)

            Exit Sub
        End If


        grillapedact.Rows.Clear()
        indice = Convert.ToString(grillapedidos.Rows(grillapedidos.CurrentRow.Index).Cells(0).Value)
        estado = Convert.ToString(grillapedidos.Rows(grillapedidos.CurrentRow.Index).Cells(3).Value)

        'sql = "select c.descripcion,b.cantidad from pedidolocal_cab_hist a "
        'sql = sql & " inner join pedidolocal_det_hist b  on a.idpedido_cab=b.idpedido_cab"
        'sql = sql & " inner join productos c  on b.id_producto=c.codarticulo"
        'sql = sql & " where a.idpedido_cab=" & indice

        'tablas.Load(objconnn.executarmysql(sql))
        'grillapedori.DataSource = tablas

       

        sql = "select b.id_producto,c.descripcion,b.cantidad,b.cantenviada from pedidolocal_cab a "
        sql = sql & " inner join pedidolocal_det b  on a.idpedido_cab=b.idpedido_cab"
        sql = sql & " inner join productos c  on b.id_producto=c.codarticulo"
        sql = sql & " where a.idpedido_cab=" & indice

        tablas2.Load(objconnn.executarmysql(sql))

        'grillapedact.DataSource = tablas2

        grillapedact.ColumnCount = 4
        grillapedact.Columns(0).ReadOnly = True
        grillapedact.Columns(0).Name = "ID"
        grillapedact.Columns(1).ReadOnly = True
        grillapedact.Columns(1).Name = "PRODUCTO"
        grillapedact.Columns(2).ReadOnly = True
        grillapedact.Columns(2).Name = "CANT. PED."

        If estado = "Enviado" Then
            grillapedact.Columns(3).DefaultCellStyle.BackColor = Color.Tomato
            grillapedact.Columns(3).ReadOnly = False
            grillapedact.Columns(3).Name = "CANT. ENV."
        Else
            grillapedact.Columns(3).DefaultCellStyle.BackColor = Color.White
            grillapedact.Columns(3).ReadOnly = True
            grillapedact.Columns(3).Name = "CANT. ENV."
        End If

        For t = 0 To tablas2.Rows.Count - 1
            grillapedact.Rows.Add(tablas2.Rows(t)("id_producto"), tablas2.Rows(t)("descripcion"), tablas2.Rows(t)("cantidad"), tablas2.Rows(t)("cantenviada"))
        Next


    End Sub


    Private Sub Reportes_Click(sender As Object, e As EventArgs) Handles Reportes.Click

        'If Reportes.TabIndex = 1 Then
        '    grillapedact.DataSource = Nothing
        '    grillapedidos.DataSource = Nothing
        'End If
    End Sub
    Private Sub CargaEstado()

        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select id_estado, desc_estado  from estado_ped order by id_estado"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        cmbestado.DataSource = tablas
        cmbestado.DisplayMember = "desc_estado"
        cmbestado.ValueMember = "id_estado"


    End Sub

    Private Sub grillapedact_CellValueChanged(sender As Object, e As DataGridViewCellEventArgs) Handles grillapedact.CellValueChanged
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()

        Dim w As Integer = e.RowIndex()
        Dim f As Integer = e.ColumnIndex()
        Dim indice As Integer

        If w > -1 Then
            If IsNumeric(grillapedact.Item(f, w).Value) = False Then
                grillapedact.Item(f, w).Value = 0
                Exit Sub
            Else

                indice = Convert.ToUInt32(grillapedidos.Rows(grillapedidos.CurrentRow.Index).Cells(0).Value)

                sql = "update pedidolocal_det set cantenviada=" & grillapedact.Item(3, w).Value & " where idpedido_cab=" & indice & " and id_producto=" & grillapedact.Item(0, w).Value
                objconnn.executarmysqlinsert(sql)

            End If
        End If

    End Sub

    Private Sub grillapedact_DataError(sender As Object, e As DataGridViewDataErrorEventArgs) Handles grillapedact.DataError

        Dim col As Integer = e.ColumnIndex
        Dim lin As Integer = e.RowIndex
        grillapedact.Item(col, lin).Value = 0

        Exit Sub
    End Sub

    Private Sub btnaceptar_Click(sender As Object, e As EventArgs) Handles btnaceptar.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()
        Dim indice As Integer


        If grillapedidos.Rows.Count < 1 Then
            MsgBox("Debe seleccionar un pedido")
            Exit Sub

        End If

        indice = Convert.ToInt32(grillapedidos.Rows(grillapedidos.CurrentRow.Index).Cells(0).Value)

        sql = "select estadopedloc from pedidolocal_cab where idpedido_cab=" & indice & " and estadopedloc in(4) "

        tablas.Load(objconnn.executarmysql(sql))

        If tablas.Rows.Count < 1 Then

            MsgBox("El pedido se encuentra en otro estado ")
            Exit Sub

        End If

        Despacho.idcabped = indice
        Despacho.ShowDialog()

        BuscarPedidos()
        grillapedact.Rows.Clear()
        grillapedact.DataSource = Nothing



    End Sub

    Private Sub btnagregar_Click(sender As Object, e As EventArgs) Handles btnagregar.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()
        Dim indice As Integer


        indice = Convert.ToInt32(grillapedidos.Rows(grillapedidos.CurrentRow.Index).Cells(0).Value)

        sql = "select estadopedloc from pedidolocal_cab where idpedido_cab=" & indice & " and estadopedloc in(2) "

        tablas.Load(objconnn.executarmysql(sql))

        If tablas.Rows.Count < 1 Then

            MsgBox("El pedido se encuentra en otro estado ")
            Exit Sub

        End If


        AgregarProductos.idcabpublico = Convert.ToUInt32(grillapedidos.Rows(grillapedidos.CurrentRow.Index).Cells(0).Value)
        AgregarProductos.ShowDialog()

    End Sub

    Private Sub btneliminar_Click(sender As Object, e As EventArgs) Handles btneliminar.Click
        Dim idcab As Integer
        Dim idprod As Integer
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()
        Dim indice As Integer


        indice = Convert.ToInt32(grillapedidos.Rows(grillapedidos.CurrentRow.Index).Cells(0).Value)

        sql = "select estadopedloc from pedidolocal_cab where idpedido_cab=" & indice & " and estadopedloc in(2) "

        tablas.Load(objconnn.executarmysql(sql))

        If tablas.Rows.Count < 1 Then

            MsgBox("El pedido se encuentra en otro estado ")
            Exit Sub

        End If







        idcab = Convert.ToUInt32(grillapedidos.Rows(grillapedidos.CurrentRow.Index).Cells(0).Value)
        idprod = grillapedact.Rows(grillapedact.CurrentRow.Index).Cells(0).Value
        If MsgBox("Desea Eliminar el producto  :" & grillapedact.Rows(grillapedact.CurrentRow.Index).Cells(1).Value, MsgBoxStyle.YesNo) = MsgBoxResult.Yes Then
            eliminaproductos(idcab, idprod, 0, 0, 0)
            BuscarPedidos()
        End If

    End Sub
    Private Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        Principal.Show()
        Me.Close()
    End Sub
    Private Sub btnImprimir_Click(sender As Object, e As EventArgs) Handles btnImprimir.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()
        Dim indice As Integer

        If grillapedidos.Rows.Count < 1 Then
            MsgBox("Debe seleccionar un pedido")
            Exit Sub

        End If


        indice = Convert.ToUInt32(grillapedidos.Rows(grillapedidos.CurrentRow.Index).Cells(0).Value)

        sql = "select estadopedloc from pedidolocal_cab where idpedido_cab=" & indice & " and estadopedloc in(1) "

        tablas.Load(objconnn.executarmysql(Sql))

        If tablas.Rows.Count = 0 Then

            MsgBox("El pedido se encuentra en otro estado ")
            Exit Sub

        End If



        SelecSucu.operacion = 1
        SelecSucu.ShowDialog()

    End Sub

 
    Private Sub btnarmado_Click_1(sender As Object, e As EventArgs) Handles btnarmado.Click


        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()
        Dim indice As Integer


        If grillapedidos.Rows.Count < 1 Then
            MsgBox("Debe seleccionar un pedido")
            Exit Sub

        End If

        indice = Convert.ToInt32(grillapedidos.Rows(grillapedidos.CurrentRow.Index).Cells(0).Value)



            sql = "select estadopedloc from pedidolocal_cab where idpedido_cab=" & indice & " and estadopedloc in(2) "

            tablas.Load(objconnn.executarmysql(sql))

            If tablas.Rows.Count = 0 Then

                MsgBox("El pedido se encuentra en otro estado ")
                Exit Sub

            End If


            If interruptor = False Then


                'escritura cantidad
                grillapedact.Columns(3).ReadOnly = False

                ' bloquear botonones

                txtfecdesde.Enabled = False
                txtfechasta.Enabled = False

                cmbestado.Enabled = False
                cmbsucursal.Enabled = False

                btnbuscar.Enabled = False
                btnanular.Enabled = False
                btnImprimir.Enabled = False
                btnaceptar.Enabled = False
                btnsalir.Enabled = False
                btnpicking.Enabled = False

                interruptor = True

                btnarmado.BackColor = Color.GreenYellow
                grillapedidos.Enabled = False

            Else
                'escritura cantidad
                grillapedact.Columns(3).ReadOnly = True

                ' bloquear botonones

                txtfecdesde.Enabled = True
                txtfechasta.Enabled = True

                cmbestado.Enabled = True
                cmbsucursal.Enabled = True

                btnbuscar.Enabled = True
                btnanular.Enabled = True
                btnImprimir.Enabled = True
                btnaceptar.Enabled = True
                btnsalir.Enabled = True
                btnpicking.Enabled = True
                interruptor = False
                btnarmado.BackColor = Color.LightGray
                grillapedidos.Enabled = True
            End If

    End Sub

    Private Sub btnpicking_Click(sender As Object, e As EventArgs) Handles btnpicking.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()
        Dim indice As Integer


        If grillapedidos.Rows.Count < 1 Then
            MsgBox("Debe seleccionar un pedido")
            Exit Sub

        End If

        indice = Convert.ToInt32(grillapedidos.Rows(grillapedidos.CurrentRow.Index).Cells(0).Value)

        sql = "select estadopedloc from pedidolocal_cab where idpedido_cab=" & indice & " and estadopedloc in(2) "

        tablas.Load(objconnn.executarmysql(sql))

        If tablas.Rows.Count < 1 Then

            MsgBox("El pedido se encuentra en otro estado ")
            Exit Sub

        End If

        SelecSucu.operacion = 2
        SelecSucu.ShowDialog()


    End Sub
End Class