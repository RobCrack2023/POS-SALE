Imports System.Drawing.Printing

Public Class Varios

    Private cantidad As String
    Private estadoBoton As Integer


    Private Sub btnsalir_Click(sender As Object, e As EventArgs)
        Me.Close()
    End Sub

    Private Function ObtieneSucursal()



    End Function

    Sub CargaBotones()

        Dim mov As Integer
        Dim movy As Integer

        Dim contar As Integer

        Me.GroupBox1.Controls.Clear()

        mov = 6
        movy = 19
        For r = 65 To 90
            Dim boton As New Button
            boton.AutoSize = False
            boton.BackColor = Color.BurlyWood
            boton.ForeColor = Color.Black

            boton.Location = New Point(mov, movy)

            boton.Width = 70
            boton.Height = 39
            boton.TabStop = False
            boton.Name = Chr(r)
            boton.Text = Chr(r)

            AddHandler boton.Click, AddressOf Me.boton_Click
            Me.GroupBox1.Controls.Add(boton)

            mov = mov + 70
            contar = contar + 1
            If contar > 8 Then
                contar = 0
                mov = 6
                movy = movy + 42
            End If
        Next

    End Sub
    Private Sub boton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim y As String
        y = CType(sender, System.Windows.Forms.Button).Name
        ' idsucursalpublic = 55612
        CargaPersonal(y)

    End Sub

    Private Sub Varios_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargaBotones()

    End Sub
    Private Sub CargaPersonal(Inicial As String)
        GridPersonal.DataSource = Nothing
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        If estadoBoton = 0 Then
            sql = "select rut,nombres as `Apellido mas Nombre` from personaltalana where nombres like '" & Inicial & "%' and  id_sucursal=" & idsucursaltalana & " order by nombres"
        ElseIf estadoBoton = 1 Then
            sql = "select rut,nombres as `Apellido mas Nombre` from personaltalana where nombres like '" & Inicial & "%' order by nombres"
        End If


        tablas.Load(objconnn.ExecutarMySQL(sql))

        GridPersonal.DataSource = tablas

        objconnn.CerrarMysql()


    End Sub


    Private Sub btnActivarSuc_Click(sender As Object, e As EventArgs) Handles btnActivarSuc.Click
        If estadoBoton = 0 Then
            estadoBoton = 1
            btnActivarSuc.BackColor = Color.Coral
            btnActivarSuc.Text = "Sucursales"

        ElseIf estadoBoton = 1 Then
            estadoBoton = 0
            btnActivarSuc.BackColor = Color.YellowGreen
            btnActivarSuc.Text = "Una Sucursal"
        End If
    End Sub

    Private Sub btnseleccionar_Click(sender As Object, e As EventArgs) Handles btnseleccionar.Click

        Dim nombres As String
        idrutvarios = GridPersonal.Rows(GridPersonal.CurrentRow.Index).Cells(0).Value
        nombres = GridPersonal.Rows(GridPersonal.CurrentRow.Index).Cells(1).Value
        Me.Close()
    End Sub

    Private Sub btnSalir_Click_1(sender As Object, e As EventArgs) Handles btnSalir.Click

        idrutvarios = Nothing
        Me.Close()

    End Sub
End Class