<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class AdmPreciosPlu
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
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.cmbseccion = New System.Windows.Forms.ComboBox()
        Me.cmbdpto = New System.Windows.Forms.ComboBox()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.btnactualiza = New System.Windows.Forms.Button()
        Me.btnActProd = New System.Windows.Forms.Button()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.grillaprodprecio = New System.Windows.Forms.DataGridView()
        Me.idprod = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.producto = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.plu = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.barra = New System.Windows.Forms.ProgressBar()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.grillaprodprecio, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.barra)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.cmbseccion)
        Me.GroupBox1.Controls.Add(Me.cmbdpto)
        Me.GroupBox1.Controls.Add(Me.btncerrar)
        Me.GroupBox1.Controls.Add(Me.btnactualiza)
        Me.GroupBox1.Controls.Add(Me.btnActProd)
        Me.GroupBox1.Location = New System.Drawing.Point(13, 14)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox1.Size = New System.Drawing.Size(1141, 83)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(329, 16)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(99, 24)
        Me.Label2.TabIndex = 20
        Me.Label2.Text = "Secciones"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(52, 16)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(128, 24)
        Me.Label3.TabIndex = 19
        Me.Label3.Text = "Departamento"
        '
        'cmbseccion
        '
        Me.cmbseccion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbseccion.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbseccion.FormattingEnabled = True
        Me.cmbseccion.Location = New System.Drawing.Point(246, 43)
        Me.cmbseccion.Name = "cmbseccion"
        Me.cmbseccion.Size = New System.Drawing.Size(261, 28)
        Me.cmbseccion.TabIndex = 18
        '
        'cmbdpto
        '
        Me.cmbdpto.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbdpto.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbdpto.FormattingEnabled = True
        Me.cmbdpto.Location = New System.Drawing.Point(43, 43)
        Me.cmbdpto.Name = "cmbdpto"
        Me.cmbdpto.Size = New System.Drawing.Size(197, 28)
        Me.cmbdpto.TabIndex = 17
        '
        'btncerrar
        '
        Me.btncerrar.Location = New System.Drawing.Point(821, 41)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(106, 34)
        Me.btncerrar.TabIndex = 3
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'btnactualiza
        '
        Me.btnactualiza.Location = New System.Drawing.Point(664, 41)
        Me.btnactualiza.Name = "btnactualiza"
        Me.btnactualiza.Size = New System.Drawing.Size(127, 34)
        Me.btnactualiza.TabIndex = 2
        Me.btnactualiza.Text = "Actualiza"
        Me.btnactualiza.UseVisualStyleBackColor = True
        '
        'btnActProd
        '
        Me.btnActProd.Location = New System.Drawing.Point(513, 41)
        Me.btnActProd.Name = "btnActProd"
        Me.btnActProd.Size = New System.Drawing.Size(145, 34)
        Me.btnActProd.TabIndex = 1
        Me.btnActProd.Text = "Busca Productos"
        Me.btnActProd.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.grillaprodprecio)
        Me.GroupBox2.Location = New System.Drawing.Point(13, 107)
        Me.GroupBox2.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Padding = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox2.Size = New System.Drawing.Size(1141, 500)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        '
        'grillaprodprecio
        '
        Me.grillaprodprecio.AllowUserToAddRows = False
        Me.grillaprodprecio.AllowUserToDeleteRows = False
        Me.grillaprodprecio.AllowUserToResizeRows = False
        Me.grillaprodprecio.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillaprodprecio.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.idprod, Me.producto, Me.plu})
        Me.grillaprodprecio.Location = New System.Drawing.Point(7, 27)
        Me.grillaprodprecio.Name = "grillaprodprecio"
        Me.grillaprodprecio.RowHeadersVisible = False
        Me.grillaprodprecio.Size = New System.Drawing.Size(1127, 451)
        Me.grillaprodprecio.TabIndex = 0
        '
        'idprod
        '
        Me.idprod.Frozen = True
        Me.idprod.HeaderText = "idprod"
        Me.idprod.Name = "idprod"
        Me.idprod.Visible = False
        '
        'producto
        '
        Me.producto.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.producto.Frozen = True
        Me.producto.HeaderText = "Productos"
        Me.producto.Name = "producto"
        Me.producto.ReadOnly = True
        Me.producto.Width = 106
        '
        'plu
        '
        Me.plu.Frozen = True
        Me.plu.HeaderText = "Plu"
        Me.plu.Name = "plu"
        '
        'barra
        '
        Me.barra.Location = New System.Drawing.Point(952, 41)
        Me.barra.Name = "barra"
        Me.barra.Size = New System.Drawing.Size(181, 30)
        Me.barra.TabIndex = 21
        '
        'AdmPreciosPlu
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1167, 621)
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.Name = "AdmPreciosPlu"
        Me.Text = "AdmPreciosPlu"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        CType(Me.grillaprodprecio, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents grillaprodprecio As System.Windows.Forms.DataGridView
    Friend WithEvents btnactualiza As System.Windows.Forms.Button
    Friend WithEvents btnActProd As System.Windows.Forms.Button
    Friend WithEvents idprod As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents producto As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents plu As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents btncerrar As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents cmbseccion As System.Windows.Forms.ComboBox
    Friend WithEvents cmbdpto As System.Windows.Forms.ComboBox
    Friend WithEvents barra As System.Windows.Forms.ProgressBar
End Class
