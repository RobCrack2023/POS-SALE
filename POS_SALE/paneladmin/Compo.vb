Public Class compo
    Public idarticulos As Integer
    Private Sub compo_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        btngrabar.BackColor = Color.White
        CargaCompo()
        cmbcompo.Select()
        Me.BackColor = Color.White
    End Sub

    Private Sub CargaCompo()

        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable
        Dim componuevo As DataRow = tablas.NewRow
        sql = "select idcomposicion"
        sql = sql & ",descripcion "
        sql = sql & " from pos_std.composicion a "
        sql = sql & " inner join pos_std.compoprod b on a.idcomposicion=b.idcompro "
        sql = sql & " where b.id_producto=" & idarticulos
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)

        componuevo("idcomposicion") = "0"
        componuevo("descripcion") = "Selecione"

        tablas.Rows.InsertAt(componuevo, 0)

        cmbcompo.DataSource = tablas
        cmbcompo.DisplayMember = "descripcion"
        cmbcompo.ValueMember = "idcomposicion"

    End Sub

    Private Sub btngrabar_Click(sender As Object, e As EventArgs) Handles btngrabar.Click

        If cmbcompo.SelectedIndex = 0 Then
            Me.BackColor = Color.Red
            Exit Sub
        End If
        Me.Close()
    End Sub

    Private Sub btngrabar_GotFocus(sender As Object, e As EventArgs) Handles btngrabar.GotFocus
        btngrabar.BackColor = Color.Coral
    End Sub

    Private Sub btngrabar_LostFocus(sender As Object, e As EventArgs) Handles btngrabar.LostFocus
        btngrabar.BackColor = Color.White
    End Sub

    Private Sub cmbcompo_GotFocus(sender As Object, e As EventArgs) Handles cmbcompo.GotFocus
        Me.BackColor = Color.White
    End Sub

End Class