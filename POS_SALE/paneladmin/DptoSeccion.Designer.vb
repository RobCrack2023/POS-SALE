<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Dptosecciones
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
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

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.lstdpto = New System.Windows.Forms.ListBox()
        Me.lstseccion = New System.Windows.Forms.ListBox()
        Me.btnelibot = New System.Windows.Forms.Button()
        Me.bteditbot = New System.Windows.Forms.Button()
        Me.btnaddbot = New System.Windows.Forms.Button()
        Me.btneliseccion = New System.Windows.Forms.Button()
        Me.btneditseccion = New System.Windows.Forms.Button()
        Me.btnagrseccion = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'lstdpto
        '
        Me.lstdpto.FormattingEnabled = True
        Me.lstdpto.Location = New System.Drawing.Point(25, 19)
        Me.lstdpto.Name = "lstdpto"
        Me.lstdpto.Size = New System.Drawing.Size(277, 277)
        Me.lstdpto.TabIndex = 0
        '
        'lstseccion
        '
        Me.lstseccion.FormattingEnabled = True
        Me.lstseccion.Location = New System.Drawing.Point(384, 19)
        Me.lstseccion.Name = "lstseccion"
        Me.lstseccion.Size = New System.Drawing.Size(315, 277)
        Me.lstseccion.TabIndex = 1
        '
        'btnelibot
        '
        Me.btnelibot.Image = Global.StrindbergNet.My.Resources.Resources.database_delete
        Me.btnelibot.Location = New System.Drawing.Point(149, 302)
        Me.btnelibot.Name = "btnelibot"
        Me.btnelibot.Size = New System.Drawing.Size(48, 37)
        Me.btnelibot.TabIndex = 19
        Me.btnelibot.UseVisualStyleBackColor = True
        '
        'bteditbot
        '
        Me.bteditbot.Image = Global.StrindbergNet.My.Resources.Resources.database_edit
        Me.bteditbot.Location = New System.Drawing.Point(86, 302)
        Me.bteditbot.Name = "bteditbot"
        Me.bteditbot.Size = New System.Drawing.Size(51, 37)
        Me.bteditbot.TabIndex = 18
        Me.bteditbot.UseVisualStyleBackColor = True
        '
        'btnaddbot
        '
        Me.btnaddbot.Image = Global.StrindbergNet.My.Resources.Resources.database_add
        Me.btnaddbot.Location = New System.Drawing.Point(25, 302)
        Me.btnaddbot.Name = "btnaddbot"
        Me.btnaddbot.Size = New System.Drawing.Size(55, 37)
        Me.btnaddbot.TabIndex = 17
        Me.btnaddbot.UseVisualStyleBackColor = True
        '
        'btneliseccion
        '
        Me.btneliseccion.Image = Global.StrindbergNet.My.Resources.Resources.database_delete
        Me.btneliseccion.Location = New System.Drawing.Point(509, 302)
        Me.btneliseccion.Name = "btneliseccion"
        Me.btneliseccion.Size = New System.Drawing.Size(48, 37)
        Me.btneliseccion.TabIndex = 22
        Me.btneliseccion.UseVisualStyleBackColor = True
        '
        'btneditseccion
        '
        Me.btneditseccion.Image = Global.StrindbergNet.My.Resources.Resources.database_edit
        Me.btneditseccion.Location = New System.Drawing.Point(446, 302)
        Me.btneditseccion.Name = "btneditseccion"
        Me.btneditseccion.Size = New System.Drawing.Size(51, 37)
        Me.btneditseccion.TabIndex = 21
        Me.btneditseccion.UseVisualStyleBackColor = True
        '
        'btnagrseccion
        '
        Me.btnagrseccion.Image = Global.StrindbergNet.My.Resources.Resources.database_add
        Me.btnagrseccion.Location = New System.Drawing.Point(385, 302)
        Me.btnagrseccion.Name = "btnagrseccion"
        Me.btnagrseccion.Size = New System.Drawing.Size(55, 37)
        Me.btnagrseccion.TabIndex = 20
        Me.btnagrseccion.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Image = Global.StrindbergNet.My.Resources.Resources.cross
        Me.Button1.Location = New System.Drawing.Point(651, 302)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(48, 37)
        Me.Button1.TabIndex = 23
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Dptosecciones
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(771, 388)
        Me.ControlBox = False
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.btneliseccion)
        Me.Controls.Add(Me.btneditseccion)
        Me.Controls.Add(Me.btnagrseccion)
        Me.Controls.Add(Me.btnelibot)
        Me.Controls.Add(Me.bteditbot)
        Me.Controls.Add(Me.btnaddbot)
        Me.Controls.Add(Me.lstseccion)
        Me.Controls.Add(Me.lstdpto)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Name = "Dptosecciones"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Dpto. Secciones"
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents lstdpto As System.Windows.Forms.ListBox
    Friend WithEvents lstseccion As System.Windows.Forms.ListBox
    Friend WithEvents btnelibot As System.Windows.Forms.Button
    Friend WithEvents bteditbot As System.Windows.Forms.Button
    Friend WithEvents btnaddbot As System.Windows.Forms.Button
    Friend WithEvents btneliseccion As System.Windows.Forms.Button
    Friend WithEvents btneditseccion As System.Windows.Forms.Button
    Friend WithEvents btnagrseccion As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
End Class
