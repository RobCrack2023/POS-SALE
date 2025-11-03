Public Class PreciosNEW
    Public idproducto As Integer
    Public desprod As String
    Public numarray As Integer
    Public idprodarre(numarray) As Integer

    Private Sub Precios_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Cargadpto()
        CargaSucursalEncargos()

    End Sub

    Private Sub Cargadpto()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select numdpto, descripcion  from pos_std.dpto where activo=1 order by descripcion"

        If idsucursalpublic = 14 Then

            dptoob = objconnn.ExecutarMySQL(sql)
        Else

            dptoob = objconnn.ExecutarMySQL(sql)

        End If

        tablas.Load(dptoob)
        cmbdpto.DataSource = tablas
        cmbdpto.DisplayMember = "descripcion"
        cmbdpto.ValueMember = "numdpto"

    End Sub

    Private Sub cargaPrecios()
        Label1.Text = desprod
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1

        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable
       
        sql = "select codarticulo as COD,pbruto as Precio from pos_std.precioproductos where codarticulo=" & idproducto

        dptoob = objconnn.ExecutarMySQL(sql)


        tablas.Load(dptoob)
        grillaprecios.DataSource = tablas

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
            sql = "SELECT a.CodArticulo, a.Descripcion as Producto,b.descripcion as Dpto,c.descripcion as Seccion"
            sql = sql & " FROM pos_std.productos a "
            sql = sql & " inner join pos_std.dpto b on a.dpto=b.numdpto"
            sql = sql & " inner join pos_std.secciones c on a.seccion=c.numseccion"
            sql = sql & " where b.activo=1 and a.descatalogado='F' and  ucase(a.Descripcion) like '%" & txtprodbusca.Text.ToUpper & "%' order by a.descripcion"


            If idsucursalpublic = 0 Then

                dptoob = objconnn.ExecutarMySQL(sql)
            Else

                dptoob = objconnn.ExecutarMySQL(sql)

            End If

            tablas.Load(dptoob)


            grillaProductos.DataSource = tablas
            grillaProductos.Columns(0).ReadOnly = True
            grillaProductos.RowHeadersWidthSizeMode = DataGridViewRowHeadersWidthSizeMode.AutoSizeToFirstHeader

        End If

    End Sub

    Private Sub cmbdpto_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbdpto.SelectedIndexChanged
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable
        Dim row As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        sql = "select numseccion, descripcion  from pos_std.secciones where numdpto=" & row.Item("numdpto") & " order by descripcion"

        If idsucursalpublic = 0 Then

            dptoob = objconnn.ExecutarMySQL(sql)
        Else

            dptoob = objconnn.ExecutarMySQL(sql)

        End If

        tablas.Load(dptoob)
        cmbseccion.DataSource = tablas
        cmbseccion.DisplayMember = "descripcion"
        cmbseccion.ValueMember = "numseccion"

    End Sub

    Private Sub CargaSucursalEncargos()

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select id_sucursal, nom_sucursal  from sucursal order by nom_sucursal"

        dptoob = objconnn.ExecutarMySQL(sql)
        tablas.Load(dptoob)
        cmbsucursales.DataSource = tablas
        cmbsucursales.DisplayMember = "nom_sucursal"
        cmbsucursales.ValueMember = "id_sucursal"

    End Sub
    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Me.Close()
    End Sub

    Private Sub btnagregar_Click(sender As Object, e As EventArgs) Handles btnagregar.Click
        Dim Precioss As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Precioss = InputBox(" INGRESE EL PRECIO ")
        sql = "insert into pos_std.precioproductos (codarticulo,pbruto)  values(" & idproducto & "," & Precioss & ")"

        Try
            objconnn.ExecutarMySQL(sql)

            cargaPrecios()
        Catch ex As System.Data.SQLite.SQLiteException
            MsgBox("Error en transaction" & ex.Message)
        End Try
    End Sub

    Private Sub btneliminar_Click(sender As Object, e As EventArgs) Handles btneliminar.Click
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String

        Try
            For Each row As DataGridViewRow In grillaprecios.SelectedRows()

                Dim idunico As Object = row.Cells(1).Value
                sql = "delete  from  pos_std.precioproductos where  codarticulo=" & idproducto & " and pbruto='" & idunico & "'"

                objconnn.ExecutarMySQL(sql)

                MsgBox("Se Elimino  Correctamente ")
                cargaPrecios()
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

    Private Sub btnbuscards_Click(sender As Object, e As EventArgs) Handles btnbuscards.Click


        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1

        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable

        Dim row1 As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        Dim row2 As DataRowView = DirectCast(cmbseccion.SelectedItem, DataRowView)


        sql = "SELECT a.CodArticulo, a.Descripcion as Producto,a.descatalogado,b.descripcion as Dpto,c.descripcion as Seccion ,a.pedidoloc as Pedido"
        sql = sql & " FROM pos_std.productos a "
        sql = sql & " inner join pos_std.dpto b on a.dpto=b.numdpto"
        sql = sql & " inner join pos_std.secciones c on a.seccion=c.numseccion"
        sql = sql & " where a.descatalogado='F' and a.dpto=" & row1.Item("numdpto") & " and a.seccion=" & row2.Item("numseccion") & " order by a.descripcion"


        If idsucursalpublic = 14 Then

            dptoob = objconnn.ExecutarMySQLprod(sql)
        Else

            dptoob = objconnn.ExecutarMySQL(sql)

        End If

        tablas.Load(dptoob)

        grillaProductos.DataSource = tablas
        grillaProductos.Columns(0).ReadOnly = True
        grillaProductos.RowHeadersWidthSizeMode = DataGridViewRowHeadersWidthSizeMode.AutoSizeToFirstHeader

    End Sub

    Private Sub grillaProductos_CellClick(sender As Object, e As DataGridViewCellEventArgs) Handles grillaProductos.CellClick
        Dim idproducto As Integer
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1       
        Dim sql As String
        Dim tablas2 As DataTable = New DataTable


        tablas2.Reset()
        Dim row1 As DataRowView = DirectCast(cmbsucursales.SelectedItem, DataRowView)
        idproducto = grillaProductos.Rows(grillaProductos.CurrentRow.Index).Cells(0).Value

        sql = "select a.CODARTICULO,a.PBRUTO,b.`Nom_Sucursal` from precioproductos a "
        sql = sql & " inner join sucursal b on a.SUCURSAL=b.ID_SUCURSAL where b.id_sucursal=" & row1.Item("id_sucursal") & " and  a.codarticulo=" & idproducto


        tablas2.Load(objconnn.ExecutarMySQL(sql))

      
        objconnn.CerrarMysql()

        grillaprecios.DataSource = tablas2
        grillaprecios.Columns(0).ReadOnly = False
        grillaprecios.RowHeadersWidthSizeMode = DataGridViewRowHeadersWidthSizeMode.AutoSizeToFirstHeader
    End Sub

End Class