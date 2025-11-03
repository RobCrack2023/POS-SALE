<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class AgregarProductos
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
        Me.Reportes = New System.Windows.Forms.TabControl()
        Me.pedlocal = New System.Windows.Forms.TabPage()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.lbtotal = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.grillaprodsol = New System.Windows.Forms.DataGridView()
        Me.idprod = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.producto = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.cantprod = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.inventario = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.merma = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.subtotalprod = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.lbconectado = New System.Windows.Forms.Label()
        Me.lbactualiza = New System.Windows.Forms.Label()
        Me.lbnomusr = New System.Windows.Forms.Label()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.btnenviar = New System.Windows.Forms.Button()
        Me.Reportes.SuspendLayout()
        Me.pedlocal.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        CType(Me.grillaprodsol, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Reportes
        '
        Me.Reportes.Controls.Add(Me.pedlocal)
        Me.Reportes.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Reportes.Font = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Reportes.Location = New System.Drawing.Point(0, 0)
        Me.Reportes.Name = "Reportes"
        Me.Reportes.SelectedIndex = 0
        Me.Reportes.Size = New System.Drawing.Size(1040, 720)
        Me.Reportes.TabIndex = 1
        '
        'pedlocal
        '
        Me.pedlocal.BackColor = System.Drawing.Color.DarkSeaGreen
        Me.pedlocal.Controls.Add(Me.GroupBox1)
        Me.pedlocal.Controls.Add(Me.lbconectado)
        Me.pedlocal.Controls.Add(Me.lbactualiza)
        Me.pedlocal.Controls.Add(Me.lbnomusr)
        Me.pedlocal.Controls.Add(Me.GroupBox2)
        Me.pedlocal.Controls.Add(Me.btncerrar)
        Me.pedlocal.Controls.Add(Me.btnenviar)
        Me.pedlocal.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.pedlocal.Location = New System.Drawing.Point(4, 38)
        Me.pedlocal.Name = "pedlocal"
        Me.pedlocal.Padding = New System.Windows.Forms.Padding(3)
        Me.pedlocal.Size = New System.Drawing.Size(1032, 678)
        Me.pedlocal.TabIndex = 0
        Me.pedlocal.Text = "Productos"
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.lbtotal)
        Me.GroupBox1.Controls.Add(Me.Label10)
        Me.GroupBox1.Controls.Add(Me.grillaprodsol)
        Me.GroupBox1.Location = New System.Drawing.Point(6, 168)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(996, 425)
        Me.GroupBox1.TabIndex = 32
        Me.GroupBox1.TabStop = False
        '
        'lbtotal
        '
        Me.lbtotal.AutoSize = True
        Me.lbtotal.BackColor = System.Drawing.Color.Navy
        Me.lbtotal.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.lbtotal.Location = New System.Drawing.Point(264, 22)
        Me.lbtotal.Name = "lbtotal"
        Me.lbtotal.Size = New System.Drawing.Size(20, 24)
        Me.lbtotal.TabIndex = 29
        Me.lbtotal.Text = "0"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(21, 22)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(246, 24)
        Me.Label10.TabIndex = 28
        Me.Label10.Text = "Total Productos Solicitados :"
        '
        'grillaprodsol
        '
        Me.grillaprodsol.AllowUserToAddRows = False
        Me.grillaprodsol.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.ColumnHeader
        Me.grillaprodsol.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        Me.grillaprodsol.BackgroundColor = System.Drawing.Color.DarkGray
        Me.grillaprodsol.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillaprodsol.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.idprod, Me.producto, Me.cantprod, Me.inventario, Me.merma, Me.subtotalprod})
        Me.grillaprodsol.GridColor = System.Drawing.SystemColors.ButtonFace
        Me.grillaprodsol.Location = New System.Drawing.Point(27, 50)
        Me.grillaprodsol.Name = "grillaprodsol"
        Me.grillaprodsol.RowHeadersVisible = False
        Me.grillaprodsol.Size = New System.Drawing.Size(948, 357)
        Me.grillaprodsol.TabIndex = 27
        '
        'idprod
        '
        Me.idprod.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.idprod.HeaderText = "ID"
        Me.idprod.Name = "idprod"
        Me.idprod.ReadOnly = True
        Me.idprod.Width = 52
        '
        'producto
        '
        Me.producto.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.producto.HeaderText = "Producto"
        Me.producto.Name = "producto"
        Me.producto.ReadOnly = True
        Me.producto.Width = 111
        '
        'cantprod
        '
        Me.cantprod.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.cantprod.HeaderText = "Cantidad"
        Me.cantprod.MaxInputLength = 3
        Me.cantprod.Name = "cantprod"
        Me.cantprod.Width = 109
        '
        'inventario
        '
        Me.inventario.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.inventario.HeaderText = "Inventario"
        Me.inventario.MaxInputLength = 100
        Me.inventario.Name = "inventario"
        Me.inventario.Width = 116
        '
        'merma
        '
        Me.merma.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.merma.HeaderText = "Merma"
        Me.merma.Name = "merma"
        Me.merma.Width = 94
        '
        'subtotalprod
        '
        Me.subtotalprod.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.subtotalprod.HeaderText = "Sub Total"
        Me.subtotalprod.MaxInputLength = 100
        Me.subtotalprod.Name = "subtotalprod"
        Me.subtotalprod.Width = 115
        '
        'lbconectado
        '
        Me.lbconectado.AutoSize = True
        Me.lbconectado.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbconectado.ForeColor = System.Drawing.Color.Red
        Me.lbconectado.Location = New System.Drawing.Point(778, 604)
        Me.lbconectado.Name = "lbconectado"
        Me.lbconectado.Size = New System.Drawing.Size(42, 13)
        Me.lbconectado.TabIndex = 31
        Me.lbconectado.Text = "xxxxxxx"
        '
        'lbactualiza
        '
        Me.lbactualiza.AutoSize = True
        Me.lbactualiza.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbactualiza.Location = New System.Drawing.Point(696, 617)
        Me.lbactualiza.Name = "lbactualiza"
        Me.lbactualiza.Size = New System.Drawing.Size(34, 13)
        Me.lbactualiza.TabIndex = 30
        Me.lbactualiza.Text = "---------"
        '
        'lbnomusr
        '
        Me.lbnomusr.AutoSize = True
        Me.lbnomusr.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbnomusr.Location = New System.Drawing.Point(688, 604)
        Me.lbnomusr.Name = "lbnomusr"
        Me.lbnomusr.Size = New System.Drawing.Size(42, 13)
        Me.lbnomusr.TabIndex = 29
        Me.lbnomusr.Text = "xxxxxxx"
        '
        'GroupBox2
        '
        Me.GroupBox2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox2.Location = New System.Drawing.Point(6, 6)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(996, 156)
        Me.GroupBox2.TabIndex = 23
        Me.GroupBox2.TabStop = False
        '
        'btncerrar
        '
        Me.btncerrar.Image = Global.StrindbergNet.My.Resources.Resources.arrow_left1
        Me.btncerrar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btncerrar.Location = New System.Drawing.Point(863, 616)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(139, 49)
        Me.btncerrar.TabIndex = 15
        Me.btncerrar.Text = "Volver"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'btnenviar
        '
        Me.btnenviar.Image = Global.StrindbergNet.My.Resources.Resources.database_add
        Me.btnenviar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnenviar.Location = New System.Drawing.Point(31, 616)
        Me.btnenviar.Name = "btnenviar"
        Me.btnenviar.Size = New System.Drawing.Size(171, 49)
        Me.btnenviar.TabIndex = 14
        Me.btnenviar.Text = "AGREGAR"
        Me.btnenviar.UseVisualStyleBackColor = True
        '
        'AgregaProductos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1040, 720)
        Me.ControlBox = False
        Me.Controls.Add(Me.Reportes)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Name = "AgregaProductos"
        Me.Text = "Admin Pedido Locales"
        Me.Reportes.ResumeLayout(False)
        Me.pedlocal.ResumeLayout(False)
        Me.pedlocal.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.grillaprodsol, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Reportes As System.Windows.Forms.TabControl
    Friend WithEvents pedlocal As System.Windows.Forms.TabPage
    Friend WithEvents lbconectado As System.Windows.Forms.Label
    Friend WithEvents lbactualiza As System.Windows.Forms.Label
    Friend WithEvents lbnomusr As System.Windows.Forms.Label
    Friend WithEvents btncerrar As System.Windows.Forms.Button
    Friend WithEvents btnenviar As System.Windows.Forms.Button
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents lbtotal As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents grillaprodsol As System.Windows.Forms.DataGridView
    Friend WithEvents idprod As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents producto As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents cantprod As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents inventario As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents merma As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents subtotalprod As System.Windows.Forms.DataGridViewTextBoxColumn

End Class
