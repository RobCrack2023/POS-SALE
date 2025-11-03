Public Class Despacho
    Public idcabped As Integer
    Private Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        Me.Close()
    End Sub

    Private Sub btngrabar_Click(sender As Object, e As EventArgs) Handles btngrabar.Click

        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String


        If IsTime(txthrssalida.Text) = False Then

            MsgBox("La hora no es valida", MsgBoxStyle.Critical)
            Exit Sub
        End If
        If txthrssalida.Text.Length < 4 Then

            MsgBox("La hora no es valida", MsgBoxStyle.Critical)
            Exit Sub
        End If

        If txtpatente.Text.Length < 6 Then

            MsgBox("La patente no es valida", MsgBoxStyle.Critical)
            Exit Sub
        End If


        sql = "update pedidolocal_cab set estadopedloc=5,idusr_desp=" & usr & ",fec_desp='" & Format(Now(), "yyyy-MM-dd") & "', hrs_desp='" & Format(Now(), "HH:mm") & "' and chofer_desp=" & cmbconductor.SelectedValue & "  and   patente_desp='" & txtpatente.Text & "'   where idpedido_cab=" & idcabped
        objconnn.executarmysqlinsert(sql)


        MsgBox("Datos Correctamente ingresado", MsgBoxStyle.Information)
        Me.Close()


    End Sub
    Public Function IsTime(ByVal StrTemp As String) As Boolean

        Dim StrShortTime As String

        IsTime = False
        StrTemp = Trim(StrTemp)

        If StrTemp <> vbNullString Then
            If IsDate(StrTemp) Then
                StrShortTime = Format(StrTemp, vbShortTime)
                If StrShortTime = "00:00" Then
                    If (StrTemp = "0:00") Or (StrTemp = "00:00") Then
                        IsTime = True
                    End If
                Else
                    IsTime = True
                End If
            End If
        End If

    End Function
    Private Sub CargaConductores()

        Dim objconnn As DBCONECTAR = New DBCONECTAR
        Dim sql As String
        Dim dptoob As MySql.Data.MySqlClient.MySqlDataReader
        Dim tablas As DataTable = New DataTable

        sql = "select id_pedconductores, nombre  from ped_conductores order by nombre"
        dptoob = objconnn.executarmysql(sql)
        tablas.Load(dptoob)
        cmbconductor.DataSource = tablas
        cmbconductor.DisplayMember = "nombre"
        cmbconductor.ValueMember = "id_pedconductores"

    End Sub

    Private Sub Despacho_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CargaConductores()

        txthrssalida.Text = Format(Now(), "HH:mm")

    End Sub
End Class