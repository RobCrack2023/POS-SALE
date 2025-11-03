Public Class pedlocfecha

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Me.Close()
    End Sub
    Private Sub btncreareserva_Click(sender As Object, e As EventArgs) Handles btncreareserva.Click
        fechapedidopublica = txtfecha.Text
        'PedidoLocales.Show()
        Me.Close()
    End Sub

    Private Sub pedlocfecha_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable()

        sql = "select id_turno,nombre from turno"
        tablas = objconnn.ExecutarMySQLTablas(sql)
        cmbturno.DataSource = tablas
        cmbturno.DisplayMember = "nombre"
        cmbturno.ValueMember = "id_turno"

    End Sub
End Class