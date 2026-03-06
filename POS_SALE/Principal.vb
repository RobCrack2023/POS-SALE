Imports System.Drawing.Printing
Public Class Principal

    Private Sub Principal_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        login.Close()

      

    End Sub

    Private Sub btnproductos_Click(sender As Object, e As EventArgs) Handles btnproductos.Click
        frmproductos.Show()
        Me.Close()
    End Sub

    Private Sub btncompo_Click(sender As Object, e As EventArgs) Handles btncompo.Click
        ' MÓDULO NO DISPONIBLE - Composicion.vb excluido del proyecto (no migrado a SQLite)
        MessageBox.Show("El módulo de Composición no está disponible actualmente." & vbCrLf & "Contacte al administrador del sistema.", "Módulo no disponible", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ' Composicion.Show()
        ' Me.Close()
    End Sub

    Private Sub btnPOS_Click(sender As Object, e As EventArgs) Handles btnPOS.Click
    
    End Sub

    Private Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click

        login.Show()
        Me.Close()
    End Sub

    Private Sub btnfav_Click(sender As Object, e As EventArgs) Handles btnfav.Click
        ' MÓDULO NO DISPONIBLE - Favoritos.vb excluido del proyecto (no migrado a SQLite)
        MessageBox.Show("El módulo de Favoritos no está disponible actualmente." & vbCrLf & "Contacte al administrador del sistema.", "Módulo no disponible", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ' Favoritos.Show()
        ' Me.Close()
    End Sub


    Private Sub btnupdate_Click(sender As Object, e As EventArgs) Handles btnupdate.Click
    End Sub

    Private Sub btnactestructura_Click(sender As Object, e As EventArgs) Handles btnactestructura.Click
    End Sub

    Private Sub btnconf_Click(sender As Object, e As EventArgs) Handles btnconf.Click
        ' MÓDULO NO DISPONIBLE - Conf.vb (Configuracion) excluido del proyecto (no migrado a SQLite)
        'MessageBox.Show("El módulo de Configuración no está disponible actualmente." & vbCrLf & "Contacte al administrador del sistema.", "Módulo no disponible", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ' Configuracion.ShowDialog()
        Configuracion.ShowDialog()

    End Sub
    Public Sub ActualizaEstado()
        Dim deleg As ActEstadoDelegate
        deleg = New ActEstadoDelegate(AddressOf ActEstado)
        deleg.BeginInvoke("parametro1", Nothing, Nothing)

    End Sub
    Public Delegate Sub ActEstadoDelegate(ByVal parametro1 As String)

    Public Sub ActEstado(ByVal parametro1 As String)
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim tablas As DataTable = New DataTable
        Dim totalcabRemoto As Integer
        Dim totalcabLocal As Integer

        'sql = "select count(idpedido_cab) as totalcab from pedido_cab where estado=1 and id_sucursal=" & idsucursalpublic & " and date(fec_ing) between '" & Format(DateAdd(DateInterval.Day, -3, Now()), "yyyy-MM-dd") & "' and '" & Format(Now(), "yyyy-MM-dd") & "'"
        sql = "select count(idpedido_cab) as totalcab from pedido_cab where estado=1 and id_sucursal=" & idsucursalpublic & " and date(fec_ing) = '" & Format(Now(), "yyyy-MM-dd") & "'"
        tablas = objconnn.ExecutarMySQLTablas(sql)
        If tablas.Rows.Count > 0 Then
            totalcabRemoto = tablas.Rows(0)("totalcab")
        End If


        sql = "select count(idpedido_cab) as totalcab from pedido_cab where estado=1 and id_sucursal=" & idsucursalpublic & " and date(fec_ing) = '" & Format(Now(), "yyyy-MM-dd") & "'"
        tablas = objconnn.ExecutarMySQLTablas(sql)
        If tablas.Rows.Count > 0 Then
            totalcabLocal = tablas.Rows(0)("totalcab")
        End If


    End Sub

    Private Sub btnpedprodloc_Click(sender As Object, e As EventArgs) Handles btnpedprodloc.Click
        ' MÓDULO NO DISPONIBLE - PedidoLocales.vb no migrado a SQLite (baja prioridad)
        MessageBox.Show("El módulo de Pedido de Productos Locales no está disponible actualmente." & vbCrLf & "Contacte al administrador del sistema.", "Módulo no disponible", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ' PedidoLocales.Show()
        ' Me.Close()
    End Sub

    Private Sub btnmantprodped_Click(sender As Object, e As EventArgs) Handles btnmantprodped.Click
 
    End Sub

    Private Sub btnvdirecta_Click(sender As Object, e As EventArgs) Handles btnvdirecta.Click

        VDirecta.Show()
        Me.Close()
    End Sub

    Private Sub btnprodman_Click(sender As Object, e As EventArgs) Handles btnprodman.Click
        ' MÓDULO NO DISPONIBLE - adminproductos.vb excluido del proyecto (no migrado a SQLite)
        MessageBox.Show("El módulo de Administración de Productos no está disponible actualmente." & vbCrLf & "Contacte al administrador del sistema.", "Módulo no disponible", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ' adminproductos.Show()
        ' Me.Close()
    End Sub

    Private Sub btnadmprodagr_Click(sender As Object, e As EventArgs) Handles btnadmprodagr.Click
        ' MÓDULO NO DISPONIBLE - AdminCatProd.vb excluido del proyecto (no migrado a SQLite)
        MessageBox.Show("El módulo de Administración de Categorías no está disponible actualmente." & vbCrLf & "Contacte al administrador del sistema.", "Módulo no disponible", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ' AdminCatProd.Show()
        ' Me.Close()
    End Sub

    Private Sub btnadmpreciosplu_Click(sender As Object, e As EventArgs) Handles btnadmpreciosplu.Click
        AdmPreciosPlu.Show()
        Me.Close()

    End Sub

    Private Sub btnadminpedloc_Click(sender As Object, e As EventArgs) Handles btnadminpedloc.Click
        ' MÓDULO NO DISPONIBLE - AdminPedidoLocales.vb no migrado a SQLite (baja prioridad)
        MessageBox.Show("El módulo de Administración de Pedidos Locales no está disponible actualmente." & vbCrLf & "Contacte al administrador del sistema.", "Módulo no disponible", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ' AdminPedidoLocales.Show()
        ' Me.Close()
    End Sub


    Private Sub btnfavped_Click(sender As Object, e As EventArgs) Handles btnfavped.Click
        ' MÓDULO NO DISPONIBLE - FavoritosPedidos.vb excluido del proyecto (no migrado a SQLite)
        MessageBox.Show("El módulo de Favoritos de Pedidos no está disponible actualmente." & vbCrLf & "Contacte al administrador del sistema.", "Módulo no disponible", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ' FavoritosPedidos.Show()
        ' Me.Close()
    End Sub

    Private Sub btnsaldo_Click(sender As Object, e As EventArgs) Handles btnsaldo.Click
        ' MÓDULO NO DISPONIBLE - SaldoCamaras.vb no migrado a SQLite (baja prioridad)
        MessageBox.Show("El módulo de Saldo de Cámaras no está disponible actualmente." & vbCrLf & "Contacte al administrador del sistema.", "Módulo no disponible", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ' SaldoCamaras.Show()
        ' Me.Close()
    End Sub

    Private Sub btnfavemp_Click(sender As Object, e As EventArgs) Handles btnfavemp.Click
        ' MÓDULO NO DISPONIBLE - FavoritosEmp.vb excluido del proyecto (no migrado a SQLite)
        MessageBox.Show("El módulo de Favoritos de Empleados no está disponible actualmente." & vbCrLf & "Contacte al administrador del sistema.", "Módulo no disponible", MessageBoxButtons.OK, MessageBoxIcon.Information)
        ' FavoritosEmp.Show()
        ' Me.Close()
    End Sub

    Private Sub btnencemp_Click(sender As Object, e As EventArgs)

    End Sub


End Class