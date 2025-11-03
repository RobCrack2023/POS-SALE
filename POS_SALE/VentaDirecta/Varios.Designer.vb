<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Varios

    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
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

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.GroupBox4 = New System.Windows.Forms.GroupBox()
        Me.btnSalir = New System.Windows.Forms.Button()
        Me.btnseleccionar = New System.Windows.Forms.Button()
        Me.GridPersonal = New System.Windows.Forms.DataGridView()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.btnActivarSuc = New System.Windows.Forms.Button()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        CType(Me.GridPersonal, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox3.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.Gold
        Me.GroupBox1.Location = New System.Drawing.Point(7, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(770, 162)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Iniciales,(busque por apellido Paterno)"
        '
        'GroupBox2
        '
        Me.GroupBox2.BackColor = System.Drawing.Color.Khaki
        Me.GroupBox2.Controls.Add(Me.GroupBox4)
        Me.GroupBox2.Controls.Add(Me.GridPersonal)
        Me.GroupBox2.Location = New System.Drawing.Point(4, 180)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(903, 335)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Personas"
        '
        'GroupBox4
        '
        Me.GroupBox4.BackColor = System.Drawing.Color.PaleTurquoise
        Me.GroupBox4.Controls.Add(Me.btnSalir)
        Me.GroupBox4.Controls.Add(Me.btnseleccionar)
        Me.GroupBox4.Location = New System.Drawing.Point(744, 25)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(152, 307)
        Me.GroupBox4.TabIndex = 1
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Seleccionar"
        '
        'btnSalir
        '
        Me.btnSalir.BackColor = System.Drawing.Color.Tomato
        Me.btnSalir.Location = New System.Drawing.Point(13, 127)
        Me.btnSalir.Name = "btnSalir"
        Me.btnSalir.Size = New System.Drawing.Size(126, 53)
        Me.btnSalir.TabIndex = 1
        Me.btnSalir.Text = "Salir"
        Me.btnSalir.UseVisualStyleBackColor = False
        '
        'btnseleccionar
        '
        Me.btnseleccionar.BackColor = System.Drawing.Color.SteelBlue
        Me.btnseleccionar.Location = New System.Drawing.Point(14, 53)
        Me.btnseleccionar.Name = "btnseleccionar"
        Me.btnseleccionar.Size = New System.Drawing.Size(126, 53)
        Me.btnseleccionar.TabIndex = 0
        Me.btnseleccionar.Text = "Seleccionar"
        Me.btnseleccionar.UseVisualStyleBackColor = False
        '
        'GridPersonal
        '
        Me.GridPersonal.AllowUserToAddRows = False
        Me.GridPersonal.AllowUserToDeleteRows = False
        Me.GridPersonal.AllowUserToResizeColumns = False
        Me.GridPersonal.AllowUserToResizeRows = False
        Me.GridPersonal.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.GridPersonal.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        Me.GridPersonal.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.GridPersonal.Location = New System.Drawing.Point(3, 22)
        Me.GridPersonal.MultiSelect = False
        Me.GridPersonal.Name = "GridPersonal"
        Me.GridPersonal.ReadOnly = True
        Me.GridPersonal.RowHeadersVisible = False
        Me.GridPersonal.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToAllHeaders
        DataGridViewCellStyle1.Font = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GridPersonal.RowsDefaultCellStyle = DataGridViewCellStyle1
        Me.GridPersonal.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.GridPersonal.ShowCellToolTips = False
        Me.GridPersonal.ShowEditingIcon = False
        Me.GridPersonal.ShowRowErrors = False
        Me.GridPersonal.Size = New System.Drawing.Size(729, 310)
        Me.GridPersonal.TabIndex = 0
        '
        'GroupBox3
        '
        Me.GroupBox3.BackColor = System.Drawing.SystemColors.InactiveCaption
        Me.GroupBox3.Controls.Add(Me.btnActivarSuc)
        Me.GroupBox3.Location = New System.Drawing.Point(783, 12)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(123, 161)
        Me.GroupBox3.TabIndex = 2
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Sucursales"
        '
        'btnActivarSuc
        '
        Me.btnActivarSuc.BackColor = System.Drawing.Color.GreenYellow
        Me.btnActivarSuc.Location = New System.Drawing.Point(6, 60)
        Me.btnActivarSuc.Name = "btnActivarSuc"
        Me.btnActivarSuc.Size = New System.Drawing.Size(111, 69)
        Me.btnActivarSuc.TabIndex = 0
        Me.btnActivarSuc.Text = "Una Sucursal"
        Me.btnActivarSuc.UseVisualStyleBackColor = False
        '
        'Varios
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(914, 527)
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox3)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "Varios"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox4.ResumeLayout(False)
        CType(Me.GridPersonal, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox3.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents GridPersonal As DataGridView
    Friend WithEvents GroupBox3 As GroupBox
    Friend WithEvents btnActivarSuc As Button
    Friend WithEvents GroupBox4 As GroupBox
    Friend WithEvents btnseleccionar As Button
    Friend WithEvents btnSalir As Button
End Class
