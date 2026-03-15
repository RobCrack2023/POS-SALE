Public Class ResumenArqueoSinCerrar

    Private _idcabz As Integer   ' ID del turno sin cerrar a mostrar

    Private Sub ResumenArqueoSinCerrar_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        BuscarVtazSinCierre()
    End Sub

    Sub BuscarVtazSinCierre()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable

        ' Busca el turno más reciente sin cerrar para esta sucursal (sin filtro de fecha)
        Dim sql As String = "SELECT id_cabz, fec_ini, hrs_ini FROM vta_z " &
                            "WHERE estado=1 AND id_sucursal=" & idsucursalpublic & " " &
                            "ORDER BY id_cabz DESC LIMIT 1"
        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 Then
            _idcabz = CInt(tablas.Rows(0)("id_cabz"))
            txtfecharecup.Text = tablas.Rows(0)("fec_ini").ToString()
            txthorarecup.Text = tablas.Rows(0)("hrs_ini").ToString()
            txtidrecup.Text = _idcabz.ToString()
        Else
            ' No hay turno abierto: ir directo
            AbrirVDirecta(0)
        End If
    End Sub

    Private Sub btnrecupera_Click(sender As Object, e As EventArgs) Handles btnrecupera.Click
        AbrirVDirecta(_idcabz)
    End Sub

    Private Sub btndescartar_Click(sender As Object, e As EventArgs) Handles btndescartar.Click
        If MsgBox("¿Descartar el turno anterior y comenzar uno nuevo?" & vbCrLf &
                  "Las ventas pendientes quedarán anuladas.",
                  MsgBoxStyle.YesNo Or MsgBoxStyle.Question, "Confirmar") = MsgBoxResult.No Then
            Exit Sub
        End If

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1

        ' Anular todas las ventas en estado=1 del turno interrumpido
        objconnn.ExecutarMySQLInsert(
            "UPDATE vta_cab SET estado=3 WHERE estado=1 AND id_vtaz=" & _idcabz)

        ' Forzar cierre del turno
        objconnn.ExecutarMySQLInsert(
            "UPDATE vta_z SET estado=2, fec_ter='" & Format(Now(), "yyyy-MM-dd") & "', " &
            "hrs_ter='" & Format(Now(), "HH:mm:ss") & "' WHERE id_cabz=" & _idcabz)

        AbrirVDirecta(0)
    End Sub

    Private Sub AbrirVDirecta(idz As Integer)
        VDirecta.idvtazrecuperacion = idz
        VDirecta.Show()
        Me.Close()
    End Sub

End Class
