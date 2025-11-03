<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Composicion
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
        Me.btnbuscar = New System.Windows.Forms.Button()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cmbseccion = New System.Windows.Forms.ComboBox()
        Me.cmbdpto = New System.Windows.Forms.ComboBox()
        Me.grillaProductos = New System.Windows.Forms.DataGridView()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.btngrabar = New System.Windows.Forms.Button()
        Me.cmbcompo = New System.Windows.Forms.ComboBox()
        Me.grillacompo = New System.Windows.Forms.DataGridView()
        Me.btnborrar = New System.Windows.Forms.Button()
        Me.btncerrar = New System.Windows.Forms.Button()
        CType(Me.grillaProductos, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.grillacompo, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'btnbuscar
        '
        Me.btnbuscar.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnbuscar.Location = New System.Drawing.Point(647, 33)
        Me.btnbuscar.Name = "btnbuscar"
        Me.btnbuscar.Size = New System.Drawing.Size(124, 35)
        Me.btnbuscar.TabIndex = 13
        Me.btnbuscar.Text = "Buscar"
        Me.btnbuscar.UseVisualStyleBackColor = True
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(273, 11)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(112, 25)
        Me.Label2.TabIndex = 12
        Me.Label2.Text = "Secciones"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(12, 11)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(147, 25)
        Me.Label1.TabIndex = 11
        Me.Label1.Text = "Departamento"
        '
        'cmbseccion
        '
        Me.cmbseccion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbseccion.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbseccion.FormattingEnabled = True
        Me.cmbseccion.Location = New System.Drawing.Point(278, 39)
        Me.cmbseccion.Name = "cmbseccion"
        Me.cmbseccion.Size = New System.Drawing.Size(346, 28)
        Me.cmbseccion.TabIndex = 10
        '
        'cmbdpto
        '
        Me.cmbdpto.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbdpto.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbdpto.FormattingEnabled = True
        Me.cmbdpto.Location = New System.Drawing.Point(12, 39)
        Me.cmbdpto.Name = "cmbdpto"
        Me.cmbdpto.Size = New System.Drawing.Size(232, 28)
        Me.cmbdpto.TabIndex = 9
        '
        'grillaProductos
        '
        Me.grillaProductos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillaProductos.Location = New System.Drawing.Point(12, 132)
        Me.grillaProductos.Name = "grillaProductos"
        Me.grillaProductos.Size = New System.Drawing.Size(421, 348)
        Me.grillaProductos.TabIndex = 14
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(7, 104)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(109, 25)
        Me.Label3.TabIndex = 16
        Me.Label3.Text = "Productos"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(454, 104)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(136, 25)
        Me.Label4.TabIndex = 17
        Me.Label4.Text = "Composición"
        '
        'btngrabar
        '
        Me.btngrabar.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btngrabar.Location = New System.Drawing.Point(459, 500)
        Me.btngrabar.Name = "btngrabar"
        Me.btngrabar.Size = New System.Drawing.Size(97, 34)
        Me.btngrabar.TabIndex = 18
        Me.btngrabar.Text = "Grabar"
        Me.btngrabar.UseVisualStyleBackColor = True
        '
        'cmbcompo
        '
        Me.cmbcompo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbcompo.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbcompo.FormattingEnabled = True
        Me.cmbcompo.Location = New System.Drawing.Point(459, 132)
        Me.cmbcompo.Name = "cmbcompo"
        Me.cmbcompo.Size = New System.Drawing.Size(346, 28)
        Me.cmbcompo.TabIndex = 19
        '
        'grillacompo
        '
        Me.grillacompo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillacompo.Location = New System.Drawing.Point(459, 180)
        Me.grillacompo.Name = "grillacompo"
        Me.grillacompo.Size = New System.Drawing.Size(346, 300)
        Me.grillacompo.TabIndex = 20
        '
        'btnborrar
        '
        Me.btnborrar.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnborrar.Location = New System.Drawing.Point(588, 500)
        Me.btnborrar.Name = "btnborrar"
        Me.btnborrar.Size = New System.Drawing.Size(87, 34)
        Me.btnborrar.TabIndex = 21
        Me.btnborrar.Text = "Borrar"
        Me.btnborrar.UseVisualStyleBackColor = True
        '
        'btncerrar
        '
        Me.btncerrar.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btncerrar.Location = New System.Drawing.Point(706, 500)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(99, 34)
        Me.btncerrar.TabIndex = 22
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'Composicion
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(838, 537)
        Me.ControlBox = False
        Me.Controls.Add(Me.btncerrar)
        Me.Controls.Add(Me.btnborrar)
        Me.Controls.Add(Me.grillacompo)
        Me.Controls.Add(Me.cmbcompo)
        Me.Controls.Add(Me.btngrabar)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.grillaProductos)
        Me.Controls.Add(Me.btnbuscar)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.cmbseccion)
        Me.Controls.Add(Me.cmbdpto)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Name = "Composicion"
        Me.Text = "Composicion"
        CType(Me.grillaProductos, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.grillacompo, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents btnbuscar As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents cmbseccion As System.Windows.Forms.ComboBox
    Friend WithEvents cmbdpto As System.Windows.Forms.ComboBox
    Friend WithEvents grillaProductos As System.Windows.Forms.DataGridView
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents btngrabar As System.Windows.Forms.Button
    Friend WithEvents cmbcompo As System.Windows.Forms.ComboBox
    Friend WithEvents grillacompo As System.Windows.Forms.DataGridView
    Friend WithEvents btnborrar As System.Windows.Forms.Button
    Friend WithEvents btncerrar As System.Windows.Forms.Button
End Class
