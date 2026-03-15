Public Class arqueo

    Public idz As Integer
    Public idcab As Integer
    Public estado As Boolean
    Public objeto As TextBox

    ' id_tipopago -> TextBox ingresado por el cajero
    Private _pagos As New Dictionary(Of Integer, TextBox)

    Private Sub arqueo_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.Show()
        CargarTiposPago()
        AutoRellenarTickets()
    End Sub

    Private Sub AutoRellenarTickets()
        Dim db As New DBCONECTAR1
        Dim dt As New DataTable
        dt.Load(db.ExecutarMySQL(
            "SELECT MIN(id_vencab) AS ini, MAX(id_vencab) AS fin " &
            "FROM vta_cab WHERE id_vtaz=" & idz & " AND estado=2"))

        If dt.Rows.Count > 0 AndAlso Not IsDBNull(dt.Rows(0)("ini")) Then
            txtnumini.Text = dt.Rows(0)("ini").ToString()
            txtnumfin.Text = dt.Rows(0)("fin").ToString()
        Else
            txtnumini.Text = "0"
            txtnumfin.Text = "0"
        End If

        txtnumini.ReadOnly = True
        txtnumfin.ReadOnly = True
    End Sub

    Sub CargarTiposPago()
        pnlPagos.Controls.Clear()
        _pagos.Clear()

        Dim db As New DBCONECTAR1
        Dim dt As New DataTable
        dt.Load(db.ExecutarMySQL(
            "SELECT id_tipopago, texto_tipopago FROM vta_tipopago WHERE id_activo=1 ORDER BY Posicion"))

        For Each row As DataRow In dt.Rows
            Dim idTipo As Integer = CInt(row("id_tipopago"))
            Dim nombre As String = row("texto_tipopago").ToString()

            Dim pnl As New Panel()
            pnl.Size = New Drawing.Size(240, 78)
            pnl.BackColor = Drawing.Color.YellowGreen

            Dim lbl As New Label()
            lbl.Text = nombre
            lbl.AutoSize = False
            lbl.Size = New Drawing.Size(230, 26)
            lbl.Location = New Drawing.Point(5, 2)
            lbl.Font = New Drawing.Font("Microsoft Sans Serif", 11, Drawing.FontStyle.Bold)

            Dim txt As New TextBox()
            txt.Text = ""
            txt.Size = New Drawing.Size(230, 44)
            txt.Location = New Drawing.Point(5, 30)
            txt.Font = New Drawing.Font("Microsoft Sans Serif", 18, Drawing.FontStyle.Regular)
            txt.Tag = idTipo
            AddHandler txt.GotFocus, Sub(s, ev) objeto = DirectCast(s, TextBox)

            pnl.Controls.Add(lbl)
            pnl.Controls.Add(txt)
            pnlPagos.Controls.Add(pnl)
            _pagos(idTipo) = txt
        Next
    End Sub

    ' ── Botones numéricos ───────────────────────────────────────────────

    Private Sub btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click
        If objeto IsNot Nothing Then objeto.Text = objeto.Text & "1"
    End Sub
    Private Sub btn2_Click(sender As Object, e As EventArgs) Handles btn2.Click
        If objeto IsNot Nothing Then objeto.Text = objeto.Text & "2"
    End Sub
    Private Sub btn3_Click(sender As Object, e As EventArgs) Handles btn3.Click
        If objeto IsNot Nothing Then objeto.Text = objeto.Text & "3"
    End Sub
    Private Sub btn4_Click(sender As Object, e As EventArgs) Handles btn4.Click
        If objeto IsNot Nothing Then objeto.Text = objeto.Text & "4"
    End Sub
    Private Sub btn5_Click(sender As Object, e As EventArgs) Handles btn5.Click
        If objeto IsNot Nothing Then objeto.Text = objeto.Text & "5"
    End Sub
    Private Sub btn6_Click(sender As Object, e As EventArgs) Handles btn6.Click
        If objeto IsNot Nothing Then objeto.Text = objeto.Text & "6"
    End Sub
    Private Sub btn7_Click(sender As Object, e As EventArgs) Handles btn7.Click
        If objeto IsNot Nothing Then objeto.Text = objeto.Text & "7"
    End Sub
    Private Sub btn8_Click(sender As Object, e As EventArgs) Handles btn8.Click
        If objeto IsNot Nothing Then objeto.Text = objeto.Text & "8"
    End Sub
    Private Sub btn9_Click(sender As Object, e As EventArgs) Handles btn9.Click
        If objeto IsNot Nothing Then objeto.Text = objeto.Text & "9"
    End Sub
    Private Sub btn0_Click(sender As Object, e As EventArgs) Handles btn0.Click
        If objeto IsNot Nothing Then objeto.Text = objeto.Text & "0"
    End Sub
    Private Sub btn00_Click(sender As Object, e As EventArgs) Handles btn00.Click
        If objeto IsNot Nothing Then objeto.Text = objeto.Text & "00"
    End Sub

    ' ── Borrar ─────────────────────────────────────────────────────────

    Private Sub btnborrar_Click(sender As Object, e As EventArgs) Handles btnborrar.Click
        For Each txt In _pagos.Values
            txt.Text = ""
        Next
    End Sub

    ' ── Cerrar turno ───────────────────────────────────────────────────

    Private Sub btningefect_Click(sender As Object, e As EventArgs) Handles btningefect.Click
        If Not ValidaIngreso() Then Exit Sub
        GrabarBoleta()
        GrabaArqueo()
        estado = True
    End Sub

    Sub GrabaArqueo()
        Dim db As New DBCONECTAR1
        For Each kv In _pagos
            Dim monto As Decimal = Val(kv.Value.Text)
            If monto > 0 Then
                db.ExecutarMySQLInsert(
                    "INSERT OR REPLACE INTO vta_arqueo_det (id_vtaz, id_tipopago, monto) " &
                    "VALUES (" & idz & "," & kv.Key & "," & monto & ")")
            End If
        Next
    End Sub

    Function ValidaIngreso() As Boolean
        lberror.ResetText()

        If Val(txtnumfin.Text) < Val(txtnumini.Text) Then
            lberror.Text = "El n° de ticket final debe ser mayor que inicio"
            Return False
        End If
        Dim total As Decimal = _pagos.Values.Sum(Function(t) Val(t.Text))
        If total = 0 Then
            lberror.Text = "Debe ingresar los valores de tipos de pago"
            Return False
        End If
        Return True
    End Function

    Sub GrabarBoleta()
        Dim db As New DBCONECTAR1
        db.ExecutarMySQLInsert(
            "INSERT INTO vta_boleta (id_vtaz,id_vtacab,numini,numfin) VALUES (" &
            idz & "," & idcab & "," & Val(txtnumini.Text) & "," & Val(txtnumfin.Text) & ")")
        txtnumfin.ResetText()
        Me.Close()
    End Sub

    ' ── Salir sin cerrar ───────────────────────────────────────────────

    Private Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        estado = False
        txtnumini.ResetText()
        txtnumfin.ResetText()
        AnulaBoleta.EliminarNulas(idz)
        Me.Close()
    End Sub

    ' ── Focus boletas ──────────────────────────────────────────────────

    Private Sub txtnumini_GotFocus(sender As Object, e As EventArgs) Handles txtnumini.GotFocus
        objeto = txtnumini
    End Sub
    Private Sub txtnumfin_GotFocus(sender As Object, e As EventArgs) Handles txtnumfin.GotFocus
        objeto = txtnumfin
    End Sub

End Class
