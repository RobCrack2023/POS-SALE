<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class pedlocfecha
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
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.btncreareserva = New System.Windows.Forms.Button()
        Me.cmbturno = New System.Windows.Forms.ComboBox()
        Me.txtfecha = New System.Windows.Forms.DateTimePicker()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.PaleGreen
        Me.GroupBox1.Controls.Add(Me.btncerrar)
        Me.GroupBox1.Controls.Add(Me.btncreareserva)
        Me.GroupBox1.Controls.Add(Me.cmbturno)
        Me.GroupBox1.Controls.Add(Me.txtfecha)
        Me.GroupBox1.Location = New System.Drawing.Point(6, 5)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(7)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(7)
        Me.GroupBox1.Size = New System.Drawing.Size(763, 104)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Pedidos"
        '
        'btncerrar
        '
        Me.btncerrar.Location = New System.Drawing.Point(575, 38)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(155, 37)
        Me.btncerrar.TabIndex = 3
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'btncreareserva
        '
        Me.btncreareserva.Location = New System.Drawing.Point(405, 38)
        Me.btncreareserva.Name = "btncreareserva"
        Me.btncreareserva.Size = New System.Drawing.Size(155, 37)
        Me.btncreareserva.TabIndex = 2
        Me.btncreareserva.Text = "Pedido"
        Me.btncreareserva.UseVisualStyleBackColor = True
        '
        'cmbturno
        '
        Me.cmbturno.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbturno.FormattingEnabled = True
        Me.cmbturno.Location = New System.Drawing.Point(205, 37)
        Me.cmbturno.Name = "cmbturno"
        Me.cmbturno.Size = New System.Drawing.Size(184, 37)
        Me.cmbturno.TabIndex = 1
        '
        'txtfecha
        '
        Me.txtfecha.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.txtfecha.Location = New System.Drawing.Point(24, 37)
        Me.txtfecha.Margin = New System.Windows.Forms.Padding(7)
        Me.txtfecha.Name = "txtfecha"
        Me.txtfecha.Size = New System.Drawing.Size(171, 35)
        Me.txtfecha.TabIndex = 0
        '
        'pedlocfecha
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(14.0!, 29.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(774, 114)
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Margin = New System.Windows.Forms.Padding(7)
        Me.Name = "pedlocfecha"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Pedidos Local"
        Me.GroupBox1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents txtfecha As System.Windows.Forms.DateTimePicker
    Friend WithEvents cmbturno As System.Windows.Forms.ComboBox
    Friend WithEvents btncreareserva As System.Windows.Forms.Button
    Friend WithEvents btncerrar As System.Windows.Forms.Button
End Class
