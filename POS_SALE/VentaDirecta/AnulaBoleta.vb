Imports System.Drawing.Printing
Imports Microsoft.VisualBasic.Logging
Public Class AnulaBoleta

    Public idpublicovta As Integer
    Public idz As Integer
    Public idcabanula As Integer
    Public idmtoanula As Integer
    Public obsmtoanula As String
    Dim objetotexto As TextBox = New TextBox
    Dim yPos As Integer
    Dim xPos As Integer




    Private Sub btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click
        objetotexto.Text = objetotexto.Text & "1"


    End Sub

    Private Sub btn2_Click(sender As Object, e As EventArgs) Handles btn2.Click
        objetotexto.Text = objetotexto.Text & "2"

    End Sub

    Private Sub btn3_Click(sender As Object, e As EventArgs) Handles btn3.Click
        objetotexto.Text = objetotexto.Text & "3"

    End Sub

    Private Sub btn4_Click(sender As Object, e As EventArgs) Handles btn4.Click
        objetotexto.Text = objetotexto.Text & "4"

    End Sub

    Private Sub btn5_Click(sender As Object, e As EventArgs) Handles btn5.Click
        objetotexto.Text = objetotexto.Text & "5"

    End Sub

    Private Sub btn6_Click(sender As Object, e As EventArgs) Handles btn6.Click
        objetotexto.Text = objetotexto.Text & "6"

    End Sub

    Private Sub btn7_Click(sender As Object, e As EventArgs) Handles btn7.Click
        objetotexto.Text = objetotexto.Text & "7"

    End Sub

    Private Sub btn8_Click(sender As Object, e As EventArgs) Handles btn8.Click
        objetotexto.Text = objetotexto.Text & "8"

    End Sub

    Private Sub btn9_Click(sender As Object, e As EventArgs) Handles btn9.Click
        objetotexto.Text = objetotexto.Text & "9"

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles btn_0.Click
        objetotexto.Text = objetotexto.Text & "0"

    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        objetotexto.ResetText()

    End Sub





    Function ObtieneMotivos()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        tablas.Reset()

        sql = "select id_mtvoanula, desc_mtvoanula   from vta_mtvoanula order by id_mtvoanula"
        tablas.Load(objconnn.ExecutarMySQL(sql))

        cmbmotivos.DataSource = tablas
        cmbmotivos.DisplayMember = "desc_mtvoanula"
        cmbmotivos.ValueMember = "id_mtvoanula"

    End Function


    Private Sub ImprimeBoletasaNulas()

        '   Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        '  Dim sql As String
        ' Dim tablas As DataTable = New DataTable
        ' Dim indice As Integer
        ' indice = Convert.ToString(griddocanula.Rows(griddocanula.CurrentRow.Index).Cells(0).Value)

        ' Sql = "select  id_detvta as ID,b.descripcion as Producto,format(a.cant,1) as Cant,a.precio_unitario as Precio,Format((a.precio_unitario*a.cant),0) as SubTotal  from vta_det a  inner join productos b on a.id_producto=b.codarticulo where a.id_cabvta=" & indice

        ' tablas.Load(objconnn.ExecutarMySQL(sql))

        ' griddetdocanula.DataSource = tablas

        ' objconnn.CerrarMysql()

    End Sub


    Private Sub AnulaDoc_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ObtieneMotivos()
        txtticket.Select()

        txtfecha.Value = FormatDateTime(Now(), DateFormat.ShortDate)
        gridbolnulas.Columns.Add("numboleta", "N° Boleta")
        gridbolnulas.Columns.Add("fecha", "Fecha")
        gridbolnulas.Columns.Add("monto", "Monto")
        gridbolnulas.Columns.Add("motivo", "Motivo")
        gridbolnulas.Columns.Add("rut", "Rut")

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

        Dim tablitas As DataTable = ObtenerBoletasNulas(idz)


        For t = 0 To tablitas.Rows.Count - 1


            e.Graphics.DrawString(" N° boleta Nula: " & tablitas.Rows(t)("num_boleta"), prFont3, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString(" Fecha: " & tablitas.Rows(t)("fecha"), prFont4, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString(" Monto: " & tablitas.Rows(t)("monto"), prFont4, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString(" Motivo: " & tablitas.Rows(t)("motivo"), prFont4, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString(" Rut Cliente: " & tablitas.Rows(t)("rut"), prFont4, Brushes.Black, xPos, yPos)
            yPos = yPos + 24

            e.Graphics.DrawString("Firma Cajera : _____________", prFont4, Brushes.Black, xPos, yPos)
            yPos = yPos + 24

        Next


    End Sub



    Private Sub txtticket_GotFocus(sender As Object, e As EventArgs) Handles txtticket.GotFocus
        txtticket.BackColor = Color.Yellow
        objetotexto = txtticket

    End Sub

    Private Sub txtticket_LostFocus(sender As Object, e As EventArgs) Handles txtticket.LostFocus
        txtticket.BackColor = Color.White

    End Sub

    Private Sub txtmonto_GotFocus(sender As Object, e As EventArgs) Handles txtmonto.GotFocus
        txtmonto.BackColor = Color.Yellow
        objetotexto = txtmonto
    End Sub

    Private Sub txtrut_GotFocus(sender As Object, e As EventArgs) Handles txtrut.GotFocus
        txtrut.BackColor = Color.Yellow

        objetotexto = txtrut


    End Sub

    Private Sub txtrut_LostFocus(sender As Object, e As EventArgs) Handles txtrut.LostFocus
        txtrut.BackColor = Color.White

    End Sub



    Private Sub txtrut_TextChanged(sender As Object, e As EventArgs) Handles txtrut.TextChanged
        If txtrut.Text.Length >= 8 Then

            txtdv.Select()

        End If
    End Sub

    Private Sub btnK_Click(sender As Object, e As EventArgs) Handles btnK.Click
        objetotexto.Text = objetotexto.Text & "K"
    End Sub

    Private Sub txtdv_GotFocus(sender As Object, e As EventArgs) Handles txtdv.GotFocus
        txtdv.BackColor = Color.Yellow
        objetotexto = txtdv
    End Sub

    Private Sub txtdv_LostFocus(sender As Object, e As EventArgs) Handles txtdv.LostFocus
        txtdv.BackColor = Color.White
    End Sub

    Private Sub txtmonto_LostFocus(sender As Object, e As EventArgs) Handles txtmonto.LostFocus
        txtmonto.BackColor = Color.White
    End Sub

    Private Sub txtdv_TextChanged(sender As Object, e As EventArgs) Handles txtdv.TextChanged
        If txtdv.Text.Length >= 1 Then

            validar_rut(txtrut.Text & "-" & txtdv.Text)

        End If
    End Sub
    Public Function validar_rut(rut As String) As Boolean

        Try
            validar_rut = True
            Dim rutLimpio As String
            Dim digitoVerificador As String
            Dim suma As Integer
            Dim contador As Integer = 2

            rutLimpio = rut.Replace(".", "")
            rutLimpio = rutLimpio.Replace("-", "")
            rutLimpio = rutLimpio.Replace(" ", "")
            rutLimpio = rutLimpio.Substring(0, rutLimpio.Length - 1)
            digitoVerificador = rut.Substring(rut.Length - 1, 1)

            Dim i As Integer

            For i = rutLimpio.Length - 1 To 0 Step -1

                If contador > 7 Then
                    contador = 2
                End If

                suma += Integer.Parse(rutLimpio(i).ToString()) * contador
                contador += 1
            Next

            Dim dv As Integer = 11 - (suma Mod 11)
            Dim DigVer As String = dv.ToString()

            If DigVer = "10" Then
                DigVer = "K"
            End If

            If DigVer = "11" Then
                DigVer = "0"
            End If

            If DigVer <> digitoVerificador.ToUpper Then

                MessageBox.Show("Rut Invalido", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Exclamation)
                validar_rut = False
                txtrut.Select()
                txtrut.SelectAll()
            End If

        Catch EX As Exception
            validar_rut = False
        End Try


    End Function

    Private Sub btnGrabar_Click(sender As Object, e As EventArgs) Handles btnGrabar.Click
        If txtticket.Text.Length > 3 And txtmonto.Text.Length > 0 Then
            gridbolnulas.Rows.Add(txtticket.Text, txtfecha.Text, txtmonto.Text, cmbmotivos.Text, txtrut.Text & "-" & txtdv.Text)
            txtticket.ResetText()
            txtmonto.ResetText()
            txtrut.ResetText()
            txtdv.ResetText()
        Else
            lberror.Text = "Debe ingresar numero de boleta"
        End If
    End Sub

    Private Sub btneliminar_Click(sender As Object, e As EventArgs) Handles btneliminar.Click

        For Each row As DataGridViewRow In gridbolnulas.SelectedRows
            gridbolnulas.Rows.Remove(row)
        Next

    End Sub

    Private Sub btnvolver_Click_1(sender As Object, e As EventArgs) Handles btnvolver.Click
        gridbolnulas.Rows.Clear()
        gridbolnulas.Columns.Clear()
        Me.Close()
    End Sub

    Private Sub btnSalvar_Click(sender As Object, e As EventArgs) Handles btnSalvar.Click
        If ValidarGrabacion() = False Then
            Exit Sub
        End If


        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String

        For t = 0 To gridbolnulas.Rows.Count - 1

            sql = "insert into vta_boleta_nula (id_vtaz,num_boleta,fecha,monto,motivo,rut) values(" & idz & "," & gridbolnulas.Item(0, t).Value & ",'" & Format(CDate(gridbolnulas.Item(1, t).Value), "yyyy-MM-dd") & "','" & gridbolnulas.Item(2, t).Value & "','" & gridbolnulas.Item(3, t).Value & "','" & gridbolnulas.Item(4, t).Value & "')"
            objconnn.ExecutarMySQLinsert(sql)
            objconnn.CerrarMysql()
        Next
        imprimeAnulacion()

        Me.Close()
    End Sub
    Public Sub EliminarNulas(idz)
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        sql = "delete from vta_boleta_nula where id_vtaz=" & idz
        objconnn.ExecutarMySQLinsert(sql)
        objconnn.CerrarMysql()



    End Sub
    Private Function ObtenerBoletasNulas(idz) As DataTable

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        tablas.Reset()

        sql = "select num_boleta,fecha,monto,motivo,rut from vta_boleta_nula where id_vtaz=" & idz

        tablas.Load(objconnn.ExecutarMySQL(sql))

        Return tablas

    End Function
    Private Function ValidarGrabacion() As Boolean
        If gridbolnulas.Rows.Count < 1 Then

            lberror.Text = "No ha ingresado ninguna boleta"

            Return False
        Else

            Return True

        End If


    End Function


End Class