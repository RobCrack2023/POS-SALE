Public Class Dptosecciones

    Private Sub Dptosecciones_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Cargadpto()
    End Sub
    Private Sub Cargadpto()
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select numdpto, descripcion  from dpto where activo=1 order by descripcion"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        lstdpto.DataSource = tablas
        lstdpto.DisplayMember = "descripcion"
        lstdpto.ValueMember = "numdpto"

    End Sub

    Private Sub lstdpto_Click(sender As Object, e As EventArgs) Handles lstdpto.Click

        Dim row As DataRowView = DirectCast(lstdpto.SelectedItem, DataRowView)
        CargaSecciones(row.Item("numdpto"))
        
    End Sub
    Private Sub CargaSecciones(iddpto As Integer)
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable
        sql = "select numseccion, descripcion  from secciones where numdpto=" & iddpto & " order by descripcion"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        lstseccion.DataSource = tablas
        lstseccion.DisplayMember = "descripcion"
        lstseccion.ValueMember = "numseccion"

    End Sub

    Private Sub btnaddbot_Click(sender As Object, e As EventArgs) Handles btnaddbot.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim msg As String

        msg = InputBox("Ingrese Nombre de Dpto")
        If msg.Length > 3 Then
            Try
                sql = "insert into dpto (descripcion,activo) values('" & msg & "',1)"
                objconnn.executarmysqlinsert(sql)
                Cargadpto()
                Exit Sub
            Catch ex As MySql.Data.MySqlClient.MySqlException
                MsgBox("Se Produjo un error de Transacción" & ex.Message)
                Exit Sub
            End Try
        End If
    End Sub

    Private Sub bteditbot_Click(sender As Object, e As EventArgs) Handles bteditbot.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim msg As String

        msg = InputBox("Ingrese Nombre de Boton")
        If msg.Length > 3 Then
            Dim row As DataRowView = DirectCast(lstdpto.SelectedItem, DataRowView)
            Try
                sql = "update dpto  set descripcion='" & msg.ToString & "'   where numdpto=" & row.Item("numdpto").ToString
                objconnn.executarmysqlinsert(sql)
                Cargadpto()
                Exit Sub
            Catch ex As MySql.Data.MySqlClient.MySqlException
                MsgBox("Se Produjo un error de Transacción" & ex.Message)
                Exit Sub
            End Try
        End If
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles btnagrseccion.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim msg As String

        msg = InputBox("Ingrese Nombre de Sección")
        If msg.Length > 3 Then
            Dim row As DataRowView = DirectCast(lstdpto.SelectedItem, DataRowView)

            Try
                sql = "insert into secciones (numdpto,descripcion) value(" & row.Item("numdpto") & ",'" & msg.ToString & "') "
                objconnn.executarmysqlinsert(sql)
                CargaSecciones(row.Item("numdpto"))
                Exit Sub
            Catch ex As MySql.Data.MySqlClient.MySqlException
                MsgBox("Se Produjo un error de Transacción" & ex.Message)
                Exit Sub
            End Try
        End If

    End Sub

    Private Sub btneditseccion_Click(sender As Object, e As EventArgs) Handles btneditseccion.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim msg As String

        msg = InputBox("Ingrese Nombre de Sección")
        If msg.Length > 3 Then
            Dim row As DataRowView = DirectCast(lstdpto.SelectedItem, DataRowView)
            Dim row2 As DataRowView = DirectCast(lstseccion.SelectedItem, DataRowView)

            Try
                sql = "update secciones set descripcion='" & msg.ToString & "' where numdpto=" & row.Item("numdpto") & " and numseccion=" & row2.Item("numseccion")
                objconnn.executarmysqlinsert(sql)
                CargaSecciones(row.Item("numdpto"))
                Exit Sub
            Catch ex As MySql.Data.MySqlClient.MySqlException
                MsgBox("Se Produjo un error de Transacción" & ex.Message)
                Exit Sub
            End Try
        End If
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Me.Close()
    End Sub

    Private Sub btneliseccion_Click(sender As Object, e As EventArgs) Handles btneliseccion.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim row As DataRowView = DirectCast(lstseccion.SelectedItem, DataRowView)
        sql = "delete from  secciones  where numseccion=" & row.Item("numseccion")
        objconnn.executarmysqlinsert(sql)
    End Sub

End Class