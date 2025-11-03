Public Class ResumenArqueoSinCerrar


    Private Sub ResumenArqueoSinCerrar_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        
        BuscarVtazSinCierre()


    End Sub

    Sub BuscarVtazSinCierre()

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        ' comprueba vta_z no cerradas
        sql = "select * from vta_z where estado=1 and id_sucursal=" & idsucursalpublic & "  and date(fec_ini)='" & Format(Now, "yyyy-MM-dd") & "'"
        tablas.Load(objconnn.ExecutarMySQL(sql))
        objconnn.CerrarMysql()

        If tablas.Rows.Count > 0 Then

            txtfecharecup.Text = tablas.Rows(0)("fec_ini")
            txthorarecup.Text = tablas.Rows(0)("hrs_ini").ToString
            txtidrecup.Text = tablas.Rows(0)("id_cabz")

        Else

            VDirecta.Show()
            Me.Close()

        End If

    End Sub



    Private Sub btnrecupera_Click(sender As Object, e As EventArgs) Handles btnrecupera.Click
        VDirecta.idvtazrecuperacion = txtidrecup.Text
        VDirecta.Show()
        Me.Close()
    End Sub

End Class