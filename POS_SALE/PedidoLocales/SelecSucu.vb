Imports System.Drawing.Printing
Public Class SelecSucu
    Public operacion As Integer
    Private Sub EncargoProductos_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        CargaSucursal()

    End Sub


    Sub CargaSucursal()
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select id_sucursal, nom_sucursal  from sucursal order by nom_sucursal"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        lstSucursal.DataSource = tablas
        lstSucursal.DisplayMember = "nom_sucursal"
        lstSucursal.ValueMember = "id_sucursal"


    End Sub

    Private Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        Me.Close()
    End Sub

    Private Sub btnimpsucuped_Click(sender As Object, e As EventArgs) Handles btnimpsucuped.Click
        Dim drv As DataRowView

        ''For Each drv As DataRowView In lstSucursal.SelectedItems
        'variossucuselec = drv.Item(0).ToString & ","
        'Next
        variossucuselec = Nothing

        For t = 0 To lstSucursal.SelectedItems.Count - 1
            drv = lstSucursal.SelectedItems(t)
            variossucuselec = variossucuselec & drv.Item(0).ToString & ","
        Next

        variossucuselec = Mid(variossucuselec, 1, variossucuselec.Length - 1)

        Dim printDoc2 As New PrintDocument
        Dim imp As Imprime = New Imprime
        imp.ObtieneImpresora()

        If operacion = 1 Then

            printDoc2.PrinterSettings.PrinterName = imp.impresoraticket
            printDoc2.PrintController = New System.Drawing.Printing.StandardPrintController()
            AddHandler printDoc2.PrintPage, AddressOf imp.ImprimeRPTPedidoProductosSeccion


            printDoc2.Print()
            printDoc2 = Nothing

        End If
        If operacion = 2 Then

            printDoc2.PrinterSettings.PrinterName = imp.impresoraticket
            printDoc2.PrintController = New System.Drawing.Printing.StandardPrintController()
            AddHandler printDoc2.PrintPage, AddressOf imp.ImprimeRPTPickingProductosSeccion


            printDoc2.Print()
            printDoc2 = Nothing

        End If

        AdminPedidoLocales.BuscarPedidos()
        

    End Sub
End Class