Public Class Composicion

    Private Sub Composicion_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        grillaProductos.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells
        grillacompo.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells
        Cargadpto()
        CargaComposicion()
        CargaCompo()
    End Sub

    Private Sub Cargadpto()
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select numdpto, descripcion  from pos_std.dpto order by descripcion"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        cmbdpto.DataSource = tablas
        cmbdpto.DisplayMember = "descripcion"
        cmbdpto.ValueMember = "numdpto"

    End Sub
    Private Sub CargaComposicion()
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select idcomposicion , descripcion  from pos_std.composicion order by descripcion"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        cmbcompo.DataSource = tablas
        cmbcompo.DisplayMember = "descripcion"
        cmbcompo.ValueMember = "idcomposicion"

    End Sub

    Private Sub cmbdpto_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbdpto.SelectedIndexChanged
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
    Private Sub btnbuscar_Click(sender As Object, e As EventArgs) Handles btnbuscar.Click
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR

        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        Dim row1 As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        Dim row2 As DataRowView = DirectCast(cmbseccion.SelectedItem, DataRowView)
        sql = "SELECT a.CodArticulo as ID, ucase(a.Descripcion) as DESCRIPCION "
        sql = sql & " FROM pos_std.productos a "
        sql = sql & " where a.descatalogado='F' and a.dpto=" & row1.Item("numdpto") & " and a.seccion=" & row2.Item("numseccion") & " order by descripcion"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)


        grillaProductos.DataSource = tablas
        grillaProductos.RowHeadersWidthSizeMode = DataGridViewRowHeadersWidthSizeMode.AutoSizeToFirstHeader


    End Sub

    Private Sub btngrabar_Click(sender As Object, e As EventArgs) Handles btngrabar.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String

        Try
            If grillaProductos.SelectedRows.Count > 0 Then

                'AtribCompo.ShowDialog()

                'If AtribCompo.estado = 0 Then
                '    Exit Sub

                'End If

                For Each row As DataGridViewRow In grillaProductos.SelectedRows()

                    Dim idunico As Object = row.Cells(0).Value
                    Dim descrip As Object = row.Cells(1).Value
                    sql = "insert into pos_std.compoprod (id_producto,idcompro,descrip) values(" & idunico & "," & cmbcompo.SelectedValue & ",'" & descrip.ToString & "-" & cmbcompo.Text & "')"
                    objconnn.executarmysqlinsert(sql)
                Next
                MsgBox("Fue Creada Correctamente la Composicion")
                CargaCompo()
            Else
                MsgBox("Debe seleccionar Un Producto")
                Exit Sub
            End If
            Catch ex As MySql.Data.MySqlClient.MySqlException

            MsgBox("Se Produjo un error de actualización" & ex.Message)
            Exit Sub
        End Try
    End Sub

    Private Sub CargaCompo()
        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR

        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select idcompoprod as ID,descrip from pos_std.compoprod order by descrip"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        grillacompo.DataSource = tablas




    End Sub

    Private Sub btnborrar_Click(sender As Object, e As EventArgs) Handles btnborrar.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String

        Try

            If grillacompo.SelectedRows.Count > 0 Then
                For Each row As DataGridViewRow In grillacompo.SelectedRows()

                    Dim idunico As Object = row.Cells(0).Value
                    sql = "delete from  pos_std.compoprod where idcompoprod=" & idunico
                    objconnn.executarmysqlinsert(sql)

                Next
                MsgBox("Se Eliminaron Correctamente los items")
                CargaCompo()
            Else
                MsgBox("Seleccione algun Items")
                Exit Sub
            End If

        Catch ex As MySql.Data.MySqlClient.MySqlException

            MsgBox("Se Produjo un error de actualización" & ex.Message)
            Exit Sub
        End Try
    End Sub

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Principal.Show()
        Me.Close()
    End Sub
End Class