<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FavoritosPedidos
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
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.btndesasociar = New System.Windows.Forms.Button()
        Me.btnasociar = New System.Windows.Forms.Button()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cmbseccion = New System.Windows.Forms.ComboBox()
        Me.cmbdpto = New System.Windows.Forms.ComboBox()
        Me.lstbotones = New System.Windows.Forms.ListBox()
        Me.lstseccion = New System.Windows.Forms.ListBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.lstsubbotones = New System.Windows.Forms.ListBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.bteditbot = New System.Windows.Forms.Button()
        Me.btnelibot = New System.Windows.Forms.Button()
        Me.btnaddbot = New System.Windows.Forms.Button()
        Me.btnelisub = New System.Windows.Forms.Button()
        Me.btneditsub = New System.Windows.Forms.Button()
        Me.btnagrsub = New System.Windows.Forms.Button()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.GroupBox2.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.btncerrar)
        Me.GroupBox2.Controls.Add(Me.btndesasociar)
        Me.GroupBox2.Controls.Add(Me.btnasociar)
        Me.GroupBox2.Controls.Add(Me.Label2)
        Me.GroupBox2.Controls.Add(Me.Label1)
        Me.GroupBox2.Controls.Add(Me.cmbseccion)
        Me.GroupBox2.Controls.Add(Me.cmbdpto)
        Me.GroupBox2.Location = New System.Drawing.Point(687, 43)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(289, 309)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        '
        'btncerrar
        '
        Me.btncerrar.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btncerrar.Image = Global.StrindbergNet.My.Resources.Resources.cross
        Me.btncerrar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btncerrar.Location = New System.Drawing.Point(26, 254)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(96, 38)
        Me.btncerrar.TabIndex = 13
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'btndesasociar
        '
        Me.btndesasociar.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btndesasociar.Location = New System.Drawing.Point(156, 173)
        Me.btndesasociar.Name = "btndesasociar"
        Me.btndesasociar.Size = New System.Drawing.Size(100, 32)
        Me.btndesasociar.TabIndex = 12
        Me.btndesasociar.Text = "Desasociar"
        Me.btndesasociar.UseVisualStyleBackColor = True
        '
        'btnasociar
        '
        Me.btnasociar.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnasociar.Location = New System.Drawing.Point(26, 173)
        Me.btnasociar.Name = "btnasociar"
        Me.btnasociar.Size = New System.Drawing.Size(94, 32)
        Me.btnasociar.TabIndex = 10
        Me.btnasociar.Text = "Asociar"
        Me.btnasociar.UseVisualStyleBackColor = True
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(20, 87)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(83, 20)
        Me.Label2.TabIndex = 8
        Me.Label2.Text = "Secciones"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(20, 23)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(112, 20)
        Me.Label1.TabIndex = 7
        Me.Label1.Text = "Departamento"
        '
        'cmbseccion
        '
        Me.cmbseccion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbseccion.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbseccion.FormattingEnabled = True
        Me.cmbseccion.Location = New System.Drawing.Point(24, 110)
        Me.cmbseccion.Name = "cmbseccion"
        Me.cmbseccion.Size = New System.Drawing.Size(253, 24)
        Me.cmbseccion.TabIndex = 6
        '
        'cmbdpto
        '
        Me.cmbdpto.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbdpto.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbdpto.FormattingEnabled = True
        Me.cmbdpto.Location = New System.Drawing.Point(24, 46)
        Me.cmbdpto.Name = "cmbdpto"
        Me.cmbdpto.Size = New System.Drawing.Size(223, 24)
        Me.cmbdpto.TabIndex = 5
        '
        'lstbotones
        '
        Me.lstbotones.FormattingEnabled = True
        Me.lstbotones.Location = New System.Drawing.Point(40, 54)
        Me.lstbotones.Name = "lstbotones"
        Me.lstbotones.Size = New System.Drawing.Size(172, 329)
        Me.lstbotones.TabIndex = 2
        '
        'lstseccion
        '
        Me.lstseccion.FormattingEnabled = True
        Me.lstseccion.Location = New System.Drawing.Point(461, 54)
        Me.lstseccion.Name = "lstseccion"
        Me.lstseccion.Size = New System.Drawing.Size(197, 329)
        Me.lstseccion.TabIndex = 3
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(36, 31)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(69, 20)
        Me.Label4.TabIndex = 10
        Me.Label4.Text = "Botones"
        '
        'lstsubbotones
        '
        Me.lstsubbotones.FormattingEnabled = True
        Me.lstsubbotones.Location = New System.Drawing.Point(251, 54)
        Me.lstsubbotones.Name = "lstsubbotones"
        Me.lstsubbotones.Size = New System.Drawing.Size(172, 329)
        Me.lstsubbotones.TabIndex = 11
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(247, 31)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(102, 20)
        Me.Label5.TabIndex = 12
        Me.Label5.Text = "Sub Botones"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(457, 31)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(83, 20)
        Me.Label6.TabIndex = 13
        Me.Label6.Text = "Secciones"
        '
        'bteditbot
        '
        Me.bteditbot.Image = Global.StrindbergNet.My.Resources.Resources.database_edit
        Me.bteditbot.Location = New System.Drawing.Point(101, 389)
        Me.bteditbot.Name = "bteditbot"
        Me.bteditbot.Size = New System.Drawing.Size(51, 37)
        Me.bteditbot.TabIndex = 15
        Me.bteditbot.UseVisualStyleBackColor = True
        '
        'btnelibot
        '
        Me.btnelibot.Image = Global.StrindbergNet.My.Resources.Resources.database_delete
        Me.btnelibot.Location = New System.Drawing.Point(164, 389)
        Me.btnelibot.Name = "btnelibot"
        Me.btnelibot.Size = New System.Drawing.Size(48, 37)
        Me.btnelibot.TabIndex = 16
        Me.btnelibot.UseVisualStyleBackColor = True
        '
        'btnaddbot
        '
        Me.btnaddbot.Image = Global.StrindbergNet.My.Resources.Resources.database_add
        Me.btnaddbot.Location = New System.Drawing.Point(40, 389)
        Me.btnaddbot.Name = "btnaddbot"
        Me.btnaddbot.Size = New System.Drawing.Size(55, 37)
        Me.btnaddbot.TabIndex = 14
        Me.btnaddbot.UseVisualStyleBackColor = True
        '
        'btnelisub
        '
        Me.btnelisub.Image = Global.StrindbergNet.My.Resources.Resources.database_delete
        Me.btnelisub.Location = New System.Drawing.Point(375, 389)
        Me.btnelisub.Name = "btnelisub"
        Me.btnelisub.Size = New System.Drawing.Size(48, 37)
        Me.btnelisub.TabIndex = 19
        Me.btnelisub.UseVisualStyleBackColor = True
        '
        'btneditsub
        '
        Me.btneditsub.Image = Global.StrindbergNet.My.Resources.Resources.database_edit
        Me.btneditsub.Location = New System.Drawing.Point(312, 389)
        Me.btneditsub.Name = "btneditsub"
        Me.btneditsub.Size = New System.Drawing.Size(51, 37)
        Me.btneditsub.TabIndex = 18
        Me.btneditsub.UseVisualStyleBackColor = True
        '
        'btnagrsub
        '
        Me.btnagrsub.Image = Global.StrindbergNet.My.Resources.Resources.database_add
        Me.btnagrsub.Location = New System.Drawing.Point(251, 389)
        Me.btnagrsub.Name = "btnagrsub"
        Me.btnagrsub.Size = New System.Drawing.Size(55, 37)
        Me.btnagrsub.TabIndex = 17
        Me.btnagrsub.UseVisualStyleBackColor = True
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(683, 31)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(140, 20)
        Me.Label3.TabIndex = 20
        Me.Label3.Text = "Asociar Secciones"
        '
        'FavoritosPedidos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(982, 479)
        Me.ControlBox = False
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.btnelisub)
        Me.Controls.Add(Me.btneditsub)
        Me.Controls.Add(Me.btnagrsub)
        Me.Controls.Add(Me.btnelibot)
        Me.Controls.Add(Me.bteditbot)
        Me.Controls.Add(Me.btnaddbot)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.lstsubbotones)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.lstseccion)
        Me.Controls.Add(Me.lstbotones)
        Me.Controls.Add(Me.GroupBox2)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Name = "FavoritosPedidos"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Favoritos Pedidos"
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents cmbseccion As System.Windows.Forms.ComboBox
    Friend WithEvents cmbdpto As System.Windows.Forms.ComboBox
    Friend WithEvents btndesasociar As System.Windows.Forms.Button
    Friend WithEvents btnasociar As System.Windows.Forms.Button
    Friend WithEvents lstbotones As System.Windows.Forms.ListBox
    Friend WithEvents lstseccion As System.Windows.Forms.ListBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents lstsubbotones As System.Windows.Forms.ListBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents btnaddbot As System.Windows.Forms.Button
    Friend WithEvents bteditbot As System.Windows.Forms.Button
    Friend WithEvents btnelibot As System.Windows.Forms.Button
    Friend WithEvents btnelisub As System.Windows.Forms.Button
    Friend WithEvents btneditsub As System.Windows.Forms.Button
    Friend WithEvents btnagrsub As System.Windows.Forms.Button
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents btncerrar As System.Windows.Forms.Button
End Class
