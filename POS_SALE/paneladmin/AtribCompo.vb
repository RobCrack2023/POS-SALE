Public Class AtribCompo
    Public estado As Integer = 0
    Private Sub AtribCompo_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        txtdias.ResetText()
        txthrsdin.ResetText()
        txthrsfija.ResetText()
        txtnomseccion.ResetText()

    End Sub

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        estado = 0
        Me.Close()
    End Sub

    Private Sub btngrabar_Click(sender As Object, e As EventArgs) Handles btngrabar.Click
        estado = 1
        Me.Close()
    End Sub
End Class