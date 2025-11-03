<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class consolidado
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
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.btnterminados = New System.Windows.Forms.Button()
        Me.btnbodega = New System.Windows.Forms.Button()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.gridconsolidado = New System.Windows.Forms.DataGridView()
        Me.producto = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.cantidad = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.btnimprimir = New System.Windows.Forms.Button()
        CType(Me.gridconsolidado, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'btnterminados
        '
        Me.btnterminados.BackColor = System.Drawing.Color.LightYellow
        Me.btnterminados.Location = New System.Drawing.Point(523, 12)
        Me.btnterminados.Name = "btnterminados"
        Me.btnterminados.Size = New System.Drawing.Size(105, 84)
        Me.btnterminados.TabIndex = 2
        Me.btnterminados.Text = "Terminados"
        Me.btnterminados.UseVisualStyleBackColor = False
        '
        'btnbodega
        '
        Me.btnbodega.BackColor = System.Drawing.Color.LightYellow
        Me.btnbodega.Location = New System.Drawing.Point(523, 122)
        Me.btnbodega.Name = "btnbodega"
        Me.btnbodega.Size = New System.Drawing.Size(105, 84)
        Me.btnbodega.TabIndex = 1
        Me.btnbodega.Text = "Bodega"
        Me.btnbodega.UseVisualStyleBackColor = False
        '
        'btncerrar
        '
        Me.btncerrar.Location = New System.Drawing.Point(523, 412)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(105, 59)
        Me.btncerrar.TabIndex = 4
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'gridconsolidado
        '
        Me.gridconsolidado.AllowUserToAddRows = False
        Me.gridconsolidado.AllowUserToDeleteRows = False
        Me.gridconsolidado.AllowUserToResizeColumns = False
        Me.gridconsolidado.AllowUserToResizeRows = False
        DataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.gridconsolidado.AlternatingRowsDefaultCellStyle = DataGridViewCellStyle1
        Me.gridconsolidado.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.gridconsolidado.BackgroundColor = System.Drawing.Color.Wheat
        Me.gridconsolidado.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.gridconsolidado.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.producto, Me.cantidad})
        Me.gridconsolidado.Location = New System.Drawing.Point(12, 12)
        Me.gridconsolidado.Name = "gridconsolidado"
        Me.gridconsolidado.ReadOnly = True
        Me.gridconsolidado.RowHeadersVisible = False
        Me.gridconsolidado.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing
        Me.gridconsolidado.Size = New System.Drawing.Size(496, 459)
        Me.gridconsolidado.TabIndex = 5
        '
        'producto
        '
        Me.producto.HeaderText = "Producto"
        Me.producto.Name = "producto"
        Me.producto.ReadOnly = True
        Me.producto.Resizable = System.Windows.Forms.DataGridViewTriState.[False]
        Me.producto.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.producto.Width = 79
        '
        'cantidad
        '
        Me.cantidad.HeaderText = "Cantidad"
        Me.cantidad.Name = "cantidad"
        Me.cantidad.ReadOnly = True
        Me.cantidad.Resizable = System.Windows.Forms.DataGridViewTriState.[False]
        Me.cantidad.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.cantidad.Width = 79
        '
        'btnimprimir
        '
        Me.btnimprimir.Image = Global.StrindbergNet.My.Resources.Resources.printer1
        Me.btnimprimir.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnimprimir.Location = New System.Drawing.Point(523, 232)
        Me.btnimprimir.Name = "btnimprimir"
        Me.btnimprimir.Size = New System.Drawing.Size(105, 84)
        Me.btnimprimir.TabIndex = 6
        Me.btnimprimir.Text = "Imprimir"
        Me.btnimprimir.UseVisualStyleBackColor = True
        '
        'consolidado
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(648, 487)
        Me.ControlBox = False
        Me.Controls.Add(Me.btnimprimir)
        Me.Controls.Add(Me.gridconsolidado)
        Me.Controls.Add(Me.btncerrar)
        Me.Controls.Add(Me.btnterminados)
        Me.Controls.Add(Me.btnbodega)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.Name = "consolidado"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Consolidado"
        CType(Me.gridconsolidado, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents btnterminados As System.Windows.Forms.Button
    Friend WithEvents btnbodega As System.Windows.Forms.Button
    Friend WithEvents btncerrar As System.Windows.Forms.Button
    Friend WithEvents gridconsolidado As System.Windows.Forms.DataGridView
    Friend WithEvents producto As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents cantidad As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents btnimprimir As System.Windows.Forms.Button
End Class
