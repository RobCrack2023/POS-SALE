Public Class frmnuevoprod

    Private Sub frmnuevoprod_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Cargadpto()
        CargaUnidad()
    End Sub

    Private Sub Cargadpto()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select numdpto, descripcion  from dpto where activo=1 order by descripcion"
        dptoob = objconnn.ExecutarMySQL(sql)
        tablas.Load(dptoob)
        cmbdpto.DataSource = tablas
        cmbdpto.DisplayMember = "descripcion"
        cmbdpto.ValueMember = "numdpto"


    End Sub
    Private Sub CargaUnidad()
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select idumedida, descrip  from umedida  order by descrip"
        dptoob = objconnn.ExecutarMySQL(sql)
        tablas.Load(dptoob)
        cmbunidad.DataSource = tablas
        cmbunidad.DisplayMember = "descrip"
        cmbunidad.ValueMember = "idumedida"

    End Sub

    Private Sub cmbdpto_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbdpto.SelectedIndexChanged
        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim dptoob As System.Data.SQLite.SQLiteDataReader
        Dim tablas As DataTable = New DataTable
        Dim row As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        sql = "select numseccion, descripcion  from secciones where numdpto=" & row.Item("numdpto") & " order by descripcion"
        dptoob = objconnn.ExecutarMySQL(sql)
        tablas.Load(dptoob)
        cmbseccion.DataSource = tablas
        cmbseccion.DisplayMember = "descripcion"
        cmbseccion.ValueMember = "numseccion"

    End Sub


    Private Sub btnnuevo_Click(sender As Object, e As EventArgs) Handles btnnuevo.Click

        Dim objconnn As DBCONECTAR1 = New DBCONECTAR1
        Dim sql As String
        Dim row1 As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        Dim row2 As DataRowView = DirectCast(cmbseccion.SelectedItem, DataRowView)
        Dim row3 As DataRowView = DirectCast(cmbunidad.SelectedItem, DataRowView)
        If txtnomprod.TextLength < 3 Then
            MsgBox("Debe ingresar un producto valido")
            Exit Sub
        End If

        Try
            sql = "insert into productos (DESCRIPCION,DPTO,SECCION,MEDIDAREFERENCIA,PORPESO,DESCATALOGADO)"
            sql = sql & " values ('" & txtnomprod.Text & "'," & row1.Item("numdpto") & "," & row2.Item("numseccion") & "," & row3.Item("idumedida") & ",'F','F' )"
                objconnn.ExecutarMySQLinsert(sql)

            MsgBox("Se Agrego Correctamente el Producto")
                Exit Sub

        Catch ex As System.Data.SQLite.SQLiteException
            MsgBox("Se Produjo un error de Transacción" & ex.Message)
            Exit Sub
        End Try


    End Sub

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Me.Close()
    End Sub
End Class