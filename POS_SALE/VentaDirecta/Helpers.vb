Public Class Helpers
    Dim digito As String
    Public idz As Integer
    Public idcab As Integer
    Public estado As Boolean


    Private Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        grillaProdPLU.DataSource = Nothing
        Me.Close()

    End Sub

    Function ProdPLU(letter As String)

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable


        sql = "select a.descripcion as Producto,b.cod_plu as PLU,b.precio as Precio from productos a"
        sql = sql & " inner join vta_prodvta  b on a.codarticulo=b.id_producto "
        sql = sql & " where  a.descripcion like '" & letter & "%' and a.descatalogado='F' and b.id_sucursal=" & idsucursalpublic

        ' sql = "insert into vta_efectivo (id_vtaz,id_vtacab,monto)  values ( " & idz & "," & idcab & "," & Val(txtefectivo.Text) & " )"
        tablas.Load(objconnn.ExecutarMySQL(sql))

        grillaProdPLU.DataSource = tablas


        objconnn.CerrarMysql()


    End Function

    Sub CargaBotones()

        Dim mov As Integer
        Dim movy As Integer

        Dim contar As Integer

        Me.groupteclado.Controls.Clear()

        mov = 6
        movy = 19
        For r = 65 To 90
            Dim boton As New Button
            boton.AutoSize = False
            boton.BackColor = Color.BurlyWood
            boton.ForeColor = Color.Black

            boton.Location = New Point(mov, movy)

            boton.Width = 60
            boton.Height = 39
            boton.TabStop = False
            boton.Name = Chr(r)
            boton.Text = Chr(r)

            AddHandler boton.Click, AddressOf Me.boton_Click
            Me.groupteclado.Controls.Add(boton)

            mov = mov + 65
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
        ProdPLU(y)
    End Sub

    Private Sub Helpers_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargaBotones()
    End Sub
End Class