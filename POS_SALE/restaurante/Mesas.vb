Public Class Mesas

    Dim salones

    Private Sub btnmesa_Click(sender As Object, e As EventArgs)


    End Sub

    Private Sub btnmesa_DragDrop(sender As Object, e As DragEventArgs)

    End Sub

    Private Sub Mesas_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub btncrearsalon_Click(sender As Object, e As EventArgs) Handles btncrearsalon.Click
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String

        lberror.ResetText()

        salones = InputBox(" Ingrese Nombre Salon ")

        If salones.ToString.Length < 1 Then
            Exit Sub

        End If

        sql = "insert into vta_cabmesas (id_sucursal,nombre) values (" & idsucursalpublic & ",'" & salones & "')"

        objconnn.ExecutarMySQLinsert(sql)

        lberror.Text = "El salon fue ingressado correctamente"


    End Sub

 
    
    Private Sub imagenResto_Click(sender As Object, e As EventArgs) Handles imagenResto.Click

    End Sub

    Private Sub imagenResto_DoubleClick(sender As Object, e As EventArgs) Handles imagenResto.DoubleClick

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String

        sql = "insert into vta_detmesas (idcab_mesa,id_nummesa,x,y) values (" & cmbsalones.SelectedValue & ", select max(b.id_nummesa) from  vta_detmesas b), " & MousePosition.X & "," & MousePosition.Y & ")"

        objconnn.ExecutarMySQLinsert(sql)



    End Sub

    Private Sub btnmesa_Click_1(sender As Object, e As EventArgs) Handles btnmesa.Click

    End Sub
End Class
