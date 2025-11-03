<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmproductos
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
        Me.grillaProductos = New System.Windows.Forms.DataGridView()
        Me.cmbdpto = New System.Windows.Forms.ComboBox()
        Me.cmbseccion = New System.Windows.Forms.ComboBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.btnActualizar = New System.Windows.Forms.Button()
        Me.btnEliminar = New System.Windows.Forms.Button()
        Me.btnNuevo = New System.Windows.Forms.Button()
        Me.txtprodbusca = New System.Windows.Forms.TextBox()
        Me.btnbuscards = New System.Windows.Forms.Button()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.descatalog = New System.Windows.Forms.CheckBox()
        Me.btnactua = New System.Windows.Forms.Button()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.btncreardpto = New System.Windows.Forms.Button()
        Me.btnpreciosbatch = New System.Windows.Forms.Button()
        Me.btnprodped = New System.Windows.Forms.Button()
        CType(Me.grillaProductos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
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
        Me.grillaProductos.Location = New System.Drawing.Point(36, 218)
        Me.grillaProductos.Name = "grillaProductos"
        Me.grillaProductos.Size = New System.Drawing.Size(779, 283)
        Me.grillaProductos.TabIndex = 0
        '
        'cmbdpto
        '
        Me.cmbdpto.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbdpto.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbdpto.FormattingEnabled = True
        Me.cmbdpto.Location = New System.Drawing.Point(41, 96)
        Me.cmbdpto.Name = "cmbdpto"
        Me.cmbdpto.Size = New System.Drawing.Size(232, 32)
        Me.cmbdpto.TabIndex = 1
        '
        'cmbseccion
        '
        Me.cmbseccion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbseccion.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbseccion.FormattingEnabled = True
        Me.cmbseccion.Location = New System.Drawing.Point(307, 96)
        Me.cmbseccion.Name = "cmbseccion"
        Me.cmbseccion.Size = New System.Drawing.Size(346, 32)
        Me.cmbseccion.TabIndex = 2
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(36, 68)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(128, 24)
        Me.Label1.TabIndex = 3
        Me.Label1.Text = "Departamento"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(302, 68)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(99, 24)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Secciones"
        '
        'btnActualizar
        '
        Me.btnActualizar.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnActualizar.Location = New System.Drawing.Point(42, 134)
        Me.btnActualizar.Name = "btnActualizar"
        Me.btnActualizar.Size = New System.Drawing.Size(191, 34)
        Me.btnActualizar.TabIndex = 5
        Me.btnActualizar.Text = "Actualizar Dpto Seccion"
        Me.btnActualizar.UseVisualStyleBackColor = True
        '
        'btnEliminar
        '
        Me.btnEliminar.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnEliminar.Location = New System.Drawing.Point(523, 134)
        Me.btnEliminar.Name = "btnEliminar"
        Me.btnEliminar.Size = New System.Drawing.Size(130, 34)
        Me.btnEliminar.TabIndex = 6
        Me.btnEliminar.Text = "Descatalogar"
        Me.btnEliminar.UseVisualStyleBackColor = True
        '
        'btnNuevo
        '
        Me.btnNuevo.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnNuevo.Location = New System.Drawing.Point(324, 134)
        Me.btnNuevo.Name = "btnNuevo"
        Me.btnNuevo.Size = New System.Drawing.Size(77, 34)
        Me.btnNuevo.TabIndex = 7
        Me.btnNuevo.Text = "Nuevo"
        Me.btnNuevo.UseVisualStyleBackColor = True
        '
        'txtprodbusca
        '
        Me.txtprodbusca.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtprodbusca.Location = New System.Drawing.Point(42, 41)
        Me.txtprodbusca.Name = "txtprodbusca"
        Me.txtprodbusca.Size = New System.Drawing.Size(449, 29)
        Me.txtprodbusca.TabIndex = 9
        '
        'btnbuscards
        '
        Me.btnbuscards.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnbuscards.Location = New System.Drawing.Point(691, 53)
        Me.btnbuscards.Name = "btnbuscards"
        Me.btnbuscards.Size = New System.Drawing.Size(124, 34)
        Me.btnbuscards.TabIndex = 10
        Me.btnbuscards.Text = "Buscar"
        Me.btnbuscards.UseVisualStyleBackColor = True
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(37, 13)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(213, 24)
        Me.Label3.TabIndex = 11
        Me.Label3.Text = "Busqueda de Productos"
        '
        'descatalog
        '
        Me.descatalog.AutoSize = True
        Me.descatalog.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.descatalog.Location = New System.Drawing.Point(511, 40)
        Me.descatalog.Name = "descatalog"
        Me.descatalog.Size = New System.Drawing.Size(144, 24)
        Me.descatalog.TabIndex = 12
        Me.descatalog.Text = "Descatalogados"
        Me.descatalog.UseVisualStyleBackColor = True
        '
        'btnactua
        '
        Me.btnactua.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnactua.Location = New System.Drawing.Point(407, 134)
        Me.btnactua.Name = "btnactua"
        Me.btnactua.Size = New System.Drawing.Size(110, 34)
        Me.btnactua.TabIndex = 13
        Me.btnactua.Text = "Actualizar"
        Me.btnactua.UseVisualStyleBackColor = True
        '
        'btncerrar
        '
        Me.btncerrar.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btncerrar.Location = New System.Drawing.Point(691, 13)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(124, 34)
        Me.btncerrar.TabIndex = 14
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'btncreardpto
        '
        Me.btncreardpto.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btncreardpto.Location = New System.Drawing.Point(691, 93)
        Me.btncreardpto.Name = "btncreardpto"
        Me.btncreardpto.Size = New System.Drawing.Size(124, 34)
        Me.btncreardpto.TabIndex = 15
        Me.btncreardpto.Text = "Dpto-Secc"
        Me.btncreardpto.UseVisualStyleBackColor = True
        '
        'btnpreciosbatch
        '
        Me.btnpreciosbatch.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnpreciosbatch.Location = New System.Drawing.Point(691, 133)
        Me.btnpreciosbatch.Name = "btnpreciosbatch"
        Me.btnpreciosbatch.Size = New System.Drawing.Size(124, 34)
        Me.btnpreciosbatch.TabIndex = 16
        Me.btnpreciosbatch.Text = "Act. Precios"
        Me.btnpreciosbatch.UseVisualStyleBackColor = True
        '
        'btnprodped
        '
        Me.btnprodped.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnprodped.Location = New System.Drawing.Point(691, 173)
        Me.btnprodped.Name = "btnprodped"
        Me.btnprodped.Size = New System.Drawing.Size(124, 34)
        Me.btnprodped.TabIndex = 17
        Me.btnprodped.Text = "Prod. Ped"
        Me.btnprodped.UseVisualStyleBackColor = True
        '
        'frmproductos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(848, 513)
        Me.ControlBox = False
        Me.Controls.Add(Me.btnprodped)
        Me.Controls.Add(Me.btnpreciosbatch)
        Me.Controls.Add(Me.btncreardpto)
        Me.Controls.Add(Me.btncerrar)
        Me.Controls.Add(Me.btnactua)
        Me.Controls.Add(Me.descatalog)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.btnbuscards)
        Me.Controls.Add(Me.txtprodbusca)
        Me.Controls.Add(Me.btnNuevo)
        Me.Controls.Add(Me.btnEliminar)
        Me.Controls.Add(Me.btnActualizar)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.cmbseccion)
        Me.Controls.Add(Me.cmbdpto)
        Me.Controls.Add(Me.grillaProductos)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmproductos"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Productos"
        CType(Me.grillaProductos, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents grillaProductos As System.Windows.Forms.DataGridView
    Friend WithEvents cmbdpto As System.Windows.Forms.ComboBox
    Friend WithEvents cmbseccion As System.Windows.Forms.ComboBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents btnActualizar As System.Windows.Forms.Button
    Friend WithEvents btnEliminar As System.Windows.Forms.Button
    Friend WithEvents btnNuevo As System.Windows.Forms.Button
    Friend WithEvents txtprodbusca As System.Windows.Forms.TextBox
    Friend WithEvents btnbuscards As System.Windows.Forms.Button
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents descatalog As System.Windows.Forms.CheckBox
    Friend WithEvents btnactua As System.Windows.Forms.Button
    Friend WithEvents btncerrar As System.Windows.Forms.Button
    Friend WithEvents btncreardpto As System.Windows.Forms.Button
    Friend WithEvents btnpreciosbatch As System.Windows.Forms.Button
    Friend WithEvents btnprodped As System.Windows.Forms.Button
End Class
