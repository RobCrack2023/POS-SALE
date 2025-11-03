Imports System.Drawing.Printing

Public Class Configuracion


    Sub Impresora()

        Dim dt As DataTable = New DataTable("Tabla")

        dt.Columns.Add("impresora")

        Dim dr As DataRow

  

        For Each strPrinter As String In System.Drawing.Printing.PrinterSettings.InstalledPrinters

            dr = dt.NewRow()
            dr("impresora") = strPrinter
            dt.Rows.Add(dr)
        Next

        cmbimpresora1.DataSource = dt
        cmbimpresora1.DisplayMember = "impresora"


        Dim dy As DataTable = New DataTable("Tabla")

        dy.Columns.Add("impresora")

        Dim dw As DataRow


        For Each strPrinter As String In System.Drawing.Printing.PrinterSettings.InstalledPrinters

            dw = dy.NewRow()
            dw("impresora") = strPrinter
            dy.Rows.Add(dw)
        Next

        
        cmbimpresora2.DataSource = dy
        cmbimpresora2.DisplayMember = "impresora"


    End Sub

    Private Sub Configuracion_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargaImpresoras()
        Impresora()
        CargaSucursal()

    End Sub

    Private Sub btnimpticket_Click(sender As Object, e As EventArgs) Handles btnimpticket.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String

        Dim row As DataRowView = DirectCast(cmbimpresora1.SelectedItem, DataRowView)

        lbimpticket.Text = row("impresora")

        sql = "update config set idimpticket='" & row("impresora") & "'"
        objconnn.executarmysqlinsert(sql)

    End Sub

    Private Sub btnimprpt_Click(sender As Object, e As EventArgs) Handles btnimprpt.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String


        Dim row As DataRowView = DirectCast(cmbimpresora2.SelectedItem, DataRowView)

        lbimprpt.Text = row("impresora")

        sql = "update config set idimprpt='" & row("impresora") & "'"
        objconnn.executarmysqlinsert(sql)

    End Sub
    Sub CargaImpresoras()

        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "SELECT idimpticket,idimprpt FROM config "
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)

        lbimpticket.Text = tablas.Rows(0)("idimpticket")
        lbimprpt.Text = tablas.Rows(0)("idimprpt")


    End Sub
    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Me.Close()
    End Sub

    Private Sub btnreiniciacont_Click(sender As Object, e As EventArgs) Handles btnreiniciacont.Click

        If MsgBox("Esta Acción eliminara todos los datos de este POS-SALE, esta Seguro ?", MsgBoxStyle.YesNo) = MsgBoxResult.Yes Then

            Dim num As String
            Dim objconnn As DBCONECTAR = New DBCONECTAR
            Dim sql As String
            Dim tablas As DataTable = New DataTable
            Dim proces As New Process()


            num = InputBox("Ingrese el Id para este POS")
            If num < 1 Then
                Exit Sub
            End If
            sql = "drop database pos_sale "
            objconnn.executarmysqlinsert(sql)
            sql = "create database pos_sale"
            objconnn.executarmysqlinsert(sql)


            proces.StartInfo.FileName = "C:\programacion\SJA.exe"
            proces.StartInfo.Arguments = "C:\programacion\serverfulltopost.xml"
            proces.StartInfo.WindowStyle = ProcessWindowStyle.Hidden
            proces.Start()
            proces.WaitForExit()
            proces.Close()


            sql = "delete from pos_std.cliente"
            objconnn.executarmysqlinsert(sql)
            sql = "delete from pos_std.pedido_cab"
            objconnn.executarmysqlinsert(sql)
            sql = "delete from pos_std.pedido_det"
            objconnn.executarmysqlinsert(sql)


            sql = "insert into pos_std.cliente (idcliente,idsucursal,nombre) values (" & num & ",11,'INICIO')"
            objconnn.executarmysqlinsert(sql)

            MsgBox("Reinicio Finalizado, Salga de la aplicación y vuelva a entrar con su login")

        End If
    End Sub


    Private Sub CargaSucursal()

        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select id_sucursal, nom_sucursal  from sucursal order by nom_sucursal"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        cmbsucursal.DataSource = tablas
        cmbsucursal.DisplayMember = "nom_sucursal"
        cmbsucursal.ValueMember = "id_sucursal"

    End Sub

    Private Sub btnconfcaja_Click(sender As Object, e As EventArgs) Handles btnconfcaja.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        sql = "update config set idcaja=" & cmbsucursal.SelectedValue

        objconnn.executarmysqlinsert(sql)

        MsgBox("Sucursal Actualizada")


    End Sub

    Private Sub btnconfsucursal_Click(sender As Object, e As EventArgs) Handles btnconfsucursal.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        sql = "update config set idsucursal=" & cmbsucursal.SelectedValue

        objconnn.executarmysqlinsert(sql)

        MsgBox("Sucursal Actualizada")


    End Sub
End Class