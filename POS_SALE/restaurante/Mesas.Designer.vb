<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Mesas
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
        Me.components = New System.ComponentModel.Container()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.lberror = New System.Windows.Forms.Label()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.btneliminarsalon = New System.Windows.Forms.Button()
        Me.btncrearsalon = New System.Windows.Forms.Button()
        Me.btneditasalones = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cmbsalones = New System.Windows.Forms.ComboBox()
        Me.btnmesa = New System.Windows.Forms.Button()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.imagenResto = New System.Windows.Forms.PictureBox()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.Panel1.SuspendLayout()
        Me.Panel2.SuspendLayout()
        CType(Me.imagenResto, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.Color.Moccasin
        Me.Panel1.Controls.Add(Me.lberror)
        Me.Panel1.Controls.Add(Me.btncerrar)
        Me.Panel1.Controls.Add(Me.btneliminarsalon)
        Me.Panel1.Controls.Add(Me.btncrearsalon)
        Me.Panel1.Controls.Add(Me.btneditasalones)
        Me.Panel1.Controls.Add(Me.Label1)
        Me.Panel1.Controls.Add(Me.cmbsalones)
        Me.Panel1.Controls.Add(Me.btnmesa)
        Me.Panel1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Panel1.Location = New System.Drawing.Point(12, 12)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(868, 100)
        Me.Panel1.TabIndex = 0
        '
        'lberror
        '
        Me.lberror.AutoSize = True
        Me.lberror.ForeColor = System.Drawing.Color.DarkRed
        Me.lberror.Location = New System.Drawing.Point(165, 70)
        Me.lberror.Name = "lberror"
        Me.lberror.Size = New System.Drawing.Size(0, 20)
        Me.lberror.TabIndex = 8
        '
        'btncerrar
        '
        Me.btncerrar.Location = New System.Drawing.Point(760, 26)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(95, 34)
        Me.btncerrar.TabIndex = 7
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'btneliminarsalon
        '
        Me.btneliminarsalon.Location = New System.Drawing.Point(637, 26)
        Me.btneliminarsalon.Name = "btneliminarsalon"
        Me.btneliminarsalon.Size = New System.Drawing.Size(95, 34)
        Me.btneliminarsalon.TabIndex = 6
        Me.btneliminarsalon.Text = "Eliminar"
        Me.btneliminarsalon.UseVisualStyleBackColor = True
        '
        'btncrearsalon
        '
        Me.btncrearsalon.Location = New System.Drawing.Point(426, 26)
        Me.btncrearsalon.Name = "btncrearsalon"
        Me.btncrearsalon.Size = New System.Drawing.Size(95, 34)
        Me.btncrearsalon.TabIndex = 5
        Me.btncrearsalon.Text = "Crear"
        Me.btncrearsalon.UseVisualStyleBackColor = True
        '
        'btneditasalones
        '
        Me.btneditasalones.Location = New System.Drawing.Point(530, 26)
        Me.btneditasalones.Name = "btneditasalones"
        Me.btneditasalones.Size = New System.Drawing.Size(98, 34)
        Me.btneditasalones.TabIndex = 4
        Me.btneditasalones.Text = "Editar"
        Me.btneditasalones.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(136, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(67, 20)
        Me.Label1.TabIndex = 3
        Me.Label1.Text = "Salones"
        '
        'cmbsalones
        '
        Me.cmbsalones.FormattingEnabled = True
        Me.cmbsalones.Location = New System.Drawing.Point(140, 32)
        Me.cmbsalones.Name = "cmbsalones"
        Me.cmbsalones.Size = New System.Drawing.Size(246, 28)
        Me.cmbsalones.TabIndex = 2
        '
        'btnmesa
        '
        Me.btnmesa.FlatAppearance.BorderSize = 0
        Me.btnmesa.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.btnmesa.Font = New System.Drawing.Font("Microsoft Sans Serif", 26.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnmesa.Image = Global.StrindbergNet.My.Resources.Resources.Household_Table_icon
        Me.btnmesa.ImageAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.btnmesa.Location = New System.Drawing.Point(23, 26)
        Me.btnmesa.Name = "btnmesa"
        Me.btnmesa.Size = New System.Drawing.Size(87, 44)
        Me.btnmesa.TabIndex = 1
        Me.btnmesa.Text = "01"
        Me.btnmesa.TextAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnmesa.UseVisualStyleBackColor = True
        '
        'Panel2
        '
        Me.Panel2.AllowDrop = True
        Me.Panel2.BackColor = System.Drawing.Color.Tan
        Me.Panel2.Controls.Add(Me.imagenResto)
        Me.Panel2.Location = New System.Drawing.Point(10, 118)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(870, 564)
        Me.Panel2.TabIndex = 1
        '
        'imagenResto
        '
        Me.imagenResto.Image = Global.StrindbergNet.My.Resources.Resources.TerrazaSirene
        Me.imagenResto.Location = New System.Drawing.Point(3, 3)
        Me.imagenResto.Name = "imagenResto"
        Me.imagenResto.Size = New System.Drawing.Size(830, 546)
        Me.imagenResto.TabIndex = 0
        Me.imagenResto.TabStop = False
        '
        'ImageList1
        '
        Me.ImageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth32Bit
        Me.ImageList1.ImageSize = New System.Drawing.Size(32, 32)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        '
        'Mesas
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(895, 685)
        Me.Controls.Add(Me.Panel2)
        Me.Controls.Add(Me.Panel1)
        Me.Name = "Mesas"
        Me.Text = "Mesas"
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.Panel2.ResumeLayout(False)
        CType(Me.imagenResto, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents Panel2 As System.Windows.Forms.Panel
    Friend WithEvents btnmesa As System.Windows.Forms.Button
    Friend WithEvents btneliminarsalon As System.Windows.Forms.Button
    Friend WithEvents btncrearsalon As System.Windows.Forms.Button
    Friend WithEvents btneditasalones As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents cmbsalones As System.Windows.Forms.ComboBox
    Friend WithEvents btncerrar As System.Windows.Forms.Button
    Friend WithEvents lberror As System.Windows.Forms.Label
    Friend WithEvents imagenResto As System.Windows.Forms.PictureBox
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList
End Class
