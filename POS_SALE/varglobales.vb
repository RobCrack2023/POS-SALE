Imports System.Data.Odbc
Module varglobales
    Public usr As Integer
    Public perfil As Integer
    Public lineasubtotal As Double
    Public totalgeneral As Double
    Public totallinea As Double
    Public seccioncomanda As Integer
    Public nombreusr As String
    Public idpedidoventapublic As Integer
    Public idsucursalpublic As Integer
    Public idpersonapublic As Integer
    Public idunicasucursal As Integer
    Public idsucursaltalana As Integer
    Public fechaseleccionada As String
    Public seccionseleccionada As Integer
    Public textcmbseleccionada As String
    Public fechapedidopublica As String
    Public idcabpedidopublica As String
    Public conexionBD As OdbcConnection
    Public numnotaventa As Integer
    Public idcajapublic As Integer
    Public variossucuselec As String
    Public idborrarventa As Integer
    Public idrutvarios As String
    Public intervaloSincMin As Integer = 5   ' Intervalo de sync periódico (minutos), se carga desde el backend
    Public apiurl As String = "http://localhost:8000"  ' URL del servidor backend


    Function RecuperacionCierres() As Boolean

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        ' comprueba vta_z no cerradas
        sql = "select id_cabz from vta_z where id_sucursal=" & idsucursalpublic & " and estado=1 and date(fec_ini)='" & Format(Now, "yyyy-MM-dd") & "'"
        tablas = objconnn.ExecutarMySQLTablas(sql)

        If tablas.Rows.Count > 0 Then

            Return True
        Else
            Return False
        End If


    End Function



End Module
