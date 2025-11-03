<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class AdminCatProd
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
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.lstprodagr = New System.Windows.Forms.ListBox()
        Me.lstprod = New System.Windows.Forms.ListBox()
        Me.lstcat = New System.Windows.Forms.ListBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.grillapprodpos = New System.Windows.Forms.DataGridView()
        Me.cmbseccion = New System.Windows.Forms.ComboBox()
        Me.cmbdpto = New System.Windows.Forms.ComboBox()
        Me.btnclose = New System.Windows.Forms.Button()
        Me.btneliprodagr = New System.Windows.Forms.Button()
        Me.btncreapordagr = New System.Windows.Forms.Button()
        Me.btnEliprod = New System.Windows.Forms.Button()
        Me.btnelicat = New System.Windows.Forms.Button()
        Me.btncreacat = New System.Windows.Forms.Button()
        Me.btnAgregar = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        CType(Me.grillapprodpos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.btnclose)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.lstprodagr)
        Me.GroupBox1.Controls.Add(Me.btneliprodagr)
        Me.GroupBox1.Controls.Add(Me.lstprod)
        Me.GroupBox1.Controls.Add(Me.lstcat)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.btncreapordagr)
        Me.GroupBox1.Controls.Add(Me.btnEliprod)
        Me.GroupBox1.Controls.Add(Me.btnelicat)
        Me.GroupBox1.Controls.Add(Me.btncreacat)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.btnAgregar)
        Me.GroupBox1.Controls.Add(Me.grillapprodpos)
        Me.GroupBox1.Controls.Add(Me.cmbseccion)
        Me.GroupBox1.Controls.Add(Me.cmbdpto)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 14)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox1.Size = New System.Drawing.Size(1190, 537)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Administración de Productos Agrupados"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(742, 127)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(81, 20)
        Me.Label5.TabIndex = 29
        Me.Label5.Text = "Productos"
        '
        'lstprodagr
        '
        Me.lstprodagr.FormattingEnabled = True
        Me.lstprodagr.ItemHeight = 20
        Me.lstprodagr.Location = New System.Drawing.Point(957, 150)
        Me.lstprodagr.Name = "lstprodagr"
        Me.lstprodagr.Size = New System.Drawing.Size(205, 324)
        Me.lstprodagr.TabIndex = 28
        '
        'lstprod
        '
        Me.lstprod.FormattingEnabled = True
        Me.lstprod.ItemHeight = 20
        Me.lstprod.Location = New System.Drawing.Point(746, 150)
        Me.lstprod.Name = "lstprod"
        Me.lstprod.Size = New System.Drawing.Size(205, 324)
        Me.lstprod.TabIndex = 27
        '
        'lstcat
        '
        Me.lstcat.FormattingEnabled = True
        Me.lstcat.ItemHeight = 20
        Me.lstcat.Location = New System.Drawing.Point(535, 150)
        Me.lstcat.Name = "lstcat"
        Me.lstcat.Size = New System.Drawing.Size(205, 324)
        Me.lstcat.TabIndex = 26
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(953, 127)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(155, 20)
        Me.Label4.TabIndex = 25
        Me.Label4.Text = "Producto Agrupados"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(531, 127)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(125, 20)
        Me.Label3.TabIndex = 11
        Me.Label3.Text = "Categoria Venta"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(314, 69)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(66, 20)
        Me.Label2.TabIndex = 10
        Me.Label2.Text = "Sección"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(18, 69)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(44, 20)
        Me.Label1.TabIndex = 9
        Me.Label1.Text = "Dpto"
        '
        'grillapprodpos
        '
        Me.grillapprodpos.AllowUserToAddRows = False
        Me.grillapprodpos.AllowUserToDeleteRows = False
        Me.grillapprodpos.AllowUserToResizeRows = False
        DataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(192, Byte), Integer))
        Me.grillapprodpos.AlternatingRowsDefaultCellStyle = DataGridViewCellStyle2
        Me.grillapprodpos.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.grillapprodpos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillapprodpos.Location = New System.Drawing.Point(22, 150)
        Me.grillapprodpos.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.grillapprodpos.Name = "grillapprodpos"
        Me.grillapprodpos.ReadOnly = True
        Me.grillapprodpos.RowHeadersVisible = False
        Me.grillapprodpos.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.grillapprodpos.Size = New System.Drawing.Size(496, 326)
        Me.grillapprodpos.TabIndex = 2
        '
        'cmbseccion
        '
        Me.cmbseccion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbseccion.FormattingEnabled = True
        Me.cmbseccion.Location = New System.Drawing.Point(269, 94)
        Me.cmbseccion.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.cmbseccion.Name = "cmbseccion"
        Me.cmbseccion.Size = New System.Drawing.Size(249, 28)
        Me.cmbseccion.TabIndex = 1
        '
        'cmbdpto
        '
        Me.cmbdpto.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbdpto.FormattingEnabled = True
        Me.cmbdpto.Location = New System.Drawing.Point(22, 94)
        Me.cmbdpto.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.cmbdpto.Name = "cmbdpto"
        Me.cmbdpto.Size = New System.Drawing.Size(237, 28)
        Me.cmbdpto.TabIndex = 0
        '
        'btnclose
        '
        Me.btnclose.Image = Global.StrindbergNet.My.Resources.Resources.Logout_WF
        Me.btnclose.Location = New System.Drawing.Point(1104, 57)
        Me.btnclose.Name = "btnclose"
        Me.btnclose.Size = New System.Drawing.Size(58, 61)
        Me.btnclose.TabIndex = 30
        Me.btnclose.UseVisualStyleBackColor = True
        '
        'btneliprodagr
        '
        Me.btneliprodagr.Image = Global.StrindbergNet.My.Resources.Resources.database_delete
        Me.btneliprodagr.Location = New System.Drawing.Point(876, 489)
        Me.btneliprodagr.Name = "btneliprodagr"
        Me.btneliprodagr.Size = New System.Drawing.Size(75, 42)
        Me.btneliprodagr.TabIndex = 24
        Me.btneliprodagr.UseVisualStyleBackColor = True
        '
        'btncreapordagr
        '
        Me.btncreapordagr.Image = Global.StrindbergNet.My.Resources.Resources.database_add
        Me.btncreapordagr.Location = New System.Drawing.Point(746, 489)
        Me.btncreapordagr.Name = "btncreapordagr"
        Me.btncreapordagr.Size = New System.Drawing.Size(75, 40)
        Me.btncreapordagr.TabIndex = 23
        Me.btncreapordagr.UseVisualStyleBackColor = True
        '
        'btnEliprod
        '
        Me.btnEliprod.Image = Global.StrindbergNet.My.Resources.Resources.database_delete
        Me.btnEliprod.Location = New System.Drawing.Point(1087, 489)
        Me.btnEliprod.Name = "btnEliprod"
        Me.btnEliprod.Size = New System.Drawing.Size(75, 40)
        Me.btnEliprod.TabIndex = 21
        Me.btnEliprod.UseVisualStyleBackColor = True
        '
        'btnelicat
        '
        Me.btnelicat.Image = Global.StrindbergNet.My.Resources.Resources.database_delete
        Me.btnelicat.Location = New System.Drawing.Point(665, 489)
        Me.btnelicat.Name = "btnelicat"
        Me.btnelicat.Size = New System.Drawing.Size(75, 40)
        Me.btnelicat.TabIndex = 20
        Me.btnelicat.UseVisualStyleBackColor = True
        '
        'btncreacat
        '
        Me.btncreacat.Image = Global.StrindbergNet.My.Resources.Resources.database_add
        Me.btncreacat.Location = New System.Drawing.Point(535, 489)
        Me.btncreacat.Name = "btncreacat"
        Me.btncreacat.Size = New System.Drawing.Size(73, 40)
        Me.btncreacat.TabIndex = 19
        Me.btncreacat.UseVisualStyleBackColor = True
        '
        'btnAgregar
        '
        Me.btnAgregar.Image = Global.StrindbergNet.My.Resources.Resources.database_add
        Me.btnAgregar.Location = New System.Drawing.Point(957, 489)
        Me.btnAgregar.Name = "btnAgregar"
        Me.btnAgregar.Size = New System.Drawing.Size(75, 40)
        Me.btnAgregar.TabIndex = 6
        Me.btnAgregar.UseVisualStyleBackColor = True
        '
        'AdminCatProd
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1215, 565)
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.Name = "AdminCatProd"
        Me.Text = "AdminCatProd"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.grillapprodpos, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents grillapprodpos As System.Windows.Forms.DataGridView
    Friend WithEvents cmbseccion As System.Windows.Forms.ComboBox
    Friend WithEvents cmbdpto As System.Windows.Forms.ComboBox
    Friend WithEvents btnAgregar As System.Windows.Forms.Button
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents btncreacat As System.Windows.Forms.Button
    Friend WithEvents btnelicat As System.Windows.Forms.Button
    Friend WithEvents btnEliprod As System.Windows.Forms.Button
    Friend WithEvents btncreapordagr As System.Windows.Forms.Button
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents btneliprodagr As System.Windows.Forms.Button
    Friend WithEvents lstprod As System.Windows.Forms.ListBox
    Friend WithEvents lstcat As System.Windows.Forms.ListBox
    Friend WithEvents lstprodagr As System.Windows.Forms.ListBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents btnclose As System.Windows.Forms.Button
End Class
