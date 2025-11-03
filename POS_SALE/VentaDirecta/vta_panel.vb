Public Class vta_panel
    Public idpublicovta As Integer
    Public idz As Integer
    Dim objeto As TextBox


    Private Sub btnvolver_Click(sender As Object, e As EventArgs) Handles btnvolver.Click
        Me.Close()
    End Sub
    Sub CargaMovIng(cuenta As Integer)
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        sql = "select b.id_vtatipomov,desc_vtatipomov from vta_movrestriccion a inner join vta_tipomov b on a.id_mov=b.id_vtatipomov where  b.tipo=1 and id_cuenta=" & cuenta & " order by desc_vtatipomov"
        tablas.Load(objconnn.ExecutarMySQL(sql))

        cmbmoving.DataSource = tablas
        cmbmoving.DisplayMember = "desc_vtatipomov"
        cmbmoving.ValueMember = "id_vtatipomov"
        cmbmoving.SelectedIndex = -1

    End Sub
    Sub CargaMovEgr(cuenta As Integer)
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        sql = "select b.id_vtatipomov,desc_vtatipomov from vta_movrestriccion a inner join vta_tipomov b on a.id_mov=b.id_vtatipomov where b.tipo=2 and id_cuenta=" & cuenta & " order by desc_vtatipomov"

        tablas.Load(objconnn.ExecutarMySQL(sql))


        cmbmovegr.DataSource = tablas
        cmbmovegr.DisplayMember = "desc_vtatipomov"
        cmbmovegr.ValueMember = "id_vtatipomov"
        cmbmovegr.SelectedIndex = -1

    End Sub
    Sub CargaCuentas()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        sql = "select id_vtacuentas,nom_cuenta from vta_cuentas where activo=1 order by nom_cuenta"

        tablas.Load(objconnn.ExecutarMySQL(sql))


        cmbcuentas.DataSource = tablas
        cmbcuentas.DisplayMember = "nom_cuenta"
        cmbcuentas.ValueMember = "id_vtacuentas"
        'cmbcuentas.SelectedIndex = -1


    End Sub

    Private Sub vta_panel_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        CargaCuentas()
        CargaMov()
        txtmontoing.Select()

    End Sub

    Private Sub btn1_Click(sender As Object, e As EventArgs) Handles btn1.Click
        objeto.Text = objeto.Text & "1"
    End Sub

    Private Sub txtmontoing_Click(sender As Object, e As EventArgs) Handles txtmontoing.Click
        objeto = txtmontoing
    End Sub

    Private Sub txtmontoegr_Click(sender As Object, e As EventArgs) Handles txtmontoegr.Click
        objeto = txtmontoegr
    End Sub

    Private Sub btn2_Click(sender As Object, e As EventArgs) Handles btn2.Click
        objeto.Text = objeto.Text & "2"
    End Sub

    Private Sub btn3_Click(sender As Object, e As EventArgs) Handles btn3.Click
        objeto.Text = objeto.Text & "3"
    End Sub

    Private Sub btn4_Click(sender As Object, e As EventArgs) Handles btn4.Click
        objeto.Text = objeto.Text & "4"
    End Sub

    Private Sub btn5_Click(sender As Object, e As EventArgs) Handles btn5.Click
        objeto.Text = objeto.Text & "5"
    End Sub

    Private Sub btn6_Click(sender As Object, e As EventArgs) Handles btn6.Click
        objeto.Text = objeto.Text & "6"
    End Sub

    Private Sub btn7_Click(sender As Object, e As EventArgs) Handles btn7.Click
        objeto.Text = objeto.Text & "7"
    End Sub

    Private Sub btn8_Click(sender As Object, e As EventArgs) Handles btn8.Click
        objeto.Text = objeto.Text & "8"
    End Sub

    Private Sub btn9_Click(sender As Object, e As EventArgs) Handles btn9.Click
        objeto.Text = objeto.Text & "9"
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        objeto.Text = objeto.Text & "0"
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        objeto.ResetText()
    End Sub

    Private Sub btnagrmov_Click(sender As Object, e As EventArgs) Handles btnagrmov.Click

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim paso As Integer

        lberror.Text = ""

        If txtmontoing.TextLength > 0 Then
            paso = 1

        End If

        If txtmontoegr.TextLength > 0 Then
            paso = 2
        End If

        If paso = 0 Then

            lberror.Text = "Debe ingresar un monto"
            Exit Sub

        End If

        If paso = 1 And cmbmoving.SelectedIndex = -1 Then

            lberror.Text = "Debe Seleccionar un Movimiento"
            Exit Sub
        End If
        If paso = 2 And cmbmovegr.SelectedIndex = -1 Then

            lberror.Text = "Debe Seleccionar un Movimiento"
            Exit Sub
        End If


        If paso = 1 Then
            
            'sql = "select count(*) as total from vta_mov where id_mov=" & cmbmoving.SelectedValue & " and id_cabvta=" & idpublicovta

            'tablas.Load(objconnn.ExecutarMySQL(sql))

            'If tablas.Rows(0)("total") > 0 And paso = 1 Then
            '    lberror.Text = "El movimiento existe !!!!!"
            '    Exit Sub
            'End If

            tablas.Reset()

            sql = "select max(id_movvtacab)+1 as ids from vta_mov "
            tablas.Load(objconnn.ExecutarMySQL(sql))


            If IsDBNull(tablas.Rows(0)("ids")) = False Then

                sql = "insert into vta_mov(id_movvtacab,id_cabvta,id_cuenta,id_mov,id_tipo,monto,id_vtaz) values ((select max(b.id_movvtacab) as total from vta_mov b)+1," & idpublicovta & "," & cmbcuentas.SelectedValue & "," & cmbmoving.SelectedValue & ",1," & txtmontoing.Text & "," & idz & ")"

            Else
                sql = "insert into vta_mov(id_movvtacab,id_cabvta,id_cuenta,id_mov,id_tipo,monto,id_vtaz) values (" & idpedidoventapublic & "," & cmbcuentas.SelectedValue & "," & idpublicovta & "," & cmbmoving.SelectedValue & ",1," & txtmontoing.Text & "," & idz & ")"
                
            End If

            objconnn.ExecutarMySQLinsert(sql)
            txtmontoing.ResetText()
            cmbmoving.SelectedIndex = -1

            CargaMov()
            Exit Sub
        End If
        If paso = 2 Then


            'sql = "select count(*) as total from vta_mov where id_mov=" & cmbmovegr.SelectedValue & " and id_cabvta=" & idpublicovta

            'tablas.Load(objconnn.ExecutarMySQL(sql))

            'If tablas.Rows(0)("total") > 0 And paso = 2 Then
            '    lberror.Text = "El movimiento existe !!!!!"
            '    Exit Sub
            'End If

            tablas.Reset()

            sql = "select max(id_movvtacab)+1 as ids from vta_mov "
            tablas.Load(objconnn.ExecutarMySQL(sql))

            If IsDBNull(tablas.Rows(0)("ids")) = False Then

                sql = "insert into vta_mov(id_movvtacab,id_cabvta,id_cuenta,id_mov,id_tipo,monto,id_vtaz) values ((select max(b.id_movvtacab) as total from vta_mov b)+1," & idpublicovta & "," & cmbcuentas.SelectedValue & "," & cmbmovegr.SelectedValue & ",2," & txtmontoegr.Text & "," & idz & ")"

            Else
                sql = "insert into vta_mov(id_movvtacab,id_cabvta,id_cuenta,id_mov,id_tipo,monto,id_vtaz) values (" & idpedidoventapublic & "," & cmbcuentas.SelectedValue & "," & idpublicovta & "," & cmbmovegr.SelectedValue & ",2," & txtmontoegr.Text & "," & idz & ")"

            End If

            objconnn.ExecutarMySQLinsert(sql)
            txtmontoegr.ResetText()
            cmbmovegr.SelectedIndex = -1

            CargaMov()
            Exit Sub
        End If


    End Sub


    Sub CargaMov()

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        grillamovimientos.Rows.Clear()

        sql = "select a.id_movvtacab,a.monto,b.desc_vtatipomov,c.nom_cuenta from vta_mov a "
        sql = sql & " inner join vta_tipomov b on b.id_vtatipomov=a.id_mov"
        sql = sql & " inner join vta_cuentas c on a.id_cuenta=c.id_vtacuentas"
        sql = sql & "  where a.id_vtaz = " & idz
        tablas.Load(objconnn.ExecutarMySQL(sql))

        grillamovimientos.ColumnCount = 4
        grillamovimientos.Columns(0).Name = "idmov"
        grillamovimientos.Columns(0).HeaderText = "idmov"
        grillamovimientos.Columns(0).Visible = False
        grillamovimientos.Columns(1).Name = "nomcuenta"
        grillamovimientos.Columns(1).HeaderText = "Nom Cuenta"
        grillamovimientos.Columns(2).Name = "nommov"
        grillamovimientos.Columns(2).HeaderText = "Mov."
        grillamovimientos.Columns(3).Name = "monto"
        grillamovimientos.Columns(3).HeaderText = "Monto"

        For y = 0 To tablas.Rows.Count - 1

            grillamovimientos.Rows.Add(tablas.Rows(y)("id_movvtacab"), tablas.Rows(y)("nom_cuenta"), tablas.Rows(y)("desc_vtatipomov"), tablas.Rows(y)("monto"))

        Next



    End Sub

    Private Sub btnelimov_Click(sender As Object, e As EventArgs) Handles btnelimov.Click
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim var1 As Integer

        lberror.ResetText()


        With grillamovimientos

            If .Rows.Count > 0 Then

                var1 = .Rows(.CurrentRow.Index).Cells(0).Value

                sql = "delete   from  vta_mov   where id_movvtacab=" & var1
                objconnn.ExecutarMySQLinsert(sql)
            Else

                lberror.Text = "No existen movimientos que eliminar"

            End If
        End With

        CargaMov()

    End Sub

    Private Sub cmbmoving_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbmoving.SelectedIndexChanged
        objeto = txtmontoing
    End Sub

    Private Sub cmbmovegr_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbmovegr.SelectedIndexChanged
        objeto = txtmontoegr
    End Sub

    Private Sub txtmontoing_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtmontoing.KeyPress
        If Char.IsDigit(e.KeyChar) Then
            e.Handled = False
        ElseIf Char.IsControl(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub

    Private Sub txtmontoegr_KeyPress(sender As Object, e As KeyPressEventArgs) Handles txtmontoegr.KeyPress
        If Char.IsDigit(e.KeyChar) Then
            e.Handled = False
        ElseIf Char.IsControl(e.KeyChar) Then
            e.Handled = False
        Else
            e.Handled = True
        End If
    End Sub

    Private Sub cmbcuentas_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbcuentas.SelectedIndexChanged

        Dim row As DataRowView = DirectCast(cmbcuentas.SelectedItem, DataRowView)
        CargaMovEgr(row.Item("id_vtacuentas"))
        CargaMovIng(row.Item("id_vtacuentas"))

    End Sub

    Private Sub btnactualizaProd_Click(sender As Object, e As EventArgs) Handles btnactualizaProd.Click

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable

        Dim contador = 10684
        ProgressBar1.Maximum = 83

        For t = 12000 To 12083

            If contador > 10767 Then
                contador = 10767
            End If

            'Sql = "update productos set codarticulo= " & t & " where codarticulo= " & contador

            'objconnn.ExecutarMySQLinsert(sql)


            Sql = "update vta_det set id_producto= " & t & " where id_producto=" & contador

            objconnn.ExecutarMySQLinsert(sql)


            'Sql = "update vta_prodvta set id_producto=" & t & " where id_producto= " & contador


            'objconnn.ExecutarMySQLinsert(sql)


            Sql = "update vta_stock set id_producto=" & t & " where id_producto= " & contador


            objconnn.ExecutarMySQLinsert(sql)


            ProgressBar1.Value = t - 12000
            Me.Refresh()

            contador = contador + 1

        Next



    End Sub
End Class