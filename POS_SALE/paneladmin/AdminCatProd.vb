Public Class AdminCatProd

    Private Sub AdminCatProd_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Cargadpto()
        CargaCategorias()

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
    Private Sub CargaCategorias()
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select id_categoria,desc_cat  from vta_categoria order by desc_cat"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)

        lstcat.DataSource = tablas
        lstcat.DisplayMember = "desc_cat"
        lstcat.ValueMember = "id_categoria"
       
    End Sub

    Private Sub CargaProdVenta()
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim tablas2 As DataTable = New DataTable



        sql = "SELECT b.id_prodmaestro as ID,b.desc_prodmaestro as DESCRIP FROM vta_prod a "
        sql = sql & "INNER JOIN vta_prodagrmaestro b ON a.id_prodmaestro=b.id_prodmaestro "
        sql = sql & "WHERE a.id_catventa = " & lstcat.SelectedValue

        tablas.Load(objconnn.executarmysql(sql))


        sql = "SELECT c.codarticulo as ID,c.descripcion as DESCRIP FROM vta_prod a "
        sql = sql & "INNER JOIN productos c ON c.CODARTICULO=a.id_producto "
        sql = sql & "WHERE a.id_catventa = " & lstcat.SelectedValue

        tablas2.Load(objconnn.executarmysql(sql))
        tablas.Merge(tablas2)
        lstprod.DataSource = tablas
        lstprod.DisplayMember = "DESCRIP"
        lstprod.ValueMember = "ID"


    End Sub
    Private Sub CargaProdAgrupados()
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim tablas2 As DataTable = New DataTable



        sql = "SELECT d.codarticulo as ID,d.descripcion as DESCRIP FROM vta_prod a "
        sql = sql & "INNER JOIN vta_prodagrmaestro b ON a.id_prodmaestro=b.id_prodmaestro "
        sql = sql & "INNER JOIN vta_agrprod c ON c.id_prodmaestro=b.id_prodmaestro "
        sql = sql & "INNER JOIN productos d ON d.codarticulo=c.id_producto "
        sql = sql & "WHERE  b.id_prodmaestro= " & lstprod.SelectedValue

        tablas.Load(objconnn.executarmysql(sql))


        lstprodagr.DataSource = tablas
        lstprodagr.DisplayMember = "DESCRIP"
        lstprodagr.ValueMember = "ID"


    End Sub

    Private Sub cmbdpto_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbdpto.SelectedIndexChanged
        CargaSeccion()
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
    Sub CargaProdPOS()

        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR

        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        Dim row1 As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        Dim row2 As DataRowView = DirectCast(cmbseccion.SelectedItem, DataRowView)
        sql = "SELECT a.codarticulo, a.Descripcion as Producto"
        sql = sql & " FROM pos_std.productos a "
        sql = sql & " inner join pos_std.dpto b on a.dpto=b.numdpto"
        sql = sql & " inner join pos_std.secciones c on a.seccion=c.numseccion"
        sql = sql & " where a.descatalogado='F' and a.dpto=" & row1.Item("numdpto") & " and a.seccion=" & row2.Item("numseccion") & " order by a.descripcion"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)

        grillapprodpos.DataSource = tablas
        grillapprodpos.Columns(0).ReadOnly = True
        grillapprodpos.RowHeadersWidthSizeMode = DataGridViewRowHeadersWidthSizeMode.AutoSizeToFirstHeader


    End Sub

    Private Sub cmbseccion_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbseccion.SelectedIndexChanged
        CargaProdPOS()
    End Sub

    Private Sub btncreacat_Click(sender As Object, e As EventArgs) Handles btncreacat.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim cat As String

        cat = InputBox("Ingresa Nombre Categoria")

        If cat.Length < 2 Then

            cat = InputBox("Ingresa Nombre Categoria")

        End If

        sql = "insert into vta_categoria (desc_cat) values('" & Trim(cat) & "')"

            objconnn.executarmysql(sql)
        MsgBox("La categoria Fue creada con exito")
        CargaCategorias()

    End Sub

    Private Sub btnelicat_Click(sender As Object, e As EventArgs) Handles btnelicat.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR


        If lstcat.SelectedValue > 0 Then
            sql = "delete from vta_categoria where id_categoria=" & lstcat.SelectedValue
            objconnn.executarmysql(sql)
            CargaCategorias()
        End If
    End Sub

    Private Sub btnAgregar_Click(sender As Object, e As EventArgs) Handles btnAgregar.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim est As Integer



        If lstprod.SelectedValue > 0 And lstprod.SelectedValue > 100000 Then


            For t = 0 To grillapprodpos.Rows.Count - 1


                If grillapprodpos.Rows(t).Selected = True Then

                    est = grillapprodpos.Rows(t).Cells(0).Value

                    sql = "insert into vta_agrprod (id_prodmaestro,id_producto) values(" & lstprod.SelectedValue & "," & est & ")"
                    objconnn.executarmysql(sql)
                End If

            Next

            CargaProdAgrupados()

        End If

    End Sub

    Private Sub btncreapordagr_Click(sender As Object, e As EventArgs) Handles btncreapordagr.Click


        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim cat As String
        Dim est As Integer
        Dim fijo As Integer
        Dim tablas As DataTable = New DataTable


        If lstcat.SelectedValue > 0 Then


            fijo = MsgBox("Es un Producto Agrupado?", MsgBoxStyle.YesNo)

            If fijo = 6 Then
                cat = InputBox("Ingresa el Nombre del Producto")

                sql = "insert into vta_prodagrmaestro (desc_prodmaestro) values('" & cat & "')"
                objconnn.executarmysql(sql)

                sql = "insert into  vta_prod (id_catventa,id_prodmaestro) values(" & lstcat.SelectedValue & ",(select id_prodmaestro from vta_prodagrmaestro where desc_prodmaestro='" & cat & "'))"
                objconnn.executarmysql(sql)
                MsgBox("Se creo el producto agrupado exitosamente")
                CargaProdVenta()

            Else
                For t = 0 To grillapprodpos.Rows.Count - 1

                   
                        If grillapprodpos.Rows(t).Selected = True Then

                            est = grillapprodpos.Rows(t).Cells(0).Value

                            sql = "insert into vta_prod (id_producto,id_catventa,id_activo) values(" & est & "," & lstcat.SelectedValue & ",1)"
                            objconnn.executarmysql(sql)
                        End If
                Next

            End If

            CargaProdVenta()
        Else
            MsgBox("Debe Seleccionar una Categoria")

        End If


    End Sub

    Private Sub btnEditar_Click(sender As Object, e As EventArgs) Handles btnEliprod.Click

        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR


        sql = "delete  from vta_agrprod where id_prodmaestro=" & lstprod.SelectedValue & " and id_producto=" & lstprodagr.SelectedValue

        objconnn.executarmysqlinsert(sql)

        CargaProdAgrupados()
    End Sub

    Private Sub lstcat_DoubleClick(sender As Object, e As EventArgs) Handles lstcat.DoubleClick
        CargaProdVenta()

        lstprodagr.DataSource = Nothing
    End Sub

    Private Sub lstprod_DoubleClick(sender As Object, e As EventArgs) Handles lstprod.DoubleClick
        CargaProdAgrupados()

    End Sub

    Private Sub btneliprodagr_Click(sender As Object, e As EventArgs) Handles btneliprodagr.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR

        If lstprod.SelectedValue > 0 Then
            sql = " delete from vta_prod where id_producto=" & lstprod.SelectedValue
            objconnn.executarmysqlinsert(sql)
            sql = " delete from vta_prod where id_prodmaestro=" & lstprod.SelectedValue
            objconnn.executarmysqlinsert(sql)
        End If
        CargaProdVenta()
    End Sub

    Private Sub lstprod_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lstprod.SelectedIndexChanged

    End Sub

    Private Sub btnclose_Click(sender As Object, e As EventArgs) Handles btnclose.Click
        Principal.Show()
        Me.Close()
    End Sub
End Class