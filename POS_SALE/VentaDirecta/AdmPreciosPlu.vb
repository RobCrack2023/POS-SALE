Public Class AdmPreciosPlu



    Private Sub Cargadpto()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select numdpto, descripcion  from dpto where activo=1 order by descripcion"

        If idsucursalpublic = 14 Then

            dptoob = objconnn.ExecutarMySQL(sql)
        Else

            dptoob = objconnn.ExecutarMySQL(sql)

        End If

        tablas.Load(dptoob)
        cmbdpto.DataSource = tablas
        cmbdpto.DisplayMember = "descripcion"
        cmbdpto.ValueMember = "numdpto"

    End Sub

    Private Sub cmbdpto_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbdpto.SelectedIndexChanged
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable
        Dim row As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        sql = "select numseccion, descripcion  from secciones where numdpto=" & row.Item("numdpto") & " order by descripcion"

        If idsucursalpublic = 0 Then

            dptoob = objconnn.ExecutarMySQL(sql)
        Else

            dptoob = objconnn.ExecutarMySQL(sql)

        End If

        tablas.Load(dptoob)
        cmbseccion.DataSource = tablas
        cmbseccion.DisplayMember = "descripcion"
        cmbseccion.ValueMember = "numseccion"

    End Sub

    Sub CargarProductosPlu()
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable
        Dim tablas2 As DataTable = New DataTable
        Dim totalsuc As Integer
        Dim proddesc As String
        Dim codprod As Integer
        Dim resp(2) As String
        Dim indexa As Integer

        Dim contarprod As Integer

        Dim contarinterno As Integer
        grillaprodprecio.Rows.Clear()

        tablas.Reset()
        sql = "select id_sucursal,nom_sucursal from sucursal where activo_caja=1 order by id_sucursal"
        tablas.Load(objconnn.ExecutarMySQL(sql))

        totalsuc = tablas.Rows.Count
        grillaprodprecio.ColumnCount = totalsuc + 3
        For y = 0 To totalsuc - 1

            grillaprodprecio.Columns(y + 3).Name = tablas.Rows(y)("nom_sucursal").ToString
            grillaprodprecio.Columns(y + 3).ReadOnly = False

        Next y


        sql = "select a.codarticulo,a.descripcion from productos a"
        sql = sql & " left join  vta_prodvta b  on b.id_producto=a.codarticulo "
        sql = sql & " where a.dpto=" & cmbdpto.SelectedValue & " and a.seccion=" & cmbseccion.SelectedValue & " and  a.descatalogado='F'"
        sql = sql & " order by a.descripcion "

        tablas2.Load(objconnn.ExecutarMySQL(sql))

        contarprod = tablas2.Rows.Count
        barra.Maximum = contarprod
        Me.Refresh()

        For Each row As DataRow In tablas2.Rows

            proddesc = row.Item(1).ToString
            codprod = row.Item(0)
         
            sql = "select id_sucursal,nom_sucursal from sucursal where activo_caja=1 order by id_sucursal"
            tablas.Load(objconnn.ExecutarMySQL(sql))
            totalsuc = tablas.Rows.Count
            grillaprodprecio.Rows.Add(codprod, proddesc)
            indexa = grillaprodprecio.CurrentRow.Index()
            For y = 0 To totalsuc - 1

                
                resp = Split(LeerPrecioProductos(codprod, tablas.Rows(y)("id_sucursal")), "&")

                grillaprodprecio.Rows(indexa).Cells(y + 3).Value = resp(1)

            Next y




            contarinterno = contarinterno + 1
            If contarinterno > contarprod Then
                contarinterno = contarprod
            End If
            barra.Increment(contarinterno)
            Me.Refresh()
        Next

       

        'sql = "select * from prodvta where id_sucursal=" & tablas.Rows(0)("id_sucursal")

    End Sub

    Private Sub btnActProd_Click(sender As Object, e As EventArgs) Handles btnActProd.Click
        CargarProductosPlu()
    End Sub

    Private Sub grillaprodprecio_EditingControlShowing(sender As Object, e As DataGridViewEditingControlShowingEventArgs) Handles grillaprodprecio.EditingControlShowing
        ' referencia a la celda  
        Dim validar As TextBox = CType(e.Control, TextBox)

        ' agregar el controlador de eventos para el KeyPress  
        AddHandler validar.KeyPress, AddressOf validar_Keypress

    End Sub
    Private Sub validar_Keypress( _
       ByVal sender As Object, _
       ByVal e As System.Windows.Forms.KeyPressEventArgs)

        ' obtener indice de la columna  
        'Dim columna As Integer = grillaprodprecio.CurrentCell.ColumnIndex
        'Dim linea As Integer = grillaprodprecio.CurrentCell.RowIndex

        ' Obtener caracter  
        Dim caracter As Char = e.KeyChar

        ' comprobar si el caracter es un número o el retroceso  
        If Not Char.IsNumber(caracter) And (caracter = ChrW(Keys.Back)) = False Then
            'Me.Text = e.KeyChar  
            e.KeyChar = Chr(0)
        End If

    End Sub

    Private Sub btnactualiza_Click(sender As Object, e As EventArgs) Handles btnactualiza.Click
        ActualizaPluPrecios()
        CargarProductosPlu()
    End Sub

    Sub ActualizaPluPrecios()

        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable
        Dim tblsucursal As DataTable = New DataTable
        Dim tipoprod As Integer
        Dim sucursal As Integer

        sql = "select * from sucursal where activo_caja=1"
        tblsucursal.Load(objconnn.ExecutarMySQL(sql))

        sucursal = tblsucursal.Rows.Count - 1


        For t = 0 To grillaprodprecio.Rows.Count - 1

            tipoprod = 0
            tablas.Reset()
            sql = "select * from vta_prodvta where id_producto=" & grillaprodprecio.Rows(t).Cells(0).Value
            tablas.Load(objconnn.ExecutarMySQL(sql))

            If tablas.Rows.Count > 0 Then
                tipoprod = 1
            End If

            If tipoprod = 0 Then
                LlenarProductos(grillaprodprecio.Rows(t).Cells(0).Value)
            End If
            If tipoprod = 1 Then
                For r = 3 To 3 + sucursal

                    sql = "update vta_prodvta set cod_plu=" & Val(grillaprodprecio.Rows(t).Cells(2).Value) & ",precio=" & IIf(IsDBNull(grillaprodprecio.Item(r, t).Value) = True, 0, grillaprodprecio.Item(r, t).Value) & ",id_activo=1 where id_sucursal=" & tblsucursal.Rows(r - 3)("id_sucursal") & " and id_producto=" & grillaprodprecio.Rows(t).Cells(0).Value
                    objconnn.ExecutarMySQLinsert(sql)

                Next r
            End If          

        Next t
        MsgBox("Los Items fueron actualizados exitosamente")
        ' CargarProductosPlu()

    End Sub

    Function ValidaPlu(codplu As Integer) As Boolean
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable

        sql = "select count(*) total from vta_prodvta where cod_plu=" & codplu

        tablas.Load(objconnn.ExecutarMySQL(sql))
        If tablas.Rows(0)("total") > 0 Then

            ValidaPlu = False

        End If


    End Function


    Function LeerPrecioProductos(id_producto As Integer, sucursal As Integer) As String
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        'Dim tablas As DataTable = New DataTable
        Dim tblsucursal As DataTable = New DataTable
        Dim vervales As String

        'sql = "select * from sucursal where activo_caja=1 order by id_sucursal"

        'tablas.Load(objconnn.ExecutarMySQL(sql))


        'For t = 0 To tablas.Rows.Count - 1


        sql = "select cod_plu,precio from vta_prodvta where   id_sucursal=" & sucursal & "  and  id_producto= " & id_producto
        tblsucursal.Load(objconnn.ExecutarMySQL(sql))

        If tblsucursal.Rows.Count > 0 Then


            '    grillaprodprecio.Item(2, linea).Value = tblsucursal.Rows(0)("cod_plu")
            '    grillaprodprecio.Item(t + 3, linea).Value = tblsucursal.Rows(0)("precio")
            vervales = tblsucursal.Rows(0)("cod_plu")
            vervales = vervales & "&" & tblsucursal.Rows(0)("precio")

        End If


        'Next t
        Return vervales
    End Function


    Sub LlenarProductos(id_producto As Integer)

        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable



        sql = "select id_sucursal,nom_sucursal from sucursal where activo_caja=1"
        tablas.Load(objconnn.ExecutarMySQL(sql))


        For t = 0 To tablas.Rows.Count - 1

            sql = "insert into vta_prodvta (id_producto,id_sucursal,id_activo) values (" & id_producto & "," & tablas.Rows(t)("id_sucursal") & ",1)"
                objconnn.ExecutarMySQLinsert(sql)

        Next



    End Sub

    Function ObtenerSucursal(idsucu As String) As Integer
        Dim sql As String
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim tablas As DataTable = New DataTable


        sql = "select id_sucursal,nom_sucursal from nom_sucursal like '%" & idsucu & "%'"

        tablas.Load(objconnn.ExecutarMySQL(sql))

        ObtenerSucursal = tablas.Rows(0)("id_sucursal")


    End Function

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Principal.Show()

        Me.Close()
    End Sub

    Private Sub AdmPreciosPlu_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Cargadpto()

    End Sub
End Class