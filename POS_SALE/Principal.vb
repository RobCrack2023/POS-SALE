Public Class Principal

    Private Sub Principal_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        login.Close()
    End Sub

    Private Sub btnconf_Click(sender As Object, e As EventArgs) Handles btnconf.Click
        Configuracion.ShowDialog()
    End Sub

    Private Sub btnupdate_Click(sender As Object, e As EventArgs) Handles btnupdate.Click
        ' Leer sucursal desde config del terminal (no del usuario, que puede ser 0)
        Dim db As New DBCONECTAR1
        Dim dt As DataTable = db.ExecutarMySQLTablas("SELECT idsucursal FROM config LIMIT 1")
        Dim idSuc As Integer = 0
        If dt.Rows.Count > 0 AndAlso Not IsDBNull(dt.Rows(0)("idsucursal")) Then
            idSuc = CInt(dt.Rows(0)("idsucursal"))
        End If

        If idSuc = 0 Then
            MsgBox("No hay sucursal configurada en este terminal. Configure desde el backend.")
            Exit Sub
        End If

        Dim okCatalogo As Boolean = SincCatalogo.DescargarCatalogo(idSuc)
        Dim enviados As Integer = EnviarTodasLasVentas(idSuc)

        If okCatalogo Then
            MsgBox("Catálogo actualizado. Turnos enviados al backend: " & enviados & ".")
        Else
            MsgBox("No se pudo actualizar el catálogo. Turnos enviados al backend: " & enviados & ".")
        End If
    End Sub

    Private Sub btnactestructura_Click(sender As Object, e As EventArgs) Handles btnactestructura.Click
        Try
            DBCONECTAR1.ReinicializarBD()
            MsgBox("Estructura de base de datos actualizada correctamente.")
        Catch ex As Exception
            MsgBox("Error al actualizar la estructura: " & ex.Message)
        End Try
    End Sub

    Private Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        login.Show()
        Me.Close()
    End Sub

End Class
