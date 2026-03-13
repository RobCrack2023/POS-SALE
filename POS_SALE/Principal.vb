Public Class Principal

    Private Sub Principal_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        login.Close()
    End Sub

    Private Sub btnconf_Click(sender As Object, e As EventArgs) Handles btnconf.Click
        Configuracion.ShowDialog()
    End Sub

    Private Sub btnupdate_Click(sender As Object, e As EventArgs) Handles btnupdate.Click
        Dim idSuc As Integer = idsucursalpublic
        If idSuc = 0 Then
            MsgBox("No hay sucursal configurada. Configure el terminal desde el backend.")
            Exit Sub
        End If
        Dim ok As Boolean = SincCatalogo.DescargarCatalogo(idSuc)
        If ok Then
            MsgBox("Catálogo actualizado correctamente.")
        Else
            MsgBox("No se pudo conectar al servidor. Se mantienen los datos locales.")
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
