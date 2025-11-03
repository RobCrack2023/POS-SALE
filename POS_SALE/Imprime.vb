Imports System.Drawing.Printing
Imports System.Data.Odbc
Imports System
Imports System.IO
Imports System.Collections

Public Class Imprime
    Public idencargo As Integer
    Public impresoraticket As String
    Public ttentero As Integer

    Public Sub ObtieneImpresora()

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable
        'Dim impresoraticket As String


        sql = "SELECT idimpticket,idimprpt FROM config "
        dptoob = objconnn.ExecutarMySQL(sql)
        tablas.Load(dptoob)
        impresoraticket = tablas.Rows(0)("idimpticket")

    End Sub

    ' FUNCIÓN COMENTADA TEMPORALMENTE - EN DESARROLLO
    ' Esta función mezcla SQL Server (executarsqlmanager) con SQLite y no está completa
    '
    'Sub ImpComandasEmp()
    '    '---------EN DESARROLLO ---------------------
    '    Dim ejecutar As DBCONECTAR1 = New DBCONECTAR1
    '    Dim valors As OdbcDataReader
    '    Dim tablas As DataTable = New DataTable
    '    Dim tablas2 As DataTable = New DataTable
    '    Dim sql As String
    '    Dim numnv As Integer
    '    ' TODO: Migrar consulta de SQL Server a SQLite
    '    'sql = "select ncodart from [strindbe].[dbo].[NOTDE_DB] where numrecor=" & numnotaventa
    '    'valors = ejecutar.executarsqlmanager(sql)
    '    'tablas.Load(valors)
    '    'numnv = tablas.Rows(0)("ncodart")
    '    'tablas.Reset()
    '    'sql = "SELECT a.`DESCRIPCION`,c.id_producto FROM "
    '    'sql = sql & "productos a"
    '    'sql = sql & " INNER JOIN compempcab b ON a.`CODARTICULO`=b.`id_producto`"
    '    'sql = sql & " INNER JOIN compempdet c ON c.`id_productomaster`=b.`id_producto`"
    '    'sql = sql & " WHERE a.`REFPROVEEDOR`=" & numnv
    '    'tablas.Load(ejecutar.ExecutarMySQL(sql))
    '    'ejecutar.CerrarMySQL()
    '    'For Each row As DataRow In tablas.Rows
    '    '    sql = "select * from productos where codarticulo=" & row.Item(1)
    '    '    tablas2.Load(ejecutar.ExecutarMySQL(sql))
    '    '    ejecutar.CerrarMySQL()
    '    'Next
    'End Sub
    Public Sub ImprimeRPTPedidoProductos(ByVal sender As Object, ByVal e As PrintPageEventArgs)
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable


        ' La fuente a usar
        Dim prFont As New Font("Tahoma", 12, FontStyle.Regular)
        Dim prFont2 As New Font("Tahoma", 8, FontStyle.Italic)
        Dim prFont3 As New Font("Blackout", 14, FontStyle.Italic)



        Dim yPos As Single = prFont.GetHeight(e.Graphics)
        Dim xPos As Single = 2

        sql = "SELECT "
        sql = sql & "a.`idpedido_cab` AS ID,"
        sql = sql & "a.`fecha_pedido`,"
        sql = sql & "b.`Nom_Sucursal` AS sucursal,"
        sql = sql & "c.`descrip` AS turno,"
        sql = sql & "d.`desc_estado` AS estado,"
        sql = sql & "e.`nombre` AS usuario"
        sql = sql & " FROM "
        sql = sql & " pedidolocal_cab a"
        sql = sql & " INNER JOIN sucursal b ON a.`id_sucursal`=b.`id_Sucursal`"
        sql = sql & " INNER JOIN turno c ON a.`idturno`=c.`id_turno`"
        sql = sql & " INNER JOIN estado_ped d ON a.`estadopedloc`=d.`id_estado`"
        sql = sql & " INNER JOIN usuario e ON a.`idusuario`=e.`idusuario`"

        sql = sql & " WHERE "

        sql = sql & " a.`idpedido_cab`=" & idcabpedidopublica

        If idsucursalpublic = 13 Or idsucursalpublic = 11 Then

            tablas.Load(objconnn.ExecutarMySQL(sql))

        Else
            tablas.Load(objconnn.ExecutarMySQL(sql))

        End If


        e.Graphics.DrawString("Fecha Hora de Reporte :" & FormatDateTime(Now(), DateFormat.ShortDate) & " " & FormatDateTime(Now(), DateFormat.ShortTime), prFont2, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("RPT Pedidos Local N° :" & tablas.Rows(0)("ID"), prFont2, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("Usuario Pedido : " & tablas.Rows(0)("usuario"), prFont2, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("Fecha de Pedido :" & tablas.Rows(0)("fecha_pedido"), prFont2, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("Horario de Pedido :" & tablas.Rows(0)("turno"), prFont2, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("--------------------------------------", prFont2, Brushes.Black, xPos, yPos)
        yPos = yPos + 24


        tablas.Reset()

        sql = "SELECT "
        sql = sql & "lcase(b.`DESCRIPCION`) AS producto,"
        sql = sql & "a.`cantidad`,"
        sql = sql & "a.`inventario`,"
        sql = sql & "a.`merma`"

        sql = sql & " FROM pedidolocal_det a"

        sql = sql & " INNER JOIN productos b ON a.`id_producto`=b.`CODARTICULO`"

        sql = sql & " WHERE "
        sql = sql & "a.`idpedido_cab`=" & idcabpedidopublica


        If idsucursalpublic = 13 Or idsucursalpublic = 11 Then

            tablas.Load(objconnn.ExecutarMySQL(sql))

        Else
            tablas.Load(objconnn.ExecutarMySQL(sql))

        End If


        For Each row1 As DataRow In tablas.Rows

            xPos = 2
            ' Producto
            e.Graphics.DrawString(row1.Item(0), prFont2, Brushes.Black, xPos, yPos)

            xPos = xPos + 200
            ' Cantidad
            e.Graphics.DrawString(row1.Item(1), prFont2, Brushes.Black, xPos, yPos)
            xPos = xPos + 30
            'Inventario
            e.Graphics.DrawString(row1.Item(2), prFont2, Brushes.Black, xPos, yPos)
            xPos = xPos + 30
            'Merma
            e.Graphics.DrawString(row1.Item(3), prFont2, Brushes.Black, xPos, yPos)

            yPos = yPos + 30
        Next



        e.HasMorePages = False

    End Sub
    Public Sub ImprimeRPTPedidoProductosSeccion(ByVal sender As Object, ByVal e As PrintPageEventArgs)


        ' ------------EN DESARROLLO -----------------
        '--   20-09-2016
        '--
        '--
        '--


        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim tablas2 As DataTable = New DataTable

        ' La fuente a usar
        Dim prFont As New Font("Tahoma", 12, FontStyle.Regular)
        Dim prFont2 As New Font("Tahoma", 8, FontStyle.Italic)
        Dim prFont4 As New Font("Tahoma", 8, FontStyle.Bold)
        Dim prFont3 As New Font("Blackout", 14, FontStyle.Italic)



        Dim yPos As Single = prFont.GetHeight(e.Graphics)
        Dim xPos As Single = 2

        ' ------------------------------agrupa por sección  ----------------------------------------

        tablas.Reset()

        sql = "SELECT "
        sql = sql & "d.`idfabsubnodo`,"
        sql = sql & "d.`descrip`,"
        sql = sql & "e.`idpedido_cab`"

        sql = sql & " FROM "
        sql = sql & "pedidolocal_det a "
        sql = sql & "INNER JOIN productos b ON a.`id_producto`=b.`CODARTICULO` "
        sql = sql & "INNER JOIN ped_favseccion c ON c.`iddpto`=b.`DPTO` AND c.`idseccion`=b.`SECCION` "
        sql = sql & "INNER JOIN ped_fabsubnodo d ON d.`idfabsubnodo`=c.`idfavnodo` "
        sql = sql & "INNER JOIN pedidolocal_cab e ON e.idpedido_cab=a.idpedido_cab"


        sql = sql & " WHERE "
        'sql = sql & "a.`idpedido_cab`=" & idcabpedidopublica
        sql = sql & "e.`estadopedloc`in (1,2)  and  e.id_sucursal in (" & variossucuselec & ")"

        sql = sql & " GROUP BY"
        sql = sql & " d.`idfabsubnodo`"


        tablas.Load(objconnn.ExecutarMySQL(sql))


        xPos = 0
        e.Graphics.DrawString("RPT ARMADO DE PEDIDOS ", prFont4, Brushes.Black, xPos, yPos)
        yPos = yPos + 24

        e.Graphics.DrawString("Fecha Hora de Generación : " & Format(Now(), "dd-MM-yyyy") & " " & Format(Now(), "HH:mm"), prFont4, Brushes.Black, xPos, yPos)
        yPos = yPos + 24

        For y = 0 To tablas.Rows.Count - 1
            xPos = 0
            e.Graphics.DrawString("----------------------------------------------------------------", prFont2, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString(Mid(tablas.Rows(y)("descrip"), 1, 22), prFont4, Brushes.Black, xPos, yPos)
            xPos = xPos + 130
            e.Graphics.DrawString("Cant.", prFont4, Brushes.Black, xPos, yPos)
            xPos = xPos + 40
            e.Graphics.DrawString("Contab.", prFont4, Brushes.Black, xPos, yPos)
            xPos = xPos + 60
            e.Graphics.DrawString("Sucursal", prFont4, Brushes.Black, xPos, yPos)
            yPos = yPos + 24




            tablas2.Reset()

            sql = "SELECT "
            sql = sql & "c.`DESCRIPCION`,"
            sql = sql & "b.`cantidad`,"
            sql = sql & "e.`Nom_Sucursal`"

            sql = sql & " FROM "

            sql = sql & " pedidolocal_cab a"

            sql = sql & " INNER JOIN pedidolocal_det b   ON a.`idpedido_cab`=b.`idpedido_cab`"
            sql = sql & " INNER JOIN productos c ON c.`CODARTICULO`=b.`id_producto`"
            sql = sql & " INNER JOIN ped_favseccion d ON d.`iddpto`=c.`DPTO` AND d.`idseccion`=c.`SECCION`"
            sql = sql & " INNER JOIN sucursal e ON e.`id_Sucursal`=a.`id_sucursal`"
            sql = sql & " INNER JOIN ped_fabsubnodo f ON f.`idfabsubnodo`=d.`idfavnodo`"

            sql = sql & " WHERE "
            sql = sql & " f.`idfabsubnodo`=" & tablas.Rows(y)("idfabsubnodo") & " AND a.`estadopedloc`in(1,2) and e.`id_Sucursal` in(" & variossucuselec & ")"
            sql = sql & " order by e.`Nom_Sucursal` "

            tablas2.Load(objconnn.ExecutarMySQL(sql))

                For Each row1 As DataRow In tablas2.Rows

                xPos = 0
                ' Producto
                e.Graphics.DrawString(Mid(row1.Item(0), 1, 20), prFont2, Brushes.Black, xPos, yPos)
                xPos = xPos + 150
                ' Cantidad
                e.Graphics.DrawString(row1.Item(1), prFont2, Brushes.Black, xPos, yPos)
                xPos = xPos + 70
                'Sucursal
                e.Graphics.DrawString(row1.Item(2), prFont2, Brushes.Black, xPos, yPos)
                yPos = yPos + 24
                xPos = 0
                e.Graphics.DrawString("#", prFont2, Brushes.Black, xPos, yPos)
                xPos = xPos + 170
                e.Graphics.DrawString("____ ", prFont2, Brushes.Black, xPos, yPos)
                xPos = xPos + 50
                e.Graphics.DrawString(row1.Item(2), prFont2, Brushes.Black, xPos, yPos)
                yPos = yPos + 24

            Next

        Next

        For y = 0 To tablas.Rows.Count - 1

            sql = "update pedidolocal_cab set estadopedloc=2,idusr_imp=" & usr & ",fec_imp='" & Format(Now(), "yyyy-MM-dd") & "', hrs_imp='" & Format(Now(), "HH:mm") & "' where idpedido_cab=" & tablas.Rows(y)("idpedido_cab")
            objconnn.ExecutarMySQLInsert(sql)

        Next
        xPos = 0
        yPos = yPos + 48
        e.Graphics.DrawString("_______________", prFont2, Brushes.Black, xPos, yPos)
        xPos = 150
        e.Graphics.DrawString("________________________", prFont2, Brushes.Black, xPos, yPos)
        xPos = 0
        yPos = yPos + 12
        e.Graphics.DrawString("Firma Armador", prFont2, Brushes.Black, xPos, yPos)
        xPos = 150
        e.Graphics.DrawString("Firma Digitador", prFont2, Brushes.Black, xPos, yPos)

        e.HasMorePages = False
    End Sub

    Public Sub ImprimeRPTPickingProductosSeccion(ByVal sender As Object, ByVal e As PrintPageEventArgs)


        ' ------------EN DESARROLLO -----------------
        '--   20-09-2016
        '--
        '--
        '--


        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim tablas2 As DataTable = New DataTable

        ' La fuente a usar
        Dim prFont As New Font("Tahoma", 12, FontStyle.Regular)
        Dim prFont2 As New Font("Tahoma", 8, FontStyle.Italic)
        Dim prFont4 As New Font("Tahoma", 8, FontStyle.Bold)
        Dim prFont3 As New Font("Blackout", 14, FontStyle.Italic)



        Dim yPos As Single = prFont.GetHeight(e.Graphics)
        Dim xPos As Single = 2



        ' ------------------------------agrupa por sección  ----------------------------------------

        tablas.Reset()

        sql = "SELECT "
        sql = sql & "d.`idfabsubnodo`,"
        sql = sql & "d.`descrip`,"
        sql = sql & "e.`idpedido_cab`"

        sql = sql & " FROM "
        sql = sql & "pedidolocal_det a "
        sql = sql & "INNER JOIN productos b ON a.`id_producto`=b.`CODARTICULO` "
        sql = sql & "INNER JOIN ped_favseccion c ON c.`iddpto`=b.`DPTO` AND c.`idseccion`=b.`SECCION` "
        sql = sql & "INNER JOIN ped_fabsubnodo d ON d.`idfabsubnodo`=c.`idfavnodo` "
        sql = sql & "INNER JOIN pedidolocal_cab e ON e.idpedido_cab=a.idpedido_cab"


        sql = sql & " WHERE "
        'sql = sql & "a.`idpedido_cab`=" & idcabpedidopublica
        sql = sql & " e.`estadopedloc`=2  and  e.id_sucursal in (" & variossucuselec & ")"

        sql = sql & " GROUP BY"
        sql = sql & " d.`idfabsubnodo`"


        tablas.Load(objconnn.ExecutarMySQL(sql))
        xPos = 0
        e.Graphics.DrawString("RPT PRE-FACTURA DE PEDIDOS ", prFont4, Brushes.Black, xPos, yPos)
        yPos = yPos + 24

        e.Graphics.DrawString("Fecha Hora de Generación : " & Format(Now(), "dd-MM-yyyy") & " " & Format(Now(), "HH:mm"), prFont4, Brushes.Black, xPos, yPos)
        yPos = yPos + 24

        For y = 0 To tablas.Rows.Count - 1
            xPos = 0
            e.Graphics.DrawString("----------------------------------------------------------------", prFont2, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
            e.Graphics.DrawString(Mid(tablas.Rows(y)("descrip"), 1, 22), prFont4, Brushes.Black, xPos, yPos)
            xPos = xPos + 130
            e.Graphics.DrawString("Cant.", prFont4, Brushes.Black, xPos, yPos)
            xPos = xPos + 40
            e.Graphics.DrawString("Contab.", prFont4, Brushes.Black, xPos, yPos)
            xPos = xPos + 60
            e.Graphics.DrawString("Sucursal", prFont4, Brushes.Black, xPos, yPos)
            yPos = yPos + 24
            tablas2.Reset()

            sql = "SELECT "
            sql = sql & "c.`DESCRIPCION`,"
            sql = sql & "b.`cantenviada`,"
            sql = sql & "e.`Nom_Sucursal`"

            sql = sql & " FROM "

            sql = sql & " pedidolocal_cab a"

            sql = sql & " INNER JOIN pedidolocal_det b   ON a.`idpedido_cab`=b.`idpedido_cab`"
            sql = sql & " INNER JOIN productos c ON c.`CODARTICULO`=b.`id_producto`"
            sql = sql & " INNER JOIN ped_favseccion d ON d.`iddpto`=c.`DPTO` AND d.`idseccion`=c.`SECCION`"
            sql = sql & " INNER JOIN sucursal e ON e.`id_Sucursal`=a.`id_sucursal`"
            sql = sql & " INNER JOIN ped_fabsubnodo f ON f.`idfabsubnodo`=d.`idfavnodo`"

            sql = sql & " WHERE "
            sql = sql & " b.cantenviada>0 and  f.`idfabsubnodo`=" & tablas.Rows(y)("idfabsubnodo") & " AND a.`estadopedloc`=2 and e.`id_Sucursal` in(" & variossucuselec & ")"
            sql = sql & " order by e.`Nom_Sucursal` "

            tablas2.Load(objconnn.ExecutarMySQL(sql))

                For Each row1 As DataRow In tablas2.Rows

                xPos = 0
                ' Producto
                e.Graphics.DrawString(Mid(row1.Item(0), 1, 20), prFont2, Brushes.Black, xPos, yPos)
                xPos = xPos + 150
                ' Cantidad
                e.Graphics.DrawString(row1.Item(1), prFont2, Brushes.Black, xPos, yPos)
                xPos = xPos + 70
                'Sucursal
                e.Graphics.DrawString(row1.Item(2), prFont2, Brushes.Black, xPos, yPos)
                yPos = yPos + 24
                
            Next

         

            yPos = yPos + 24


        Next


        For y = 0 To tablas.Rows.Count - 1

            sql = "update pedidolocal_cab set estadopedloc=4,idusr_pick=" & usr & ",fec_pick='" & Format(Now(), "yyyy-MM-dd") & "', hrs_pick='" & Format(Now(), "HH:mm") & "' where idpedido_cab=" & tablas.Rows(y)("idpedido_cab")
            objconnn.ExecutarMySQLInsert(sql)

        Next



        xPos = 0
        yPos = yPos + 48
        e.Graphics.DrawString("_______________", prFont2, Brushes.Black, xPos, yPos)
        xPos = 150
        e.Graphics.DrawString("________________________", prFont2, Brushes.Black, xPos, yPos)
        xPos = 0
        yPos = yPos + 12
        e.Graphics.DrawString("Firma Chofer", prFont2, Brushes.Black, xPos, yPos)
        xPos = 150
        e.Graphics.DrawString("Firma Encargado Despacho", prFont2, Brushes.Black, xPos, yPos)


        e.HasMorePages = False
    End Sub



    Public Sub ImprimerptEncargo(ByVal sender As Object, ByVal e As PrintPageEventArgs)

        ' La fuente a usar

        Dim prFont As New Font("Tahoma", 14, FontStyle.Regular)
        Dim prFont2 As New Font("Tahoma", 14, FontStyle.Italic)
        Dim prFont3 As New Font("Tahoma", 12, FontStyle.Bold)
        Dim prFont4 As New Font("Tahoma", 8, FontStyle.Bold)
        Dim prFont5 As New Font("Tahoma", 10, FontStyle.Bold)
        Dim prFont6 As New Font("Tahoma", 8, FontStyle.Regular)
        Dim yPos As Single = prFont.GetHeight(e.Graphics)
        Dim xPos As Single = 2

        ' CONECTAMOS A BASE DE DATOS

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable

        sql = "SELECT "

        sql = sql & "a.`idpedido_cab` AS N_Comanda,"
        sql = sql & "d.`nombre`,"
        sql = sql & "c.`DESCRIPCION` AS PRODUCTO,"
        sql = sql & "b.`cantidad` AS CANTIDAD,"
        sql = sql & "a.`fec_retiro`,"
        sql = sql & "a.`hor_retiro`,"
        sql = sql & "g.`nombre` as cliente,"
        sql = sql & "h.`suc_ab` as sucursal"


        sql = sql & " FROM "

        sql = sql & " pedido_cab a "
        sql = sql & "INNER JOIN pedido_det b ON a.`idpedido_cab`=b.`idpedido_cab` "
        sql = sql & "INNER JOIN productos c ON c.`CODARTICULO`=b.`id_producto` "
        sql = sql & "INNER JOIN usuario d ON a.`idusuario`=d.`idusuario` "
        sql = sql & "INNER JOIN favseccion e ON e.idseccion=c.seccion "
        sql = sql & "INNER JOIN fabsubnodo f ON f.idfabsubnodo=e.idfavnodo "
        sql = sql & "INNER JOIN cliente g ON g.idcliente=a.id_cliente "
        sql = sql & "INNER JOIN sucursal h ON h.id_sucursal=a.id_sucursal"

        sql = sql & " WHERE "
        sql = sql & " DATE(a.`fec_retiro`)='" & fechaseleccionada & "' AND "
        sql = sql & " a.`estado` =1 AND "

        If idsucursalpublic = 11 Then
            sql = sql & " a.id_sucursal in (11,13) AND "
        Else

        End If
        If idsucursalpublic = 13 Or idsucursalpublic = 0 Then
            sql = sql & " a.id_sucursal in (1,2,3,4,5,7,8,9,11,13,14) AND "

        End If

        sql = sql & " f.`idfavnodo`=" & seccionseleccionada
        sql = sql & " ORDER BY "
        sql = sql & " h.id_sucursal, "
        sql = sql & " a.hor_retiro"
        tablas.Reset()


        If idsucursalpublic = 13 Or idsucursalpublic = 11 Or idsucursalpublic = 0 Then

            dptoob = objconnn.ExecutarMySQLProd(sql)

        Else
            dptoob = objconnn.ExecutarMySQL(sql)

        End If

        tablas.Load(dptoob)

        e.Graphics.DrawString("Fecha Hora de Reporte :" & FormatDateTime(Now(), DateFormat.ShortDate) & " " & FormatDateTime(Now(), DateFormat.ShortTime), prFont6, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("RPT Encargos " & textcmbseleccionada, prFont3, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("Fecha : " & Format(CDate(fechaseleccionada), "dd-MM-yyyy"), prFont3, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("--------------------------------------", prFont3, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("N°         Cliente                           Cantidad   Hora", prFont4, Brushes.Black, xPos, yPos)
        yPos = yPos + 24

        
        Dim xr As Integer = 1
        For Each row1 As DataRow In tablas.Rows


            xPos = 1
            'N° comanda
            e.Graphics.DrawString(row1.Item(0), prFont4, Brushes.Black, xPos, yPos)

            xPos = 245
            'Hora
            e.Graphics.DrawString(Format(CDate(row1.Item(5).ToString), "HH:mm"), prFont6, Brushes.Black, xPos, yPos)

            xPos = 60
            ' Cliente
            e.Graphics.DrawString(row1.Item(6), prFont4, Brushes.Black, xPos, yPos)
            yPos = yPos + 20
            xPos = 5
            ' Producto
            e.Graphics.DrawString(row1.Item(2), prFont6, Brushes.Black, xPos, yPos)
            xPos = xPos + 200
            'Cantidad
            e.Graphics.DrawString(row1.Item(3), prFont6, Brushes.Black, xPos, yPos)
            xPos = xPos + 40
            'sucursal
            e.Graphics.DrawString(row1.Item(7), prFont6, Brushes.Black, xPos, yPos)

            yPos = yPos + 24
            xr = xr + 1
           
        Next
        xPos = 2
        For t = yPos To yPos + 100

            e.Graphics.DrawString("_", prFont6, Brushes.Black, xPos, t)
        Next
        e.HasMorePages = False

    End Sub

    Public Sub ImprimerptEncargoAnulados(ByVal sender As Object, ByVal e As PrintPageEventArgs)
        ' La fuente a usar
        Dim prFont As New Font("Tahoma", 14, FontStyle.Regular)
        Dim prFont2 As New Font("Tahoma", 14, FontStyle.Italic)
        Dim prFont3 As New Font("Tahoma", 12, FontStyle.Bold)
        Dim prFont4 As New Font("Tahoma", 8, FontStyle.Bold)
        Dim prFont5 As New Font("Tahoma", 10, FontStyle.Bold)
        Dim prFont6 As New Font("Tahoma", 8, FontStyle.Regular)
        Dim yPos As Single = prFont.GetHeight(e.Graphics)
        Dim xPos As Single = 2

        ' CONECTAMOS A BASE DE DATOS

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable

        sql = "SELECT "

        sql = sql & "a.`idpedido_cab` AS N_Comanda,"
        sql = sql & "d.`nombre`,"
        sql = sql & "c.`DESCRIPCION` AS PRODUCTO,"
        sql = sql & "b.`cantidad` AS CANTIDAD,"
        sql = sql & "a.`fec_retiro`,"
        sql = sql & "a.`hor_retiro`,"
        sql = sql & "g.`nombre` as cliente,"
        sql = sql & "h.`suc_ab` as sucursal"

        sql = sql & " FROM "

        sql = sql & " pedido_cab a "
        sql = sql & "INNER JOIN pedido_det b ON a.`idpedido_cab`=b.`idpedido_cab` "
        sql = sql & "INNER JOIN productos c ON c.`CODARTICULO`=b.`id_producto` "
        sql = sql & "INNER JOIN usuario d ON a.`idusuario`=d.`idusuario` "
        sql = sql & "INNER JOIN favseccion e ON e.idseccion=c.seccion "
        sql = sql & "INNER JOIN fabsubnodo f ON f.idfabsubnodo=e.idfavnodo "
        sql = sql & "INNER JOIN cliente g ON g.idcliente=a.id_cliente "
        sql = sql & "INNER JOIN sucursal h ON h.id_sucursal=a.id_sucursal"

        sql = sql & " WHERE "
        sql = sql & " DATE(a.`fec_retiro`)='" & fechaseleccionada & "' AND "
        sql = sql & " a.`estado`=3 AND "


        If idsucursalpublic = 11 Then
            sql = sql & " a.id_sucursal in (11,13) AND "
        Else

        End If
        If idsucursalpublic = 13 Or idsucursalpublic = 0 Then
            sql = sql & " a.id_sucursal in (1,2,3,4,5,7,8,9,11,13,14) AND "

        End If


        sql = sql & " f.`idfavnodo`=" & seccionseleccionada
        sql = sql & " ORDER BY "
        sql = sql & " h.id_sucursal, "
        sql = sql & " a.hor_retiro"
        tablas.Reset()

        If idsucursalpublic = 13 Or idsucursalpublic = 11 Then

            dptoob = objconnn.ExecutarMySQLProd(sql)

        Else
            dptoob = objconnn.ExecutarMySQL(sql)

        End If


        tablas.Load(dptoob)

        e.Graphics.DrawString("Fecha Hora de Reporte :" & FormatDateTime(Now(), DateFormat.ShortDate) & " " & FormatDateTime(Now(), DateFormat.ShortTime), prFont6, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("Anulados " & textcmbseleccionada, prFont2, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("Fecha : " & Format(CDate(fechaseleccionada), "dd-MM-yyyy"), prFont3, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("--------------------------------------", prFont3, Brushes.Black, xPos, yPos)
        yPos = yPos + 24
        e.Graphics.DrawString("N°         Cliente                           Cantidad   Hora", prFont4, Brushes.Black, xPos, yPos)
        yPos = yPos + 24

        Dim xr As Integer = 1
        For Each row1 As DataRow In tablas.Rows


            xPos = 1
            'N° comanda
            e.Graphics.DrawString(row1.Item(0), prFont4, Brushes.Black, xPos, yPos)

            xPos = 245
            'Hora
            e.Graphics.DrawString(Format(CDate(row1.Item(5).ToString), "HH:mm"), prFont6, Brushes.Black, xPos, yPos)

            xPos = 60
            ' Cliente
            e.Graphics.DrawString(row1.Item(6), prFont4, Brushes.Black, xPos, yPos)
            yPos = yPos + 20
            xPos = 5
            ' Producto
            e.Graphics.DrawString(row1.Item(2), prFont6, Brushes.Black, xPos, yPos)
            xPos = xPos + 200
            'Cantidad
            e.Graphics.DrawString(row1.Item(3), prFont6, Brushes.Black, xPos, yPos)
            xPos = xPos + 40
            'Sucursal
            e.Graphics.DrawString(row1.Item(7), prFont6, Brushes.Black, xPos, yPos)

            yPos = yPos + 24
            xr = xr + 1
         
        Next
        xPos = 2
        For t = yPos To yPos + 100

            e.Graphics.DrawString("_", prFont6, Brushes.Black, xPos, t)
        Next
        e.HasMorePages = False

    End Sub

   
    ' Exportar Documento de venta indicando su tipo
    Sub EscribeArchivo()
        Dim file As System.IO.StreamWriter
        file = My.Computer.FileSystem.OpenTextFileWriter("c:\test.txt", True)
        file.WriteLine("Here is the first string.")    
        file.Close()

    End Sub
    ' Leer documento de Venta Recien creado
    Sub LeerArchivo()
        Dim objReader As New StreamReader("c:\test.txt")
        Dim sLine As String = ""
        Dim arrText As New ArrayList()

        Do
            sLine = objReader.ReadLine()
            If Not sLine Is Nothing Then
                arrText.Add(sLine)
            End If
        Loop Until sLine Is Nothing
        objReader.Close()

    End Sub

End Class
