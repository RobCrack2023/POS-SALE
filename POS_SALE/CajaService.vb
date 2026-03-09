Imports System.Net.Http
Imports System.Net.NetworkInformation
Imports System.Configuration
Imports Newtonsoft.Json

Module CajaService

    ''' <summary>
    ''' Genera un identificador único del equipo basado en nombre de máquina + MAC.
    ''' </summary>
    Public Function GetHardwareId() As String
        Try
            Dim mac = NetworkInterface.GetAllNetworkInterfaces() _
                .FirstOrDefault(Function(n) n.OperationalStatus = OperationalStatus.Up _
                    AndAlso n.NetworkInterfaceType <> NetworkInterfaceType.Loopback _
                    AndAlso n.GetPhysicalAddress().ToString().Length > 0)
            If mac IsNot Nothing Then
                Return Environment.MachineName & "-" & mac.GetPhysicalAddress().ToString()
            End If
        Catch
        End Try
        Return Environment.MachineName
    End Function

    ''' <summary>
    ''' Consulta al backend la asignación de caja para este terminal.
    ''' Si hay asignación activa, actualiza config local y retorna "ok".
    ''' Retorna "pendiente" si el terminal fue registrado pero aún sin asignar.
    ''' Retorna "offline" si no hay conexión (el POS sigue con config local).
    ''' </summary>
    Public Function SincronizarAsignacion() As String
        Dim backendUrl As String = ConfigurationManager.AppSettings("BackendUrl")
        If String.IsNullOrEmpty(backendUrl) Then backendUrl = "http://localhost:8000"
        backendUrl = backendUrl.TrimEnd("/"c)

        Dim hwId As String = GetHardwareId()

        Try
            Using client As New HttpClient()
                client.Timeout = TimeSpan.FromSeconds(5)
                Dim url As String = backendUrl & "/api/v1/cajas/asignacion?hardware_id=" &
                                    Uri.EscapeDataString(hwId)
                Dim response = client.GetAsync(url).Result

                If response.StatusCode = Net.HttpStatusCode.OK Then
                    Dim body As String = response.Content.ReadAsStringAsync().Result
                    Dim data = JsonConvert.DeserializeObject(Of Dictionary(Of String, Object))(body)

                    Dim idCaja As Integer = CInt(data("id_caja"))
                    Dim idSucursal As Integer = CInt(data("id_sucursal"))

                    ' Actualizar config local para que login y modo offline usen los valores correctos
                    Dim db As New DBCONECTAR1
                    db.ExecutarMySQLInsert("UPDATE config SET idcaja=" & idCaja &
                                          ", idsucursal=" & idSucursal)
                    Return "ok"

                ElseIf CInt(response.StatusCode) = 202 Then
                    ' Terminal registrado pero sin asignar todavía
                    Return "pendiente"

                Else
                    ' Error inesperado del servidor → modo offline
                    Return "offline"
                End If
            End Using

        Catch ex As Exception
            ' Sin conexión al backend → modo offline, usar config local
            Return "offline"
        End Try
    End Function

End Module
