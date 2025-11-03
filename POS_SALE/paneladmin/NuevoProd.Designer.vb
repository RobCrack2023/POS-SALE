<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmnuevoprod
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
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cmbseccion = New System.Windows.Forms.ComboBox()
        Me.cmbdpto = New System.Windows.Forms.ComboBox()
        Me.txtnomprod = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.btnnuevo = New System.Windows.Forms.Button()
        Me.lbunidad = New System.Windows.Forms.Label()
        Me.cmbunidad = New System.Windows.Forms.ComboBox()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(306, 7)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(99, 24)
        Me.Label2.TabIndex = 8
        Me.Label2.Text = "Secciones"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(41, 7)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(128, 24)
        Me.Label1.TabIndex = 7
        Me.Label1.Text = "Departamento"
        '
        'cmbseccion
        '
        Me.cmbseccion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbseccion.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbseccion.FormattingEnabled = True
        Me.cmbseccion.Location = New System.Drawing.Point(311, 35)
        Me.cmbseccion.Name = "cmbseccion"
        Me.cmbseccion.Size = New System.Drawing.Size(346, 32)
        Me.cmbseccion.TabIndex = 6
        '
        'cmbdpto
        '
        Me.cmbdpto.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbdpto.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbdpto.FormattingEnabled = True
        Me.cmbdpto.Location = New System.Drawing.Point(45, 35)
        Me.cmbdpto.Name = "cmbdpto"
        Me.cmbdpto.Size = New System.Drawing.Size(232, 32)
        Me.cmbdpto.TabIndex = 5
        '
        'txtnomprod
        '
        Me.txtnomprod.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtnomprod.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtnomprod.Location = New System.Drawing.Point(45, 155)
        Me.txtnomprod.MaxLength = 40
        Me.txtnomprod.Name = "txtnomprod"
        Me.txtnomprod.Size = New System.Drawing.Size(512, 29)
        Me.txtnomprod.TabIndex = 9
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(41, 128)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(160, 24)
        Me.Label3.TabIndex = 10
        Me.Label3.Text = "Nombre Producto"
        '
        'btnnuevo
        '
        Me.btnnuevo.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnnuevo.Location = New System.Drawing.Point(45, 200)
        Me.btnnuevo.Name = "btnnuevo"
        Me.btnnuevo.Size = New System.Drawing.Size(149, 34)
        Me.btnnuevo.TabIndex = 11
        Me.btnnuevo.Text = "Grabar"
        Me.btnnuevo.UseVisualStyleBackColor = True
        '
        'lbunidad
        '
        Me.lbunidad.AutoSize = True
        Me.lbunidad.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbunidad.Location = New System.Drawing.Point(307, 70)
        Me.lbunidad.Name = "lbunidad"
        Me.lbunidad.Size = New System.Drawing.Size(138, 24)
        Me.lbunidad.TabIndex = 13
        Me.lbunidad.Text = "Unidad Medida"
        '
        'cmbunidad
        '
        Me.cmbunidad.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbunidad.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbunidad.FormattingEnabled = True
        Me.cmbunidad.Location = New System.Drawing.Point(311, 97)
        Me.cmbunidad.Name = "cmbunidad"
        Me.cmbunidad.Size = New System.Drawing.Size(232, 32)
        Me.cmbunidad.TabIndex = 12
        '
        'btncerrar
        '
        Me.btncerrar.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btncerrar.Location = New System.Drawing.Point(408, 200)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(149, 34)
        Me.btncerrar.TabIndex = 14
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'frmnuevoprod
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(690, 246)
        Me.ControlBox = False
        Me.Controls.Add(Me.btncerrar)
        Me.Controls.Add(Me.lbunidad)
        Me.Controls.Add(Me.cmbunidad)
        Me.Controls.Add(Me.btnnuevo)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.txtnomprod)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.cmbseccion)
        Me.Controls.Add(Me.cmbdpto)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmnuevoprod"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Producto Nuevo"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents cmbseccion As System.Windows.Forms.ComboBox
    Friend WithEvents cmbdpto As System.Windows.Forms.ComboBox
    Friend WithEvents txtnomprod As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents btnnuevo As System.Windows.Forms.Button
    Friend WithEvents lbunidad As System.Windows.Forms.Label
    Friend WithEvents cmbunidad As System.Windows.Forms.ComboBox
    Friend WithEvents btncerrar As System.Windows.Forms.Button
End Class
