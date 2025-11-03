Imports System.Drawing.Printing
Public Class Print

    Private Sub Print_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click





        'Dim printDoc As New PrintDocument
        '' asignamos el método de evento para cada página a imprimir
        'AddHandler printDoc.PrintPage, AddressOf Cabesera
        '' indicamos que queremos imprimir
        'printDoc.Print()


    End Sub
    Private Sub print_PrintPage(ByVal sender As Object, _
                            ByVal e As PrintPageEventArgs)
        ' Este evento se producirá cada vez que se imprima una nueva página
        ' imprimir HOLA MUNDO en Arial tamaño 24 y negrita

        ' imprimimos la cadena en el margen izquierdo
        Dim xPos As Single = 5 'e.MarginBounds.Left
        ' La fuente a usar
        Dim prFont As New Font("Arial", 24, FontStyle.Bold)
        ' la posición superior
        Dim yPos As Single = prFont.GetHeight(e.Graphics)

        ' imprimimos la cadena
        e.Graphics.DrawString("Hola, Mundo", prFont, Brushes.Black, xPos, yPos)
        e.Graphics.DrawString("Hola, Mundo", prFont, Brushes.Black, xPos, yPos + 34)
        ' indicamos que ya no hay nada más que imprimir
        ' (el valor predeterminado de esta propiedad es False)
        e.HasMorePages = False

    End Sub
    Private Sub Cabesera(ByVal sender As Object, ByVal e As PrintPageEventArgs)

        ' imprimimos la cadena en el margen izquierdo
        Dim xPos As Single = 5 'e.MarginBounds.Left
        ' La fuente a usar
        Dim prFont As New Font("Tahoma", 14, FontStyle.Bold)
        Dim prFont2 As New Font("Tahoma", 14, FontStyle.Italic)
        Dim yPos As Single = prFont.GetHeight(e.Graphics)

        ' la posición superior

        e.Graphics.DrawString("PASTELERIA STRINDBERG", prFont, Brushes.Black, xPos, yPos)
        e.Graphics.DrawString("La Magia del Sabor", prFont2, Brushes.Black, xPos, yPos + 24)
        e.Graphics.DrawString("Tel. 226769900", prFont, Brushes.Black, xPos, yPos + 44)
        e.Graphics.DrawString("---------------------------------------", prFont, Brushes.Black, xPos, yPos + 65)
        ' indicamos que ya no hay nada más que imprimir
        ' (el valor predeterminado de esta propiedad es False)
        e.HasMorePages = False

    End Sub
    Private Sub Cabcliente(ByVal sender As Object, ByVal e As PrintPageEventArgs)
        Dim xPos As Single = 5 'e.MarginBounds.Left
        ' La fuente a usar
        Dim prFont As New Font("Tahoma", 14, FontStyle.Bold)
        Dim prFont2 As New Font("Tahoma", 14, FontStyle.Italic)
        Dim yPos As Single = prFont.GetHeight(e.Graphics)

        ' la posición superior

        e.Graphics.DrawString("PASTELERIA STRINDBERG", prFont, Brushes.Black, xPos, yPos)
        e.Graphics.DrawString("La Magia del Sabor", prFont2, Brushes.Black, xPos, yPos + 24)
        e.Graphics.DrawString("Tel. 226769900", prFont, Brushes.Black, xPos, yPos + 44)
        e.Graphics.DrawString("---------------------------------------", prFont, Brushes.Black, xPos, yPos + 65)
        ' indicamos que ya no hay nada más que imprimir
        ' (el valor predeterminado de esta propiedad es False)

        e.HasMorePages = False

    End Sub
End Class