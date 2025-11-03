<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class PreciosNEW
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
        Me.grillaprecios = New System.Windows.Forms.DataGridView()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.btnagregar = New System.Windows.Forms.Button()
        Me.btneliminar = New System.Windows.Forms.Button()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.cmbseccion = New System.Windows.Forms.ComboBox()
        Me.cmbdpto = New System.Windows.Forms.ComboBox()
        Me.txtprodbusca = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.btnbuscards = New System.Windows.Forms.Button()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.cmbsucursales = New System.Windows.Forms.ComboBox()
        Me.grillaProductos = New System.Windows.Forms.DataGridView()
        CType(Me.grillaprecios, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.grillaProductos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'grillaprecios
        '
        Me.grillaprecios.AllowUserToAddRows = False
        Me.grillaprecios.AllowUserToDeleteRows = False
        Me.grillaprecios.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillaprecios.Location = New System.Drawing.Point(782, 145)
        Me.grillaprecios.Name = "grillaprecios"
        Me.grillaprecios.ReadOnly = True
        Me.grillaprecios.RowHeadersVisible = False
        Me.grillaprecios.Size = New System.Drawing.Size(313, 283)
        Me.grillaprecios.TabIndex = 0
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(1046, 7)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(66, 24)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Label1"
        '
        'btnagregar
        '
        Me.btnagregar.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnagregar.Location = New System.Drawing.Point(24, 434)
        Me.btnagregar.Name = "btnagregar"
        Me.btnagregar.Size = New System.Drawing.Size(120, 37)
        Me.btnagregar.TabIndex = 3
        Me.btnagregar.Text = "Agregar"
        Me.btnagregar.UseVisualStyleBackColor = True
        '
        'btneliminar
        '
        Me.btneliminar.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btneliminar.Location = New System.Drawing.Point(158, 434)
        Me.btneliminar.Name = "btneliminar"
        Me.btneliminar.Size = New System.Drawing.Size(98, 37)
        Me.btneliminar.TabIndex = 4
        Me.btneliminar.Text = "Eliminar"
        Me.btneliminar.UseVisualStyleBackColor = True
        '
        'btncerrar
        '
        Me.btncerrar.BackColor = System.Drawing.SystemColors.ControlLight
        Me.btncerrar.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btncerrar.Location = New System.Drawing.Point(262, 434)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(98, 37)
        Me.btncerrar.TabIndex = 5
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = False
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(277, 9)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(99, 24)
        Me.Label2.TabIndex = 9
        Me.Label2.Text = "Secciones"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(20, 9)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(128, 24)
        Me.Label3.TabIndex = 8
        Me.Label3.Text = "Departamento"
        '
        'cmbseccion
        '
        Me.cmbseccion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbseccion.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbseccion.FormattingEnabled = True
        Me.cmbseccion.Location = New System.Drawing.Point(281, 36)
        Me.cmbseccion.Name = "cmbseccion"
        Me.cmbseccion.Size = New System.Drawing.Size(340, 32)
        Me.cmbseccion.TabIndex = 7
        '
        'cmbdpto
        '
        Me.cmbdpto.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbdpto.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbdpto.FormattingEnabled = True
        Me.cmbdpto.Location = New System.Drawing.Point(24, 36)
        Me.cmbdpto.Name = "cmbdpto"
        Me.cmbdpto.Size = New System.Drawing.Size(232, 32)
        Me.cmbdpto.TabIndex = 6
        '
        'txtprodbusca
        '
        Me.txtprodbusca.BackColor = System.Drawing.Color.Khaki
        Me.txtprodbusca.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtprodbusca.Location = New System.Drawing.Point(24, 108)
        Me.txtprodbusca.Name = "txtprodbusca"
        Me.txtprodbusca.Size = New System.Drawing.Size(449, 29)
        Me.txtprodbusca.TabIndex = 10
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(20, 81)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(158, 24)
        Me.Label4.TabIndex = 11
        Me.Label4.Text = "Buscar Productos"
        '
        'btnbuscards
        '
        Me.btnbuscards.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnbuscards.Location = New System.Drawing.Point(930, 34)
        Me.btnbuscards.Name = "btnbuscards"
        Me.btnbuscards.Size = New System.Drawing.Size(124, 34)
        Me.btnbuscards.TabIndex = 12
        Me.btnbuscards.Text = "Buscar"
        Me.btnbuscards.UseVisualStyleBackColor = True
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(640, 9)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(83, 24)
        Me.Label5.TabIndex = 14
        Me.Label5.Text = "Sucursal"
        '
        'cmbsucursales
        '
        Me.cmbsucursales.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbsucursales.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbsucursales.FormattingEnabled = True
        Me.cmbsucursales.Location = New System.Drawing.Point(644, 36)
        Me.cmbsucursales.Name = "cmbsucursales"
        Me.cmbsucursales.Size = New System.Drawing.Size(257, 32)
        Me.cmbsucursales.TabIndex = 13
        '
        'grillaProductos
        '
        Me.grillaProductos.AllowUserToAddRows = False
        Me.grillaProductos.AllowUserToDeleteRows = False
        Me.grillaProductos.AllowUserToResizeColumns = False
        Me.grillaProductos.AllowUserToResizeRows = False
        Me.grillaProductos.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.grillaProductos.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        Me.grillaProductos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillaProductos.Location = New System.Drawing.Point(24, 145)
        Me.grillaProductos.MultiSelect = False
        Me.grillaProductos.Name = "grillaProductos"
        Me.grillaProductos.ReadOnly = True
        Me.grillaProductos.RowHeadersVisible = False
        Me.grillaProductos.Size = New System.Drawing.Size(740, 283)
        Me.grillaProductos.TabIndex = 15
        '
        'PreciosNEW
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1124, 481)
        Me.ControlBox = False
        Me.Controls.Add(Me.grillaProductos)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.cmbsucursales)
        Me.Controls.Add(Me.btnbuscards)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.txtprodbusca)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.cmbseccion)
        Me.Controls.Add(Me.cmbdpto)
        Me.Controls.Add(Me.btncerrar)
        Me.Controls.Add(Me.btneliminar)
        Me.Controls.Add(Me.btnagregar)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.grillaprecios)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Name = "PreciosNEW"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Precios"
        CType(Me.grillaprecios, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.grillaProductos, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents grillaprecios As System.Windows.Forms.DataGridView
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents btnagregar As System.Windows.Forms.Button
    Friend WithEvents btneliminar As System.Windows.Forms.Button
    Friend WithEvents btncerrar As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents cmbseccion As System.Windows.Forms.ComboBox
    Friend WithEvents cmbdpto As System.Windows.Forms.ComboBox
    Friend WithEvents txtprodbusca As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents btnbuscards As System.Windows.Forms.Button
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents cmbsucursales As System.Windows.Forms.ComboBox
    Friend WithEvents grillaProductos As System.Windows.Forms.DataGridView
End Class
