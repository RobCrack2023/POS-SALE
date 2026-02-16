Public Class frmproductos

    Private Sub frmproductos_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        '  Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        ' Dim sql As String

        'sql = "select * from "
        grillaProductos.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells
        Cargadpto()

    End Sub

    Private Sub Cargadpto()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select numdpto, descripcion  from dpto where activo=1 order by descripcion"

        If idsucursalpublic = 14 Then

            dptoob = objconnn.ExecutarMySQLProd(sql)
        Else

            dptoob = objconnn.ExecutarMySQL(sql)

        End If

        tablas.Load(dptoob)
        cmbdpto.DataSource = tablas
        cmbdpto.DisplayMember = "descripcion"
        cmbdpto.ValueMember = "numdpto"

    End Sub

    Private Sub cmbdpto_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbdpto.SelectedIndexChanged
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable
        Dim row As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        sql = "select numseccion, descripcion  from secciones where numdpto=" & row.Item("numdpto") & " order by descripcion"

        If idsucursalpublic = 14 Then

            dptoob = objconnn.ExecutarMySQLProd(sql)
        Else

            dptoob = objconnn.ExecutarMySQL(sql)

        End If

        tablas.Load(dptoob)
        cmbseccion.DataSource = tablas
        cmbseccion.DisplayMember = "descripcion"
        cmbseccion.ValueMember = "numseccion"

    End Sub

  
    Private Sub BuscarLikeProd()

        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1

        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable

        Dim row1 As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        Dim row2 As DataRowView = DirectCast(cmbseccion.SelectedItem, DataRowView)
        'sql = "SELECT a.CodArticulo, a.Descripcion,a.descatalogado"
        'sql = sql & " FROM pos_std.productos a "
        'sql = sql & " where a.descatalogado='F' and a.dpto=" & row1.Item("numdpto") & " and a.seccion=" & row2.Item("numseccion") & " order by descripcion"

        If txtprodbusca.TextLength > 2 Then
            sql = "SELECT a.CodArticulo, a.Descripcion as Producto, a.unidadmedida, a.descatalogado,b.descripcion as Dpto,c.descripcion as Seccion, a.pedidoloc as Pedido"
            sql = sql & " FROM productos a "
            sql = sql & " inner join dpto b on a.dpto=b.numdpto"
            sql = sql & " inner join secciones c on a.seccion=c.numseccion"
            sql = sql & " where b.activo=1 and a.descatalogado='" & IIf(Me.descatalog.Checked = True, "T", "F") & "' and  UPPER(a.Descripcion) like '%" & txtprodbusca.Text.ToUpper & "%' order by a.descripcion"


            If idsucursalpublic = 14 Then

                dptoob = objconnn.ExecutarMySQLProd(sql)
            Else

                dptoob = objconnn.ExecutarMySQL(sql)

            End If


            tablas.Load(dptoob)


            grillaProductos.DataSource = tablas
            grillaProductos.Columns(0).ReadOnly = True
            grillaProductos.RowHeadersWidthSizeMode = DataGridViewRowHeadersWidthSizeMode.AutoSizeToFirstHeader
        End If

    End Sub
    Private Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String

        Try

            For Each row As DataGridViewRow In grillaProductos.SelectedRows()

                Dim idunico As Object = row.Cells(0).Value
                sql = "update productos set descatalogado='T' where codarticulo=" & idunico

                If idsucursalpublic = 14 Then

                    objconnn.ExecutarMySQLinsertProd(sql)
                Else

                    objconnn.ExecutarMySQLinsert(sql)

                End If


                MsgBox("Se Descatalogaron Correctamente lo(s) articulo(s)")
            Exit Sub
            Next
        Catch ex As System.Data.SQLite.SQLiteException
            MsgBox("Se Produjo un error de Transacción" & ex.Message)
            Exit Sub
        End Try
    End Sub

    Private Sub txtprodbusca_TextChanged(sender As Object, e As EventArgs) Handles txtprodbusca.TextChanged

        BuscarLikeProd()

    End Sub

    Private Sub btnActualizar_Click(sender As Object, e As EventArgs) Handles btnActualizar.Click
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim row1 As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        Dim row2 As DataRowView = DirectCast(cmbseccion.SelectedItem, DataRowView)

        Try

            For Each row As DataGridViewRow In grillaProductos.SelectedRows()

                Dim idunico As Object = row.Cells(0).Value
                sql = "update productos set dpto=" & row1.Item("numdpto") & " ,  seccion=" & row2.Item("numseccion") & " where codarticulo=" & idunico

                If idsucursalpublic = 14 Then

                    objconnn.ExecutarMySQLinsertProd(sql)
                Else

                    objconnn.ExecutarMySQLinsert(sql)

                End If

            Next
            MsgBox("Se Actualizaron Correctamente lo(s) articulo(s)")
            Exit Sub
        Catch ex As System.Data.SQLite.SQLiteException
            MsgBox("Se Produjo un error de Transacción" & ex.Message)
            Exit Sub
        End Try


    End Sub

    Private Sub btnbuscards_Click(sender As Object, e As EventArgs) Handles btnbuscards.Click

        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1

        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable

        Dim row1 As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        Dim row2 As DataRowView = DirectCast(cmbseccion.SelectedItem, DataRowView)
        sql = "SELECT a.CodArticulo, a.Descripcion as Producto,a.descatalogado,b.descripcion as Dpto,c.descripcion as Seccion ,a.pedidoloc as Pedido"
        sql = sql & " FROM productos a "
        sql = sql & " inner join dpto b on a.dpto=b.numdpto"
        sql = sql & " inner join secciones c on a.seccion=c.numseccion"
        sql = sql & " where a.descatalogado='" & IIf(Me.descatalog.Checked = True, "T", "F") & "' and a.dpto=" & row1.Item("numdpto") & " and a.seccion=" & row2.Item("numseccion") & " order by a.descripcion"


        If idsucursalpublic = 14 Then

            dptoob = objconnn.ExecutarMySQLProd(sql)
        Else

            dptoob = objconnn.ExecutarMySQL(sql)

        End If

        tablas.Load(dptoob)

        grillaProductos.DataSource = tablas
        grillaProductos.Columns(0).ReadOnly = True
        grillaProductos.RowHeadersWidthSizeMode = DataGridViewRowHeadersWidthSizeMode.AutoSizeToFirstHeader

    End Sub

    Private Sub btnactua_Click(sender As Object, e As EventArgs) Handles btnactua.Click
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String

        Try

            For Each row As DataGridViewRow In grillaProductos.SelectedRows()

                Dim idunico As Object = row.Cells(0).Value
                Dim descrip As Object = row.Cells(1).Value
                sql = "update productos set descripcion='" & descrip.ToString & "' where codarticulo=" & idunico
                objconnn.ExecutarMySQLinsertProd(sql)

                If idsucursalpublic = 14 Then

                    objconnn.ExecutarMySQLinsertProd(sql)
                Else

                    objconnn.ExecutarMySQLinsert(sql)

                End If


                MsgBox("Se Actualizaron Correctamente lo(s) articulo(s)")
                Exit Sub
            Next
        Catch ex As System.Data.SQLite.SQLiteException
            MsgBox("Se Produjo un error de Transacción " & ex.Message)
            Exit Sub
        End Try

    End Sub

    Private Sub btnNuevo_Click(sender As Object, e As EventArgs) Handles btnNuevo.Click
        frmnuevoprod.ShowDialog()
    End Sub

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Principal.Show()
        Me.Close()
    End Sub

    Private Sub grillaProductos_CellContentDoubleClick(sender As Object, e As DataGridViewCellEventArgs) Handles grillaProductos.CellContentDoubleClick        


    End Sub

    Private Sub btncreardpto_Click(sender As Object, e As EventArgs) Handles btncreardpto.Click
        ' MÓDULO NO DISPONIBLE - DptoSeccion.vb excluido del proyecto (no migrado a SQLite)
        MessageBox.Show("El módulo de Departamentos y Secciones no está disponible actualmente." & vbCrLf & "Contacte al administrador del sistema.", "Módulo no disponible", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ' Dptosecciones.ShowDialog()
    End Sub

    Private Sub btnpreciosbatch_Click(sender As Object, e As EventArgs) Handles btnpreciosbatch.Click
        'Dim idprodarr(10) As Integer
        'Dim cont As Integer
        'ReDim idprodarr(grillaProductos.SelectedRows.Count - 1)
        'For Each row As DataGridViewRow In grillaProductos.SelectedRows()
        '    idprodarr(cont) = row.Cells(0).Value
        '    cont = cont + 1
        'Next

        'Precios.numarray = idprodarr.Count()
        'Precios.idprodarre = idprodarr
        'Precios.idproducto = grillaProductos.Rows(grillaProductos.CurrentRow.Index).Cells(0).Value
        'Precios.desprod = grillaProductos.Rows(grillaProductos.CurrentRow.Index).Cells(1).Value
        PreciosNEW.ShowDialog()

    End Sub

    Private Sub btnprodped_Click(sender As Object, e As EventArgs) Handles btnprodped.Click
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim row1 As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        Dim row2 As DataRowView = DirectCast(cmbseccion.SelectedItem, DataRowView)

        Try
            For Each row As DataGridViewRow In grillaProductos.SelectedRows()

                Dim idunico As Object = row.Cells(0).Value
                tablas.Reset()
                sql = "select pedidoloc from productos where codarticulo=" & idunico
                tablas.Load(objconnn.ExecutarMySQLProd(sql))
                If tablas.Rows(0)("pedidoloc") = 0 Then
                    sql = "update productos set pedidoloc=1 where codarticulo=" & idunico


                    If idsucursalpublic = 14 Then

                        objconnn.ExecutarMySQLinsertProd(sql)
                    Else

                        objconnn.ExecutarMySQLinsert(sql)

                    End If

                Else
                    sql = "update productos set pedidoloc=0 where codarticulo=" & idunico


                    If idsucursalpublic = 14 Then

                        objconnn.ExecutarMySQLinsertProd(sql)
                    Else

                        objconnn.ExecutarMySQLinsert(sql)

                    End If

                End If
          
            Next
            MsgBox("Se Asignaron Correctamente lo(s) productos(s)")
            Exit Sub
        Catch ex As System.Data.SQLite.SQLiteException
            MsgBox("Se Produjo un error de Transacción" & ex.Message)
            Exit Sub
        End Try

    End Sub

    Private Sub grillaProductos_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles grillaProductos.CellContentClick

    End Sub
End Class