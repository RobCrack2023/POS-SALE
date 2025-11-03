Public Class Auditoria

    Dim digito As String
    Public idz As Integer
    Public idcab As Integer
    Public estado As Boolean
    Public objeto As TextBox

    Private Sub arqueo_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.Show()
      
    End Sub

    Private Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        estado = False
      
        Me.Close()
    End Sub

    Private Sub btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click

        objeto.Text = objeto.Text & "1"

    End Sub

    Private Sub btn2_Click(sender As Object, e As EventArgs) Handles btn2.Click
        objeto.Text = objeto.Text & "2"
    End Sub

    Private Sub btn3_Click(sender As Object, e As EventArgs) Handles btn3.Click
        objeto.Text = objeto.Text & "3"
    End Sub

    Private Sub btn4_Click(sender As Object, e As EventArgs) Handles btn4.Click
        objeto.Text = objeto.Text & "4"
    End Sub

    Private Sub btn5_Click(sender As Object, e As EventArgs) Handles btn5.Click
        objeto.Text = objeto.Text & "5"
    End Sub

    Private Sub btn6_Click(sender As Object, e As EventArgs) Handles btn6.Click
        objeto.Text = objeto.Text & "6"
    End Sub

    Private Sub btn7_Click(sender As Object, e As EventArgs) Handles btn7.Click
        objeto.Text = objeto.Text & "7"
    End Sub

    Private Sub btn8_Click(sender As Object, e As EventArgs) Handles btn8.Click
        objeto.Text = objeto.Text & "8"
    End Sub

    Private Sub btn9_Click(sender As Object, e As EventArgs) Handles btn9.Click
        objeto.Text = objeto.Text & "9"
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles btn0.Click
        objeto.Text = objeto.Text & "0"
    End Sub

    Private Sub btn00_Click(sender As Object, e As EventArgs) Handles btn00.Click
        objeto.Text = objeto.Text & "00"
    End Sub

    Private Sub btnborrar_Click(sender As Object, e As EventArgs) Handles btnborrar.Click
      
        digito = Nothing
    End Sub

    Private Sub btningefect_Click(sender As Object, e As EventArgs) Handles btningefect.Click
        GrabarBoleta()
        estado = True
    End Sub

    Sub GrabarBoleta()

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        lberror.ResetText()

      
        '' sql = "insert into vta_boleta (id_vtaz,id_vtacab,numini,numfin)  values ( " & idz & "," & idcab & "," & Val(txtnumini.Text) & "," & Val(txtnumfin.Text) & " )"

        objconnn.ExecutarMySQLinsert(sql)

        digito = Nothing
        Me.Close()

    End Sub

    Private Sub txtfecha_GotFocus(sender As Object, e As EventArgs) Handles txtfecha.GotFocus


    End Sub

End Class