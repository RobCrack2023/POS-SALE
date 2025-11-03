Imports System.Net.Mail.MailMessage
Imports System.IO
Imports System.Net.NetworkInformation


Public Class Asincronica

    Dim sql As String
    Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
    Dim tablas As DataTable = New DataTable()


    Public Sub EnviaCorreo(num_com As String, detalle As String)
        Dim correo As New System.Net.Mail.SmtpClient
        Dim Message As New System.Net.Mail.MailMessage()


        correo.Credentials = New System.Net.NetworkCredential("test@strindberg.cl", "test.2014*str")
        correo.Host = "mail.strindberg.cl"
        correo.Port = "25"
        correo.EnableSsl = False
        Message.From = New System.Net.Mail.MailAddress("test@strindberg.cl", "Apumanque", System.Text.Encoding.UTF8)
        Message.Body = "Nombre Cliente : " & detalle
        Message.Subject = "Comanda Apumanque Enviada N° " & num_com
        Message.To.Add("rrojas@strindberg.cl")

        Try
            correo.Send(Message)
        Catch ex As System.Net.Mail.SmtpException
            MessageBox.Show(ex.ToString, "Error!", MessageBoxButtons.OK)

        End Try


    End Sub

    Function EstadoConn() As Boolean

        Dim p As New Ping

        Try
            Dim Rst As PingReply = p.Send("www.emol.com")

            Console.WriteLine("Tiempo de Respuesta:" & Rst.RoundtripTime & " Milisegundos" & vbCrLf)
            If Rst.RoundtripTime > 0 Then
                Return True
            ElseIf Rst.RoundtripTime < 1 Then
                Return False

            End If



        Catch ex As Exception

            Return False

        End Try




    End Function







End Class
