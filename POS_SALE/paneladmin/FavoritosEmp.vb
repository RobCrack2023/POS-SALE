Public Class FavoritosEmp

    Private Sub Favoritos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Cargadpto()
        cargabotones()
    End Sub

    Private Sub Cargadpto()
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select numdpto, descripcion  from pos_std.dpto where activo=1 order by descripcion"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        cmbdpto.DataSource = tablas
        cmbdpto.DisplayMember = "descripcion"
        cmbdpto.ValueMember = "numdpto"

    End Sub

    Private Sub cmbdpto_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmbdpto.SelectedIndexChanged
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable
        Dim row As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        sql = "select numseccion, descripcion  from pos_std.secciones where numdpto=" & row.Item("numdpto") & " order by descripcion"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        cmbseccion.DataSource = tablas
        cmbseccion.DisplayMember = "descripcion"
        cmbseccion.ValueMember = "numseccion"
    End Sub

    Private Sub cargabotones()
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable
        sql = "select idfavnodo,descrip from pos_std.emp_favnodo"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        lstbotones.DataSource = tablas
        lstbotones.DisplayMember = "descrip"
        lstbotones.ValueMember = "idfavnodo"

    End Sub
    Private Sub cargasubbotones(idfabbot As Integer)
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable
        sql = "select idfabsubnodo,descrip from pos_std.emp_fabsubnodo where idfavnodo=" & idfabbot
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        lstsubbotones.DataSource = tablas
        lstsubbotones.DisplayMember = "descrip"
        lstsubbotones.ValueMember = "idfabsubnodo"

    End Sub
    Private Sub cargaSeccionboton(idsubnodo As Integer)

        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable
        sql = "select   a.idfavseccion,b.descripcion    from pos_std.emp_favseccion a"
        sql = sql & " inner join pos_std.secciones b on a.idseccion=b.numseccion"
        sql = sql & " where a.idfavnodo=" & idsubnodo
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        lstseccion.DataSource = tablas
        lstseccion.DisplayMember = "descripcion"
        lstseccion.ValueMember = "idfavseccion"

    End Sub

    Private Sub lstbotones_Click(sender As Object, e As EventArgs) Handles lstbotones.Click
        lstsubbotones.DataSource = Nothing
        lstseccion.DataSource = Nothing

        Dim row As DataRowView = DirectCast(lstbotones.SelectedItem, DataRowView)
        cargasubbotones(row("idfavnodo").ToString)

    End Sub

    Private Sub btnaddbot_Click(sender As Object, e As EventArgs) Handles btnaddbot.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim msg As String

        msg = InputBox("Ingrese Nombre de Boton")
        If msg.Length > 3 Then
            Try
                sql = "insert into pos_std.emp_favnodo (Descrip) values('" & msg & "')"
                objconnn.executarmysqlinsert(sql)
                cargabotones()
                Exit Sub
            Catch ex As MySql.Data.MySqlClient.MySqlException
                MsgBox("Se Produjo un error de Transacción" & ex.Message)
                Exit Sub
            End Try
        End If
    End Sub

    Private Sub btnelibot_Click(sender As Object, e As EventArgs) Handles btnelibot.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        If Len(lstbotones.SelectedItem.ToString) > 0 Then
            Try
                sql = "delete from  pos_std.emp_favnodo where idfavnodo=" & lstbotones.SelectedValue
                objconnn.executarmysqlinsert(sql)
                cargabotones()
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
        If msg.Length > 2 Then
            Dim row As DataRowView = DirectCast(lstbotones.SelectedItem, DataRowView)
            Try
                sql = "update pos_std.emp_favnodo  set descrip='" & msg.ToString & "'   where idfavnodo=" & row.Item("idfavnodo").ToString
                objconnn.executarmysqlinsert(sql)
                cargabotones()
                Exit Sub
            Catch ex As MySql.Data.MySqlClient.MySqlException
                MsgBox("Se Produjo un error de Transacción" & ex.Message)
                Exit Sub
            End Try
        End If
    End Sub

    Private Sub btnagrsub_Click(sender As Object, e As EventArgs) Handles btnagrsub.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim msg As String

        msg = InputBox("Ingrese Nombre de Boton")
        If msg.Length > 2 Then
            Dim row As DataRowView = DirectCast(lstbotones.SelectedItem, DataRowView)
            Try
                sql = "insert into pos_std.emp_fabsubnodo (idfavnodo,descrip) value(" & row.Item("idfavnodo").ToString & ",'" & msg.ToString & "') "
                objconnn.executarmysqlinsert(sql)
                cargasubbotones(row.Item("idfavnodo").ToString)
                Exit Sub
            Catch ex As MySql.Data.MySqlClient.MySqlException
                MsgBox("Se Produjo un error de Transacción" & ex.Message)
                Exit Sub
            End Try
        End If
    End Sub

    Private Sub btnelisub_Click(sender As Object, e As EventArgs) Handles btnelisub.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim row As DataRowView = DirectCast(lstbotones.SelectedItem, DataRowView)
        If Len(lstsubbotones.SelectedItem.ToString) > 0 Then
            Try
                sql = "delete from  pos_std.emp_fabsubnodo where idfabsubnodo=" & lstsubbotones.SelectedValue
                objconnn.executarmysqlinsert(sql)
                cargasubbotones(row.Item("idfavnodo"))
                Exit Sub
            Catch ex As MySql.Data.MySqlClient.MySqlException
                MsgBox("Se Produjo un error de Transacción" & ex.Message)
                Exit Sub
            End Try
        End If
    End Sub

    Private Sub btneditsub_Click(sender As Object, e As EventArgs) Handles btneditsub.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim msg As String

        msg = InputBox("Ingrese Nombre de Boton")
        If msg.Length > 2 Then
            Dim row As DataRowView = DirectCast(lstsubbotones.SelectedItem, DataRowView)
            Dim row1 As DataRowView = DirectCast(lstbotones.SelectedItem, DataRowView)
            Try
                sql = "update pos_std.emp_fabsubnodo  set descrip='" & msg.ToString & "'   where idfabsubnodo=" & row.Item("idfabsubnodo").ToString
                objconnn.executarmysqlinsert(sql)
                cargasubbotones(row1.Item("idfavnodo"))
                Exit Sub
            Catch ex As MySql.Data.MySqlClient.MySqlException
                MsgBox("Se Produjo un error de Transacción" & ex.Message)
                Exit Sub
            End Try
        End If
    End Sub

    Private Sub btnasociar_Click(sender As Object, e As EventArgs) Handles btnasociar.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String

        Dim row As DataRowView = DirectCast(lstsubbotones.SelectedItem, DataRowView)
        Dim row1 As DataRowView = DirectCast(cmbseccion.SelectedItem, DataRowView)
        Dim row2 As DataRowView = DirectCast(cmbdpto.SelectedItem, DataRowView)
        Try
            sql = "INSERT INTO pos_std.emp_favseccion (idfavnodo,iddpto,idseccion)  values (" & row.Item("idfabsubnodo") & "," & row2.Item("numdpto") & "," & row1.Item("numseccion") & ")"
            objconnn.executarmysqlinsert(sql)
            cargaSeccionboton(row.Item("idfabsubnodo"))
            Exit Sub
        Catch ex As MySql.Data.MySqlClient.MySqlException
            MsgBox("Se Produjo un error de Transacción" & ex.Message)
            Exit Sub
        End Try
    End Sub

    Private Sub lstsubbotones_Click(sender As Object, e As EventArgs) Handles lstsubbotones.Click
        Dim row1 As DataRowView = DirectCast(lstsubbotones.SelectedItem, DataRowView)
        Dim idsubbotones As Integer = row1.Item("idfabsubnodo")
        cargaSeccionboton(idsubbotones)
    End Sub


    Private Sub btndesasociar_Click(sender As Object, e As EventArgs) Handles btndesasociar.Click
        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String

        Dim row As DataRowView = DirectCast(lstsubbotones.SelectedItem, DataRowView)
        Dim row1 As DataRowView = DirectCast(lstseccion.SelectedItem, DataRowView)
        Try
            sql = "delete from  pos_std.emp_favseccion where idfavseccion=" & row1.Item("idfavseccion")
            objconnn.executarmysqlinsert(sql)
            cargaSeccionboton(row.Item("idfabsubnodo"))
            Exit Sub
        Catch ex As MySql.Data.MySqlClient.MySqlException
            MsgBox("Se Produjo un error de Transacción" & ex.Message)
            Exit Sub
        End Try
    End Sub

    Private Sub btncerrar_Click(sender As Object, e As EventArgs) Handles btncerrar.Click
        Principal.Show()
        Me.Close()

    End Sub
End Class