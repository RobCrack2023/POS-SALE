Imports System.Drawing.Printing
Public Class consolidado

    Sub CargaTerminados(botones As String)

        Dim sql As String
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim tablas As DataTable = New DataTable()


        gridconsolidado.Rows.Clear()

        sql = "select "
        sql = sql & " b.descripcion, "
        sql = sql & " a.cantidad "
        sql = sql & " from pedidolocal_det a "
        sql = sql & " inner join productos b on a.id_producto=b.codarticulo "
        sql = sql & " inner join ped_favseccion c on b.dpto=c.iddpto and b.seccion=c.idseccion"
        sql = sql & " inner join ped_fabsubnodo d on d.idfabsubnodo=c.idfavnodo"
        sql = sql & " where a.idpedido_cab=999999  and "
        sql = sql & " d.idfavnodo in (" & botones & ")"



        tablas.Load(objconnn.executarmysql(sql))

        For t = 0 To tablas.Rows.Count - 1

            gridconsolidado.Rows.Add(UCase(tablas.Rows(t)("descripcion")), tablas.Rows(t)("cantidad"))

        Next

    End Sub


    Private Sub btnterminados_Click(sender As Object, e As EventArgs) Handles btnterminados.Click

        If btnterminados.BackColor = Color.LightYellow Then
            btnterminados.BackColor = Color.DarkSalmon
            btnbodega.BackColor = Color.LightYellow
        Else
            btnterminados.BackColor = Color.LightYellow
        End If

        CargaTerminados("19")
    End Sub

    Private Sub btnbodega_Click(sender As Object, e As EventArgs) Handles btnbodega.Click

        If btnbodega.BackColor = Color.LightYellow Then
            btnbodega.BackColor = Color.DarkSalmon
            btnterminados.BackColor = Color.LightYellow
        Else
            btnbodega.BackColor = Color.LightYellow
        End If

        CargaTerminados("27,28")
    End Sub

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Me.Close()
    End Sub

    Private Sub consolidado_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        gridconsolidado.Rows.Clear()
    End Sub

    Private Sub btnimprimir_Click(sender As Object, e As EventArgs) Handles btnimprimir.Click
        Dim printDoc2 As New PrintDocument
        Dim imp As Imprime = New Imprime
        imp.ObtieneImpresora()


        printDoc2.PrinterSettings.PrinterName = imp.impresoraticket
        printDoc2.PrintController = New System.Drawing.Printing.StandardPrintController()
        AddHandler printDoc2.PrintPage, AddressOf ImprimeGrillaConsolidados

        printDoc2.Print()
        printDoc2 = Nothing



    End Sub

    Sub ImprimeGrillaConsolidados(ByVal sender As Object, ByVal e As PrintPageEventArgs)

        Dim prFont As New Font("Tahoma", 12, FontStyle.Regular)
        Dim prFont2 As New Font("Tahoma", 8, FontStyle.Italic)
        Dim prFont3 As New Font("Blackout", 14, FontStyle.Italic)
        Dim yPos As Single = prFont.GetHeight(e.Graphics)
        Dim xPos As Single = 0



        e.Graphics.DrawString("Producto ", prFont, Brushes.Black, xPos, yPos)
        xPos = 200
        e.Graphics.DrawString("Cantidad ", prFont, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        yPos = yPos + 24

        For t = 0 To gridconsolidado.Rows.Count - 1
            xPos = 0
            e.Graphics.DrawString(gridconsolidado.Item(0, t).Value, prFont2, Brushes.Black, xPos, yPos)
            xPos = 220
            e.Graphics.DrawString(gridconsolidado.Item(1, t).Value, prFont2, Brushes.Black, xPos, yPos)
            yPos = yPos + 24

        Next

        e.HasMorePages = False


    End Sub

End Class