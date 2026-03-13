<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Configuracion
    Inherits System.Windows.Forms.Form

    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    Private components As System.ComponentModel.IContainer

    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.GroupBoxApi = New System.Windows.Forms.GroupBox()
        Me.txturlapi = New System.Windows.Forms.TextBox()
        Me.btnsaveurl = New System.Windows.Forms.Button()
        Me.GroupBoxImp = New System.Windows.Forms.GroupBox()
        Me.lbimprpt = New System.Windows.Forms.Label()
        Me.lbimpticket = New System.Windows.Forms.Label()
        Me.btnimprpt = New System.Windows.Forms.Button()
        Me.cmbimpresora2 = New System.Windows.Forms.ComboBox()
        Me.cmbimpresora1 = New System.Windows.Forms.ComboBox()
        Me.btnimpticket = New System.Windows.Forms.Button()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.Panel2.SuspendLayout()
        Me.GroupBoxApi.SuspendLayout()
        Me.GroupBoxImp.SuspendLayout()
        Me.SuspendLayout()
        '
        'Panel2
        '
        Me.Panel2.BackColor = System.Drawing.Color.Tan
        Me.Panel2.Controls.Add(Me.GroupBoxApi)
        Me.Panel2.Controls.Add(Me.GroupBoxImp)
        Me.Panel2.Controls.Add(Me.btncerrar)
        Me.Panel2.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Panel2.Location = New System.Drawing.Point(0, 0)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(799, 313)
        Me.Panel2.TabIndex = 0
        '
        'GroupBoxApi
        '
        Me.GroupBoxApi.Controls.Add(Me.txturlapi)
        Me.GroupBoxApi.Controls.Add(Me.btnsaveurl)
        Me.GroupBoxApi.Location = New System.Drawing.Point(12, 8)
        Me.GroupBoxApi.Name = "GroupBoxApi"
        Me.GroupBoxApi.Size = New System.Drawing.Size(770, 66)
        Me.GroupBoxApi.TabIndex = 0
        Me.GroupBoxApi.TabStop = False
        Me.GroupBoxApi.Text = "Servidor API"
        '
        'txturlapi
        '
        Me.txturlapi.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txturlapi.Location = New System.Drawing.Point(16, 24)
        Me.txturlapi.Name = "txturlapi"
        Me.txturlapi.Size = New System.Drawing.Size(590, 26)
        Me.txturlapi.TabIndex = 0
        '
        'btnsaveurl
        '
        Me.btnsaveurl.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnsaveurl.Location = New System.Drawing.Point(622, 22)
        Me.btnsaveurl.Name = "btnsaveurl"
        Me.btnsaveurl.Size = New System.Drawing.Size(130, 32)
        Me.btnsaveurl.TabIndex = 1
        Me.btnsaveurl.Text = "Guardar URL"
        Me.btnsaveurl.UseVisualStyleBackColor = True
        '
        'GroupBoxImp
        '
        Me.GroupBoxImp.Controls.Add(Me.lbimprpt)
        Me.GroupBoxImp.Controls.Add(Me.lbimpticket)
        Me.GroupBoxImp.Controls.Add(Me.btnimprpt)
        Me.GroupBoxImp.Controls.Add(Me.cmbimpresora2)
        Me.GroupBoxImp.Controls.Add(Me.cmbimpresora1)
        Me.GroupBoxImp.Controls.Add(Me.btnimpticket)
        Me.GroupBoxImp.Location = New System.Drawing.Point(12, 84)
        Me.GroupBoxImp.Name = "GroupBoxImp"
        Me.GroupBoxImp.Size = New System.Drawing.Size(770, 148)
        Me.GroupBoxImp.TabIndex = 1
        Me.GroupBoxImp.TabStop = False
        Me.GroupBoxImp.Text = "Impresoras"
        '
        'lbimprpt
        '
        Me.lbimprpt.AutoSize = True
        Me.lbimprpt.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbimprpt.Location = New System.Drawing.Point(490, 97)
        Me.lbimprpt.Name = "lbimprpt"
        Me.lbimprpt.Size = New System.Drawing.Size(114, 20)
        Me.lbimprpt.TabIndex = 5
        Me.lbimprpt.Text = "(sin configurar)"
        '
        'lbimpticket
        '
        Me.lbimpticket.AutoSize = True
        Me.lbimpticket.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbimpticket.Location = New System.Drawing.Point(490, 49)
        Me.lbimpticket.Name = "lbimpticket"
        Me.lbimpticket.Size = New System.Drawing.Size(114, 20)
        Me.lbimpticket.TabIndex = 4
        Me.lbimpticket.Text = "(sin configurar)"
        '
        'btnimprpt
        '
        Me.btnimprpt.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnimprpt.Location = New System.Drawing.Point(344, 91)
        Me.btnimprpt.Name = "btnimprpt"
        Me.btnimprpt.Size = New System.Drawing.Size(130, 32)
        Me.btnimprpt.TabIndex = 3
        Me.btnimprpt.Text = "Guardar Reporte"
        Me.btnimprpt.UseVisualStyleBackColor = True
        '
        'cmbimpresora2
        '
        Me.cmbimpresora2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbimpresora2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbimpresora2.FormattingEnabled = True
        Me.cmbimpresora2.Location = New System.Drawing.Point(16, 93)
        Me.cmbimpresora2.Name = "cmbimpresora2"
        Me.cmbimpresora2.Size = New System.Drawing.Size(310, 28)
        Me.cmbimpresora2.TabIndex = 2
        '
        'cmbimpresora1
        '
        Me.cmbimpresora1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbimpresora1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbimpresora1.FormattingEnabled = True
        Me.cmbimpresora1.Location = New System.Drawing.Point(16, 45)
        Me.cmbimpresora1.Name = "cmbimpresora1"
        Me.cmbimpresora1.Size = New System.Drawing.Size(310, 28)
        Me.cmbimpresora1.TabIndex = 0
        '
        'btnimpticket
        '
        Me.btnimpticket.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnimpticket.Location = New System.Drawing.Point(344, 43)
        Me.btnimpticket.Name = "btnimpticket"
        Me.btnimpticket.Size = New System.Drawing.Size(130, 32)
        Me.btnimpticket.TabIndex = 1
        Me.btnimpticket.Text = "Guardar Ticket"
        Me.btnimpticket.UseVisualStyleBackColor = True
        '
        'btncerrar
        '
        Me.btncerrar.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btncerrar.Location = New System.Drawing.Point(652, 254)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(130, 36)
        Me.btncerrar.TabIndex = 2
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'Configuracion
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(799, 313)
        Me.ControlBox = False
        Me.Controls.Add(Me.Panel2)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Name = "Configuracion"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Configuración"
        Me.Panel2.ResumeLayout(False)
        Me.GroupBoxApi.ResumeLayout(False)
        Me.GroupBoxApi.PerformLayout()
        Me.GroupBoxImp.ResumeLayout(False)
        Me.GroupBoxImp.PerformLayout()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents Panel2 As System.Windows.Forms.Panel
    Friend WithEvents GroupBoxApi As System.Windows.Forms.GroupBox
    Friend WithEvents txturlapi As System.Windows.Forms.TextBox
    Friend WithEvents btnsaveurl As System.Windows.Forms.Button
    Friend WithEvents GroupBoxImp As System.Windows.Forms.GroupBox
    Friend WithEvents cmbimpresora1 As System.Windows.Forms.ComboBox
    Friend WithEvents btnimpticket As System.Windows.Forms.Button
    Friend WithEvents cmbimpresora2 As System.Windows.Forms.ComboBox
    Friend WithEvents btnimprpt As System.Windows.Forms.Button
    Friend WithEvents lbimpticket As System.Windows.Forms.Label
    Friend WithEvents lbimprpt As System.Windows.Forms.Label
    Friend WithEvents btncerrar As System.Windows.Forms.Button
End Class
