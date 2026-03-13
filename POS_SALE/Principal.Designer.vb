<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Principal
    Inherits System.Windows.Forms.Form

    <System.Diagnostics.DebuggerNonUserCode()>
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

    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.btnconf = New System.Windows.Forms.Button()
        Me.btnupdate = New System.Windows.Forms.Button()
        Me.btnactestructura = New System.Windows.Forms.Button()
        Me.btnsalir = New System.Windows.Forms.Button()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.Color.CornflowerBlue
        Me.Panel1.Controls.Add(Me.btnconf)
        Me.Panel1.Controls.Add(Me.btnupdate)
        Me.Panel1.Controls.Add(Me.btnactestructura)
        Me.Panel1.Controls.Add(Me.btnsalir)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(539, 274)
        Me.Panel1.TabIndex = 0
        '
        'btnconf
        '
        Me.btnconf.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnconf.Image = Global.StrindbergNet.My.Resources.Resources.toolbox
        Me.btnconf.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnconf.Location = New System.Drawing.Point(30, 24)
        Me.btnconf.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.btnconf.Name = "btnconf"
        Me.btnconf.Size = New System.Drawing.Size(202, 73)
        Me.btnconf.TabIndex = 0
        Me.btnconf.Text = "Configuración"
        Me.btnconf.UseVisualStyleBackColor = True
        '
        'btnupdate
        '
        Me.btnupdate.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnupdate.Image = Global.StrindbergNet.My.Resources.Resources.update
        Me.btnupdate.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnupdate.Location = New System.Drawing.Point(262, 24)
        Me.btnupdate.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.btnupdate.Name = "btnupdate"
        Me.btnupdate.Size = New System.Drawing.Size(202, 73)
        Me.btnupdate.TabIndex = 1
        Me.btnupdate.Text = "Actualizar"
        Me.btnupdate.UseVisualStyleBackColor = True
        '
        'btnactestructura
        '
        Me.btnactestructura.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnactestructura.Image = Global.StrindbergNet.My.Resources.Resources.update
        Me.btnactestructura.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnactestructura.Location = New System.Drawing.Point(30, 118)
        Me.btnactestructura.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.btnactestructura.Name = "btnactestructura"
        Me.btnactestructura.Size = New System.Drawing.Size(202, 73)
        Me.btnactestructura.TabIndex = 2
        Me.btnactestructura.Text = "Actualizar Estructura"
        Me.btnactestructura.UseVisualStyleBackColor = True
        '
        'btnsalir
        '
        Me.btnsalir.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnsalir.Image = Global.StrindbergNet.My.Resources.Resources.cancel
        Me.btnsalir.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnsalir.Location = New System.Drawing.Point(262, 118)
        Me.btnsalir.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.btnsalir.Name = "btnsalir"
        Me.btnsalir.Size = New System.Drawing.Size(202, 73)
        Me.btnsalir.TabIndex = 3
        Me.btnsalir.Text = "Salir"
        Me.btnsalir.UseVisualStyleBackColor = True
        '
        'Principal
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(539, 274)
        Me.ControlBox = False
        Me.Controls.Add(Me.Panel1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Margin = New System.Windows.Forms.Padding(2, 2, 2, 2)
        Me.Name = "Principal"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Principal"
        Me.Panel1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents btnconf As System.Windows.Forms.Button
    Friend WithEvents btnupdate As System.Windows.Forms.Button
    Friend WithEvents btnactestructura As System.Windows.Forms.Button
    Friend WithEvents btnsalir As System.Windows.Forms.Button
End Class
