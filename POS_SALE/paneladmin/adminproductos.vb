Public Class adminproductos

    Private Sub adminproductos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargaCategorias()
        Cargadpto()

    End Sub

    Sub CargaCategorias()

        Dim tablas As DataTable = New DataTable
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String


        sql = "select nombre,nivel1  from [strindbe].[dbo].[ART_DB]  where  nivel1 <16  and nivel2=0  and imputable=0  order by nivel1"

        tablas.Load(objconnn.executarsqlmanager(sql))

        cmbcatmanager.DataSource = tablas
        cmbcatmanager.DisplayMember = "nombre"
        cmbcatmanager.ValueMember = "nivel1"


    End Sub
    Sub CargaSubCategorias(idcat As Integer)

        Dim tablas As DataTable = New DataTable
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String


        sql = "select nombre,nivel2  from [strindbe].[dbo].[ART_DB]  where  nivel1=" & idcat & "  and nivel2<>0  and imputable=0  order by nivel2"

        tablas.Load(objconnn.executarsqlmanager(sql))

        cmbsubcat.DataSource = tablas
        cmbsubcat.DisplayMember = "nombre"
        cmbsubcat.ValueMember = "nivel2"


    End Sub
    Sub CargaProductos(idcat As Integer, idsubcat As Integer)

        Dim tablas As DataTable = New DataTable
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String


        sql = "select nombre,nreguist,codigo,precvta  from [strindbe].[dbo].[ART_DB]  where  nivel1=" & idcat & "  and nivel2=" & idsubcat & "  and imputable=1 and  eliminado=0 order by nombre"

        tablas.Load(objconnn.executarsqlmanager(sql))
        grillaprodmanager.DataSource = tablas


    End Sub

    Private Sub cmbcatmanager_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbcatmanager.SelectedIndexChanged
        Dim row1 As DataRowView = DirectCast(cmbcatmanager.SelectedItem, DataRowView)
        CargaSubCategorias(row1.Item("nivel1"))
    End Sub

    Private Sub cmbsubcat_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbsubcat.SelectedIndexChanged
        Dim row1 As DataRowView = DirectCast(cmbcatmanager.SelectedItem, DataRowView)
        Dim row2 As DataRowView = DirectCast(cmbsubcat.SelectedItem, DataRowView)

        CargaProductos(row1.Item("nivel1"), row2.Item("nivel2"))
    End Sub
    Sub CargaProdPOS()

        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR

        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        Dim row1 As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        Dim row2 As DataRowView = DirectCast(cmbseccion.SelectedItem, DataRowView)
        sql = "SELECT a.codarticulo, a.Descripcion as Producto,a.refproveedor"
        sql = sql & " FROM pos_std.productos a "
        sql = sql & " inner join pos_std.dpto b on a.dpto=b.numdpto"
        sql = sql & " inner join pos_std.secciones c on a.seccion=c.numseccion"
        sql = sql & " where a.descatalogado='F' and a.dpto=" & row1.Item("numdpto") & " and a.seccion=" & row2.Item("numseccion") & " order by a.descripcion"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)

        grillaprodPOS.DataSource = tablas

        grillaprodPOS.Columns(0).ReadOnly = True
        grillaprodPOS.RowHeadersWidthSizeMode = DataGridViewRowHeadersWidthSizeMode.AutoSizeToFirstHeader
        grillaprodPOS.Columns(1).ReadOnly = True
        grillaprodPOS.Columns(2).ReadOnly = False
    End Sub

    Private Sub Cargadpto()
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select numdpto, descripcion  from pos_std.dpto where activo=1 order by descripcion"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        cmbdpto.DataSource = tablas
        cmbdpto.DisplayMember = "descripcion"
        cmbdpto.ValueMember = "numdpto"

    End Sub
    Sub CargaSeccion()

        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable
        Dim row As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        sql = "select numseccion, descripcion  from pos_std.secciones where numdpto=" & row.Item("numdpto") & " order by descripcion"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        cmbseccion.DataSource = tablas
        cmbseccion.DisplayMember = "descripcion"
        cmbseccion.ValueMember = "numseccion"


    End Sub

    Private Sub cmbdpto_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbdpto.SelectedIndexChanged
        CargaSeccion()

    End Sub

    Private Sub cmbseccion_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbseccion.SelectedIndexChanged
        CargaProdPOS()
    End Sub

    Private Sub btnactauliza_Click(sender As Object, e As EventArgs) Handles btnactauliza.Click

        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        For Each row As DataGridViewRow In grillaprodPOS.Rows

            sql = "update pos_std.productos set refproveedor=" & row.Cells(2).Value & " where codarticulo= " & row.Cells(0).Value

            objconnn.executarmysql(sql)
        Next
    End Sub

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Principal.Show()
        Me.Close()

    End Sub
End Class