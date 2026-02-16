Imports System.IO

Public Class Configuracion

    ' -----------------------------------------------------------------------
    ' Carga inicial
    ' -----------------------------------------------------------------------
    Private Sub Configuracion_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        btnreiniciacont.Enabled = True  ' habilitado: reinstalación SQLite implementada
        CargarListaImpresoras()
        CargarSucursales()
        CargarConfigActual()
    End Sub

    ' -----------------------------------------------------------------------
    ' Rellena los dos ComboBox con las impresoras instaladas en Windows
    ' -----------------------------------------------------------------------
    Private Sub CargarListaImpresoras()
        Dim dt1 As New DataTable("imp")
        dt1.Columns.Add("impresora")
        Dim dt2 As New DataTable("imp")
        dt2.Columns.Add("impresora")

        For Each nombre As String In System.Drawing.Printing.PrinterSettings.InstalledPrinters
            dt1.Rows.Add(nombre)
            dt2.Rows.Add(nombre)
        Next

        cmbimpresora1.DataSource = dt1
        cmbimpresora1.DisplayMember = "impresora"

        cmbimpresora2.DataSource = dt2
        cmbimpresora2.DisplayMember = "impresora"
    End Sub

    ' -----------------------------------------------------------------------
    ' Carga las sucursales desde la BD local en el ComboBox
    ' -----------------------------------------------------------------------
    Private Sub CargarSucursales()
        Dim objconnn As New DBCONECTAR1
        Dim tablas As New DataTable
        tablas = objconnn.ExecutarMySQLTablas("SELECT id_Sucursal, Nom_Sucursal FROM sucursal ORDER BY Nom_Sucursal")
        cmbsucursal.DataSource = tablas
        cmbsucursal.DisplayMember = "Nom_Sucursal"
        cmbsucursal.ValueMember = "id_Sucursal"
    End Sub

    ' -----------------------------------------------------------------------
    ' Muestra en labels y controles la configuración guardada actualmente
    ' -----------------------------------------------------------------------
    Private Sub CargarConfigActual()
        Dim objconnn As New DBCONECTAR1
        Dim tablas As New DataTable
        tablas = objconnn.ExecutarMySQLTablas("SELECT idsucursal, idcaja, idimpticket, idimprpt FROM config")

        If tablas.Rows.Count = 0 Then Exit Sub

        Dim row As DataRow = tablas.Rows(0)

        ' Impresora ticket
        Dim impTicket As String = If(IsDBNull(row("idimpticket")), "", row("idimpticket").ToString)
        lbimpticket.Text = If(impTicket = "", "(sin configurar)", impTicket)
        If impTicket <> "" Then
            Dim idx As Integer = cmbimpresora1.FindStringExact(impTicket)
            If idx >= 0 Then cmbimpresora1.SelectedIndex = idx
        End If

        ' Impresora reportes
        Dim impRpt As String = If(IsDBNull(row("idimprpt")), "", row("idimprpt").ToString)
        lbimprpt.Text = If(impRpt = "", "(sin configurar)", impRpt)
        If impRpt <> "" Then
            Dim idx As Integer = cmbimpresora2.FindStringExact(impRpt)
            If idx >= 0 Then cmbimpresora2.SelectedIndex = idx
        End If

        ' Sucursal
        Dim idSuc As Integer = If(IsDBNull(row("idsucursal")), 0, CInt(row("idsucursal")))
        If idSuc > 0 Then
            cmbsucursal.SelectedValue = idSuc
        End If

        ' Número de caja
        Dim idCaja As Integer = If(IsDBNull(row("idcaja")), 0, CInt(row("idcaja")))
        txtcaja.Text = If(idCaja > 0, idCaja.ToString, "")
    End Sub

    ' -----------------------------------------------------------------------
    ' Guardar impresora de tickets
    ' -----------------------------------------------------------------------
    Private Sub btnimpticket_Click(sender As Object, e As EventArgs) Handles btnimpticket.Click
        If cmbimpresora1.SelectedItem Is Nothing Then Exit Sub
        Dim objconnn As New DBCONECTAR1
        Dim nombre As String = DirectCast(cmbimpresora1.SelectedItem, DataRowView)("impresora").ToString
        objconnn.ExecutarMySQLInsert("UPDATE config SET idimpticket='" & nombre.Replace("'", "''") & "'")
        lbimpticket.Text = nombre
        MsgBox("Impresora de tickets guardada.")
    End Sub

    ' -----------------------------------------------------------------------
    ' Guardar impresora de reportes
    ' -----------------------------------------------------------------------
    Private Sub btnimprpt_Click(sender As Object, e As EventArgs) Handles btnimprpt.Click
        If cmbimpresora2.SelectedItem Is Nothing Then Exit Sub
        Dim objconnn As New DBCONECTAR1
        Dim nombre As String = DirectCast(cmbimpresora2.SelectedItem, DataRowView)("impresora").ToString
        objconnn.ExecutarMySQLInsert("UPDATE config SET idimprpt='" & nombre.Replace("'", "''") & "'")
        lbimprpt.Text = nombre
        MsgBox("Impresora de reportes guardada.")
    End Sub

    ' -----------------------------------------------------------------------
    ' Guardar sucursal seleccionada
    ' -----------------------------------------------------------------------
    Private Sub btnconfsucursal_Click(sender As Object, e As EventArgs) Handles btnconfsucursal.Click
        If cmbsucursal.SelectedValue Is Nothing Then Exit Sub
        Dim objconnn As New DBCONECTAR1
        objconnn.ExecutarMySQLInsert("UPDATE config SET idsucursal=" & CInt(cmbsucursal.SelectedValue))
        MsgBox("Sucursal guardada.")
    End Sub

    ' -----------------------------------------------------------------------
    ' Guardar número de caja
    ' -----------------------------------------------------------------------
    Private Sub btnconfcaja_Click(sender As Object, e As EventArgs) Handles btnconfcaja.Click
        Dim num As Integer
        If Not Integer.TryParse(txtcaja.Text.Trim, num) OrElse num < 1 Then
            MsgBox("Ingrese un número de caja válido (mayor que 0).")
            txtcaja.Focus()
            Exit Sub
        End If
        Dim objconnn As New DBCONECTAR1
        objconnn.ExecutarMySQLInsert("UPDATE config SET idcaja=" & num)
        MsgBox("Número de caja guardado.")
    End Sub

    ' -----------------------------------------------------------------------
    ' Reinstalar POS desde cero
    ' -----------------------------------------------------------------------
    Private Sub btnreiniciacont_Click(sender As Object, e As EventArgs) Handles btnreiniciacont.Click

        ' Validar que haya sucursal y caja configuradas antes de reinstalar
        If cmbsucursal.SelectedValue Is Nothing Then
            MsgBox("Seleccione una sucursal antes de reinstalar.", MsgBoxStyle.Exclamation)
            Exit Sub
        End If
        Dim numCaja As Integer
        If Not Integer.TryParse(txtcaja.Text.Trim, numCaja) OrElse numCaja < 1 Then
            MsgBox("Ingrese un número de caja válido antes de reinstalar.", MsgBoxStyle.Exclamation)
            txtcaja.Focus()
            Exit Sub
        End If

        Dim confirm As MsgBoxResult = MsgBox(
            "Esta acción borrará TODOS los datos locales de este POS y creará una BD vacía." & vbCrLf & vbCrLf &
            "Los datos maestros (productos, precios, usuarios) deberán sincronizarse" & vbCrLf &
            "desde el servidor cuando el backend esté disponible." & vbCrLf & vbCrLf &
            "¿Confirma la reinstalación?",
            MsgBoxStyle.YesNo Or MsgBoxStyle.Critical, "Reinstalar POS")

        If confirm <> MsgBoxResult.Yes Then Exit Sub

        ' Capturar valores antes de borrar la BD
        Dim idSucursal As Integer = CInt(cmbsucursal.SelectedValue)
        Dim nomSucursal As String = cmbsucursal.Text
        Dim impTicket As String = If(lbimpticket.Text = "(sin configurar)", "", lbimpticket.Text)
        Dim impRpt As String = If(lbimprpt.Text = "(sin configurar)", "", lbimprpt.Text)

        Try
            ' Recrear la BD desde cero
            DBCONECTAR1.ReinicializarBD()

            ' Guardar la configuración en la BD nueva
            Dim objconnn As New DBCONECTAR1
            objconnn.ExecutarMySQLInsert(
                "UPDATE config SET " &
                "idsucursal=" & idSucursal & ", " &
                "idcaja=" & numCaja & ", " &
                "idimpticket='" & impTicket.Replace("'", "''") & "', " &
                "idimprpt='" & impRpt.Replace("'", "''") & "'")

            MsgBox(
                "POS reinstalado correctamente." & vbCrLf & vbCrLf &
                "Sucursal : " & nomSucursal & vbCrLf &
                "Caja     : " & numCaja & vbCrLf & vbCrLf &
                "Cierre la aplicación y vuelva a abrirla para continuar.",
                MsgBoxStyle.Information, "Reinstalación completada")

        Catch ex As Exception
            MsgBox("Error durante la reinstalación:" & vbCrLf & ex.Message, MsgBoxStyle.Critical)
        End Try

    End Sub

    ' -----------------------------------------------------------------------
    ' Cerrar
    ' -----------------------------------------------------------------------
    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Me.Close()
    End Sub

End Class
