Imports System.Drawing.Printing
Public Class AnulaDoc

    Public idpublicovta As Integer
    Public idz As Integer
    Public idcabanula As Integer
    Public idmtoanula As Integer
    Public obsmtoanula As String
    Dim objetotexto As TextBox = New TextBox
    Dim yPos As Integer
    Dim xPos As Integer

    Private Sub btnvolver_Click(sender As Object, e As EventArgs) Handles btnvolver.Click
        Me.Close()
    End Sub

    Private Sub btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click
        objetotexto.Text = objetotexto.Text & "1"
        txtticket.Text = objetotexto.Text

    End Sub

    Private Sub btn2_Click(sender As Object, e As EventArgs) Handles btn2.Click
        objetotexto.Text = objetotexto.Text & "2"
        txtticket.Text = objetotexto.Text
    End Sub

    Private Sub btn3_Click(sender As Object, e As EventArgs) Handles btn3.Click
        objetotexto.Text = objetotexto.Text & "3"
        txtticket.Text = objetotexto.Text
    End Sub

    Private Sub btn4_Click(sender As Object, e As EventArgs) Handles btn4.Click
        objetotexto.Text = objetotexto.Text & "4"
        txtticket.Text = objetotexto.Text
    End Sub

    Private Sub btn5_Click(sender As Object, e As EventArgs) Handles btn5.Click
        objetotexto.Text = objetotexto.Text & "5"
        txtticket.Text = objetotexto.Text
    End Sub

    Private Sub btn6_Click(sender As Object, e As EventArgs) Handles btn6.Click
        objetotexto.Text = objetotexto.Text & "6"
        txtticket.Text = objetotexto.Text
    End Sub

    Private Sub btn7_Click(sender As Object, e As EventArgs) Handles btn7.Click
        objetotexto.Text = objetotexto.Text & "7"
        txtticket.Text = objetotexto.Text
    End Sub

    Private Sub btn8_Click(sender As Object, e As EventArgs) Handles btn8.Click
        objetotexto.Text = objetotexto.Text & "8"
        txtticket.Text = objetotexto.Text
    End Sub

    Private Sub btn9_Click(sender As Object, e As EventArgs) Handles btn9.Click
        objetotexto.Text = objetotexto.Text & "9"
        txtticket.Text = objetotexto.Text
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        objetotexto.Text = objetotexto.Text & "0"
        txtticket.Text = objetotexto.Text
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        objetotexto.ResetText()
        txtticket.ResetText()
        griddocanula.DataSource = Nothing
        griddetdocanula.DataSource = Nothing

    End Sub

    Private Sub txtticket_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtticket.KeyPress
        If Char.IsDigit(e.KeyChar) Then
            e.Handled = False
        ElseIf Char.IsControl(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub

    Private Sub btnbuscar_Click(sender As Object, e As EventArgs) Handles btnbuscar.Click
        BuscarTicket()
    End Sub

    Function BuscarTicket()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim estado As Integer
        tablas.Reset()

        If checknulos.Checked = True Then
            estado = 3
        Else
            estado = 2
        End If

        If txtticket.Text.Length > 5 Then

            sql = "select id_vencab as NumTicket,fecha,hora,total from vta_cab where estado=" & estado & " and id_vencab=" & txtticket.Text.Trim()
        Else
            sql = "select id_vencab as NumTicket,fecha,hora,total from vta_cab where estado=" & estado & " and date(fecha)='" & Format(CDate(txtfecha.Text), "yyyy-MM-dd") & "'"

        End If



        tablas.Load(objconnn.ExecutarMySQL(sql))

        griddocanula.DataSource = tablas

        objconnn.CerrarMysql()

        griddetdocanula.DataSource = Nothing

    End Function


    Private Sub griddocanula_Click(sender As Object, e As EventArgs) Handles griddocanula.Click
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim indice As Integer
        indice = Convert.ToString(griddocanula.Rows(griddocanula.CurrentRow.Index).Cells(0).Value)

        sql = "select  id_detvta as ID,b.descripcion as Producto,format(a.cant,1) as Cant,a.precio_unitario as Precio,Format((a.precio_unitario*a.cant),0) as SubTotal  from vta_det a  inner join productos b on a.id_producto=b.codarticulo where a.id_cabvta=" & indice

        tablas.Load(objconnn.ExecutarMySQL(sql))

        griddetdocanula.DataSource = tablas

        objconnn.CerrarMysql()

    End Sub

    Private Sub btneliticket_Click(sender As Object, e As EventArgs) Handles btneliticket.Click
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim indice As Integer
        Dim stock As Stock = New Stock

        indice = Convert.ToString(griddocanula.Rows(griddocanula.CurrentRow.Index).Cells(0).Value)
        If MsgBox("Desea Anular El ticket n° : " & indice, MsgBoxStyle.YesNo) = MsgBoxResult.No Then

            Exit Sub
        End If

        MotivosAnula.ShowDialog()

        sql = "update vta_cab set estado=3,id_mtvoanula=" & idmtoanula & ",obsmtvoanula='" & obsmtoanula & "' where id_vencab=" & indice
        objconnn.ExecutarMySQLinsert(sql)
        idcabanula = indice
        imprimeAnulacion()

        stock.RebajaStockVenta(indice)

        BuscarTicket()

    End Sub

    Private Sub AnulaDoc_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        txtticket.ResetText()
        txtfecha.Value = FormatDateTime(Now(), DateFormat.ShortDate)

    End Sub
    Function ObtieneImpresora() As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        sql = "select idimpticket from config"
        tablas.Load(objconnn.ExecutarMySQL(sql))

        Return tablas.Rows(0)("idimpticket")
    End Function

    Sub imprimeAnulacion()

        Dim printDoc3 As New PrintDocument

        printDoc3.PrinterSettings.PrinterName = ObtieneImpresora()
        printDoc3.PrintController = New System.Drawing.Printing.StandardPrintController()
        AddHandler printDoc3.PrintPage, AddressOf ImpAnulacion

        printDoc3.Print()
        printDoc3 = Nothing
        yPos = 0
    End Sub
    Sub ImpAnulacion(ByVal sender As Object, ByVal e As PrintPageEventArgs)

        Dim prFont As New Font("Tahoma", 8, FontStyle.Regular)
        Dim prFont1 As New Font("Tahoma", 12, FontStyle.Regular)
        Dim prFont2 As New Font("Tahoma", 8, FontStyle.Bold)
        Dim prFont3 As New Font("Tahoma", 10, FontStyle.Bold)
        Dim prFont4 As New Font("Tahoma", 10, FontStyle.Regular)

        Dim fecha, hora As String

        fecha = Format(Now(), "dd-MM-yyyy")
        hora = Format(Now(), "HH:mm:ss")

        e.Graphics.DrawString(" Ticket Anulado N° " & idcabanula, prFont3, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString(" Fecha:" & fecha & "  Hora" & hora, prFont4, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString(" Usuario: " & nombreusr, prFont4, Brushes.Black, xPos, yPos)
        yPos = yPos + 24


    End Sub
End Class