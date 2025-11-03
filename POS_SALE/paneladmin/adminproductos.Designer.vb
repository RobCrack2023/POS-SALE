<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class adminproductos
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
        Me.GroupBox4 = New System.Windows.Forms.GroupBox()
        Me.btnactprevta = New System.Windows.Forms.Button()
        Me.grillaprodmanager = New System.Windows.Forms.DataGridView()
        Me.cmbsubcat = New System.Windows.Forms.ComboBox()
        Me.cmbcatmanager = New System.Windows.Forms.ComboBox()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.btnactauliza = New System.Windows.Forms.Button()
        Me.grillaprodPOS = New System.Windows.Forms.DataGridView()
        Me.cmbseccion = New System.Windows.Forms.ComboBox()
        Me.cmbdpto = New System.Windows.Forms.ComboBox()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        CType(Me.grillaprodmanager, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        CType(Me.grillaprodPOS, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.Gainsboro
        Me.GroupBox1.Controls.Add(Me.GroupBox4)
        Me.GroupBox1.Controls.Add(Me.grillaprodmanager)
        Me.GroupBox1.Controls.Add(Me.cmbsubcat)
        Me.GroupBox1.Controls.Add(Me.cmbcatmanager)
        Me.GroupBox1.Location = New System.Drawing.Point(13, 14)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox1.Size = New System.Drawing.Size(587, 592)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Manager"
        '
        'GroupBox4
        '
        Me.GroupBox4.BackColor = System.Drawing.Color.BurlyWood
        Me.GroupBox4.Controls.Add(Me.btncerrar)
        Me.GroupBox4.Controls.Add(Me.btnactprevta)
        Me.GroupBox4.Location = New System.Drawing.Point(11, 481)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(477, 93)
        Me.GroupBox4.TabIndex = 4
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Actual. PrecioProd"
        '
        'btnactprevta
        '
        Me.btnactprevta.Location = New System.Drawing.Point(14, 34)
        Me.btnactprevta.Name = "btnactprevta"
        Me.btnactprevta.Size = New System.Drawing.Size(200, 43)
        Me.btnactprevta.TabIndex = 2
        Me.btnactprevta.Text = "Actualiza"
        Me.btnactprevta.UseVisualStyleBackColor = True
        '
        'grillaprodmanager
        '
        Me.grillaprodmanager.AllowUserToAddRows = False
        Me.grillaprodmanager.AllowUserToDeleteRows = False
        Me.grillaprodmanager.AllowUserToResizeRows = False
        Me.grillaprodmanager.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.grillaprodmanager.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillaprodmanager.Location = New System.Drawing.Point(11, 107)
        Me.grillaprodmanager.Name = "grillaprodmanager"
        Me.grillaprodmanager.ReadOnly = True
        Me.grillaprodmanager.RowHeadersVisible = False
        Me.grillaprodmanager.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing
        Me.grillaprodmanager.Size = New System.Drawing.Size(557, 355)
        Me.grillaprodmanager.TabIndex = 2
        '
        'cmbsubcat
        '
        Me.cmbsubcat.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbsubcat.FormattingEnabled = True
        Me.cmbsubcat.Location = New System.Drawing.Point(346, 57)
        Me.cmbsubcat.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.cmbsubcat.Name = "cmbsubcat"
        Me.cmbsubcat.Size = New System.Drawing.Size(222, 28)
        Me.cmbsubcat.TabIndex = 1
        '
        'cmbcatmanager
        '
        Me.cmbcatmanager.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbcatmanager.FormattingEnabled = True
        Me.cmbcatmanager.Location = New System.Drawing.Point(11, 57)
        Me.cmbcatmanager.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.cmbcatmanager.Name = "cmbcatmanager"
        Me.cmbcatmanager.Size = New System.Drawing.Size(222, 28)
        Me.cmbcatmanager.TabIndex = 0
        '
        'GroupBox2
        '
        Me.GroupBox2.BackColor = System.Drawing.Color.Moccasin
        Me.GroupBox2.Controls.Add(Me.GroupBox3)
        Me.GroupBox2.Controls.Add(Me.grillaprodPOS)
        Me.GroupBox2.Controls.Add(Me.cmbseccion)
        Me.GroupBox2.Controls.Add(Me.cmbdpto)
        Me.GroupBox2.Location = New System.Drawing.Point(621, 14)
        Me.GroupBox2.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Padding = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox2.Size = New System.Drawing.Size(528, 592)
        Me.GroupBox2.TabIndex = 3
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "POS"
        '
        'GroupBox3
        '
        Me.GroupBox3.BackColor = System.Drawing.Color.BurlyWood
        Me.GroupBox3.Controls.Add(Me.btnactauliza)
        Me.GroupBox3.Location = New System.Drawing.Point(20, 481)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(477, 93)
        Me.GroupBox3.TabIndex = 3
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Actual. CodProd"
        '
        'btnactauliza
        '
        Me.btnactauliza.Location = New System.Drawing.Point(14, 34)
        Me.btnactauliza.Name = "btnactauliza"
        Me.btnactauliza.Size = New System.Drawing.Size(200, 43)
        Me.btnactauliza.TabIndex = 2
        Me.btnactauliza.Text = "Actualiza"
        Me.btnactauliza.UseVisualStyleBackColor = True
        '
        'grillaprodPOS
        '
        Me.grillaprodPOS.AllowUserToAddRows = False
        Me.grillaprodPOS.AllowUserToDeleteRows = False
        Me.grillaprodPOS.AllowUserToResizeRows = False
        Me.grillaprodPOS.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.grillaprodPOS.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillaprodPOS.Location = New System.Drawing.Point(11, 107)
        Me.grillaprodPOS.Name = "grillaprodPOS"
        Me.grillaprodPOS.RowHeadersVisible = False
        Me.grillaprodPOS.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing
        Me.grillaprodPOS.Size = New System.Drawing.Size(487, 355)
        Me.grillaprodPOS.TabIndex = 2
        '
        'cmbseccion
        '
        Me.cmbseccion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbseccion.FormattingEnabled = True
        Me.cmbseccion.Location = New System.Drawing.Point(275, 57)
        Me.cmbseccion.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.cmbseccion.Name = "cmbseccion"
        Me.cmbseccion.Size = New System.Drawing.Size(223, 28)
        Me.cmbseccion.TabIndex = 1
        '
        'cmbdpto
        '
        Me.cmbdpto.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbdpto.FormattingEnabled = True
        Me.cmbdpto.Location = New System.Drawing.Point(11, 57)
        Me.cmbdpto.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.cmbdpto.Name = "cmbdpto"
        Me.cmbdpto.Size = New System.Drawing.Size(223, 28)
        Me.cmbdpto.TabIndex = 0
        '
        'btncerrar
        '
        Me.btncerrar.Location = New System.Drawing.Point(249, 34)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(200, 43)
        Me.btncerrar.TabIndex = 3
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'adminproductos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1154, 620)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.Name = "adminproductos"
        Me.Text = "adminproductos"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox4.ResumeLayout(False)
        CType(Me.grillaprodmanager, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox3.ResumeLayout(False)
        CType(Me.grillaprodPOS, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents grillaprodmanager As System.Windows.Forms.DataGridView
    Friend WithEvents cmbsubcat As System.Windows.Forms.ComboBox
    Friend WithEvents cmbcatmanager As System.Windows.Forms.ComboBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents grillaprodPOS As System.Windows.Forms.DataGridView
    Friend WithEvents cmbseccion As System.Windows.Forms.ComboBox
    Friend WithEvents cmbdpto As System.Windows.Forms.ComboBox
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents btnactauliza As System.Windows.Forms.Button
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents btnactprevta As System.Windows.Forms.Button
    Friend WithEvents btncerrar As System.Windows.Forms.Button
End Class
