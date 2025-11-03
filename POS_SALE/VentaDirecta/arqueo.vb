Public Class arqueo
    Dim digito As String
    Public idz As Integer
    Public idcab As Integer
    Public estado As Boolean
    Public objeto As TextBox

    Private Sub arqueo_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.Show()
        'Application.DoEvents()
        txtnumini.Select()
        txtefectivo.Text = 0
        txttdebito.Text = 0
        txttcredito.Text = 0
        txtsodexo.Text = 0
        txtamipass.Text = 0
        txtrestaurant.Text = 0

    End Sub

    Private Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        estado = False
        txtnumini.ResetText()
        txtnumfin.ResetText()
        AnulaBoleta.EliminarNulas(idz)

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

        txtnumini.ResetText()
        txtnumfin.ResetText()
        txtefectivo.ResetText()
        txttdebito.ResetText()
        txttcredito.ResetText()
        txtamipass.ResetText()
        txtrestaurant.ResetText()
        txtsodexo.ResetText()

        digito = Nothing
    End Sub

    Private Sub btningefect_Click(sender As Object, e As EventArgs) Handles btningefect.Click

        If ValidaIngreso() = False Then
            Exit Sub
        End If

        GrabarBoleta()
        GrabaArqueo()

        estado = True
    End Sub

    Sub GrabaArqueo()


        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        sql = "insert into vta_arqueo (id_vtaz,efectivo,tdebito,tcredito,sodexo,amipass,trestaurant) values (" & idz & "," & Val(txtefectivo.Text) & "," & Val(txttdebito.Text) & "," & Val(txttcredito.Text) & "," & Val(txtsodexo.Text) & "," & Val(txtamipass.Text) & "," & Val(txtrestaurant.Text) & ")"

        objconnn.ExecutarMySQLInsert(sql)


    End Sub

    Function ValidaIngreso()

        lberror.ResetText()

        If txtnumini.TextLength < 1 Then

            lberror.Text = "Debe ingresar numero inicial "
            Return False

        End If

        If txtnumfin.TextLength < 1 Then

            lberror.Text = "Debe ingresar numero final "
            Return False

        End If
        If Val(txtnumfin.Text) < Val(txtnumini.Text) Then

            lberror.Text = "El n° de boleta final debe ser mayor que inicio"
            Return False

        End If
        If Val(txtamipass.Text) = 0 And Val(txtefectivo.Text) = 0 And Val(txtsodexo.Text) = 0 And Val(txttcredito.Text) = 0 And Val(txttdebito.Text) = 0 And Val(txtrestaurant.Text) = 0 Then
            lberror.Text = "Debe ingresar los valores de tipos de pagos"
            Return False
        End If


        Return True

    End Function


    Sub GrabarBoleta()

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable



        sql = "insert into vta_boleta (id_vtaz,id_vtacab,numini,numfin)  values ( " & idz & "," & idcab & "," & Val(txtnumini.Text) & "," & Val(txtnumfin.Text) & " )"

        objconnn.ExecutarMySQLInsert(sql)
        txtnumfin.ResetText()
        digito = Nothing
        Me.Close()

    End Sub


    Private Sub txtnumini_GotFocus(sender As Object, e As EventArgs) Handles txtnumini.GotFocus
        objeto = txtnumini
    End Sub

    Private Sub txtnumfin_GotFocus(sender As Object, e As EventArgs) Handles txtnumfin.GotFocus
        objeto = txtnumfin
    End Sub

    Private Sub txtefectivo_GotFocus(sender As Object, e As EventArgs) Handles txtefectivo.GotFocus
        objeto = txtefectivo
    End Sub

    Private Sub txttdebito_GotFocus(sender As Object, e As EventArgs) Handles txttdebito.GotFocus
        objeto = txttdebito
    End Sub

    Private Sub txttcredito_GotFocus(sender As Object, e As EventArgs) Handles txttcredito.GotFocus
        objeto = txttcredito
    End Sub

    Private Sub txtsodexo_GotFocus(sender As Object, e As EventArgs) Handles txtsodexo.GotFocus
        objeto = txtsodexo
    End Sub

    Private Sub txtamipass_GotFocus(sender As Object, e As EventArgs) Handles txtamipass.GotFocus
        objeto = txtamipass
    End Sub

    Private Sub txtrestaurant_GotFocus(sender As Object, e As EventArgs) Handles txtrestaurant.GotFocus
        objeto = txtrestaurant
    End Sub

End Class