Public Class Stock



    Public Sub CargaStockVenta(idcab As Integer)

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim tablas2 As DataTable = New DataTable

        sql = "SELECT 	b.id_producto , b.cantidad"
        sql = sql & " FROM pedidolocal_cab	a "
        sql = sql & " INNER JOIN pedidolocal_det b ON a.`idpedido_cab`=b.`idpedido_cab` "
        sql = sql & " INNER JOIN vta_agrprod c ON c.`id_producto`=b.`id_producto`"
        sql = sql & " WHERE "
        sql = sql & " a.`idpedido_cab`= " & idcab

        tablas.Load(objconnn.ExecutarMySQL(sql))

        For t = 0 To tablas.Rows.Count - 1

            sql = "insert into vta_stock (id_stock,id_sucursal,id_producto,fecha,hora,cantidad,id_pedidocab) values ( (select max(b.id_stock)+1 from vta_stock b)," & idsucursalpublic & "," & tablas.Rows(t)("id_producto") & ",'" & Format(Now(), "yyyy-MM-dd") & "','" & Format(Now(), "HH:mm:ss") & "'," & tablas.Rows(t)("cantidad") & "," & idcab & ")"

                objconnn.ExecutarMySQLInsert(sql)
        Next


    End Sub


    Public Sub RebajaStockVenta(idcabventa As Integer)
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim tablas2 As DataTable = New DataTable


        sql = "select b.`id_producto`,replace(b.cant,',','.') from vta_cab a "
        sql = sql & " inner join vta_det b  on a.id_vencab=b.id_cabvta "
        sql = sql & " where a.id_sucursal= " & idsucursalpublic & " and  a.`id_vencab`=" & idcabventa

        tablas.Load(objconnn.ExecutarMySQL(sql))

            For Each row As DataRow In tablas.Rows
            sql = "insert into vta_stock (id_sucursal,id_producto,fecha,hora,cantidad,id_pedidocab) values (" & idsucursalpublic & "," & row.Item(0) & ",'" & Format(Now(), "yyyy-MM-dd") & "','" & Format(Now(), "HH:mm:ss") & "',replace('" & (Replace(row.Item(1), ".", ",") * -1) & "',',','.')," & idcabventa & ")"
                objconnn.ExecutarMySQLInsert(sql)

            Next


    End Sub


End Class
