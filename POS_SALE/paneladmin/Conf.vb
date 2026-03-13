Public Class Configuracion

    Private Sub Configuracion_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargarImpresoras()
        CargarApiUrl()
    End Sub

    Private Sub CargarImpresoras()
        Dim dt1 As New DataTable : dt1.Columns.Add("impresora")
        Dim dt2 As New DataTable : dt2.Columns.Add("impresora")
        For Each nombre As String In System.Drawing.Printing.PrinterSettings.InstalledPrinters
            dt1.Rows.Add(nombre)
            dt2.Rows.Add(nombre)
        Next
        cmbimpresora1.DataSource = dt1
        cmbimpresora1.DisplayMember = "impresora"
        cmbimpresora2.DataSource = dt2
        cmbimpresora2.DisplayMember = "impresora"

        ' Mostrar impresoras guardadas actualmente
        Dim objconnn As New DBCONECTAR1
        Dim tablas As DataTable = objconnn.ExecutarMySQLTablas("SELECT idimpticket, idimprpt FROM config LIMIT 1")
        If tablas.Rows.Count = 0 Then Exit Sub
        Dim impTicket As String = If(IsDBNull(tablas.Rows(0)("idimpticket")), "", tablas.Rows(0)("idimpticket").ToString())
        Dim impRpt As String = If(IsDBNull(tablas.Rows(0)("idimprpt")), "", tablas.Rows(0)("idimprpt").ToString())
        lbimpticket.Text = If(impTicket <> "", impTicket, "(sin configurar)")
        lbimprpt.Text = If(impRpt <> "", impRpt, "(sin configurar)")
        If impTicket <> "" Then
            Dim idx As Integer = cmbimpresora1.FindStringExact(impTicket)
            If idx >= 0 Then cmbimpresora1.SelectedIndex = idx
        End If
        If impRpt <> "" Then
            Dim idx As Integer = cmbimpresora2.FindStringExact(impRpt)
            If idx >= 0 Then cmbimpresora2.SelectedIndex = idx
        End If
    End Sub

    Private Sub CargarApiUrl()
        Dim objconnn As New DBCONECTAR1
        Dim tablas As DataTable = objconnn.ExecutarMySQLTablas("SELECT apiurl FROM config LIMIT 1")
        If tablas.Rows.Count > 0 AndAlso Not IsDBNull(tablas.Rows(0)("apiurl")) AndAlso
           tablas.Rows(0)("apiurl").ToString() <> "" Then
            txturlapi.Text = tablas.Rows(0)("apiurl").ToString()
        Else
            txturlapi.Text = apiurl
        End If
    End Sub

    Private Sub btnimpticket_Click(sender As Object, e As EventArgs) Handles btnimpticket.Click
        If cmbimpresora1.SelectedItem Is Nothing Then Exit Sub
        Dim nombre As String = DirectCast(cmbimpresora1.SelectedItem, DataRowView)("impresora").ToString()
        Dim objconnn As New DBCONECTAR1
        objconnn.ExecutarMySQLInsert("UPDATE config SET idimpticket='" & nombre.Replace("'", "''") & "'")
        lbimpticket.Text = nombre
        MsgBox("Impresora de tickets guardada.")
    End Sub

    Private Sub btnimprpt_Click(sender As Object, e As EventArgs) Handles btnimprpt.Click
        If cmbimpresora2.SelectedItem Is Nothing Then Exit Sub
        Dim nombre As String = DirectCast(cmbimpresora2.SelectedItem, DataRowView)("impresora").ToString()
        Dim objconnn As New DBCONECTAR1
        objconnn.ExecutarMySQLInsert("UPDATE config SET idimprpt='" & nombre.Replace("'", "''") & "'")
        lbimprpt.Text = nombre
        MsgBox("Impresora de reportes guardada.")
    End Sub

    Private Sub btnsaveurl_Click(sender As Object, e As EventArgs) Handles btnsaveurl.Click
        Dim nuevaUrl As String = txturlapi.Text.Trim()
        If nuevaUrl = "" Then
            MsgBox("Debe ingresar una URL válida.")
            txturlapi.Focus()
            Exit Sub
        End If
        Dim objconnn As New DBCONECTAR1
        objconnn.ExecutarMySQLInsert("UPDATE config SET apiurl='" & nuevaUrl.Replace("'", "''") & "'")
        apiurl = nuevaUrl
        MsgBox("URL del servidor guardada correctamente.")
    End Sub

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Me.Close()
    End Sub

End Class
