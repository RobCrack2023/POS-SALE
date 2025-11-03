Public Class MotivosAnula


    Public idpublicovta As Integer
    Public idz As Integer

    Function ObtieneMotivos()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        tablas.Reset()

        sql = "select id_mtvoanula, desc_mtvoanula   from vta_mtvoanula order by id_mtvoanula"
        tablas = objconnn.ExecutarMySQLTablas(sql)

        cmbmotivos.DataSource = tablas
        cmbmotivos.DisplayMember = "desc_mtvoanula"
        cmbmotivos.ValueMember = "id_mtvoanula"

    End Function

    Private Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click

        AnulaBoleta.idmtoanula = cmbmotivos.SelectedValue
        AnulaBoleta.obsmtoanula = txtobs.Text
        Me.Close()

    End Sub

    Private Sub MotivosAnula_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ObtieneMotivos()
    End Sub
End Class