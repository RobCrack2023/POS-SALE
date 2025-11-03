Imports System.Net
Imports System.Net.NetworkInformation
Public Class sinred
    Dim ip As IPAddress = IPAddress.Parse("192.168.1.171")
    Dim ping As Ping = New Ping
    Private Sub sinred_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        probarred()
    End Sub
    Private Sub probarred()
        Dim pr As PingReply = ping.Send(ip)
        While (pr.Status > 0)
            Me.Refresh()
            PictureBox1.Visible = False
        End While
        PictureBox2.Visible = True
        PictureBox1.Visible = False
    End Sub

End Class