<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Clientes
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
        Me.btnModificar = New System.Windows.Forms.Button()
        Me.btnusardir = New System.Windows.Forms.Button()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.cmbdir = New System.Windows.Forms.ComboBox()
        Me.btnnuevasucursal = New System.Windows.Forms.Button()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.cmbtraslado = New System.Windows.Forms.ComboBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.cmbcomuna = New System.Windows.Forms.ComboBox()
        Me.cmbciudad = New System.Windows.Forms.ComboBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.txtdireccion = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.txtgiro = New System.Windows.Forms.TextBox()
        Me.lbraazon = New System.Windows.Forms.Label()
        Me.txtrazons = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtdv = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtrut = New System.Windows.Forms.TextBox()
        Me.lberror = New System.Windows.Forms.Label()
        Me.btnsalir = New System.Windows.Forms.Button()
        Me.btngrabarcliente = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.Lavender
        Me.GroupBox1.Controls.Add(Me.btnModificar)
        Me.GroupBox1.Controls.Add(Me.btnusardir)
        Me.GroupBox1.Controls.Add(Me.Label8)
        Me.GroupBox1.Controls.Add(Me.cmbdir)
        Me.GroupBox1.Controls.Add(Me.btnnuevasucursal)
        Me.GroupBox1.Controls.Add(Me.Label7)
        Me.GroupBox1.Controls.Add(Me.cmbtraslado)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.cmbcomuna)
        Me.GroupBox1.Controls.Add(Me.cmbciudad)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.txtdireccion)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.txtgiro)
        Me.GroupBox1.Controls.Add(Me.lbraazon)
        Me.GroupBox1.Controls.Add(Me.txtrazons)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.txtdv)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.txtrut)
        Me.GroupBox1.Controls.Add(Me.lberror)
        Me.GroupBox1.Controls.Add(Me.btnsalir)
        Me.GroupBox1.Controls.Add(Me.btngrabarcliente)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(986, 672)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Cliente Empresa"
        '
        'btnModificar
        '
        Me.btnModificar.BackColor = System.Drawing.Color.Khaki
        Me.btnModificar.Enabled = False
        Me.btnModificar.Location = New System.Drawing.Point(572, 616)
        Me.btnModificar.Name = "btnModificar"
        Me.btnModificar.Size = New System.Drawing.Size(191, 45)
        Me.btnModificar.TabIndex = 85
        Me.btnModificar.Text = "Modificar"
        Me.btnModificar.UseVisualStyleBackColor = False
        '
        'btnusardir
        '
        Me.btnusardir.BackColor = System.Drawing.Color.Khaki
        Me.btnusardir.Location = New System.Drawing.Point(886, 44)
        Me.btnusardir.Name = "btnusardir"
        Me.btnusardir.Size = New System.Drawing.Size(87, 40)
        Me.btnusardir.TabIndex = 4
        Me.btnusardir.Text = "Usar"
        Me.btnusardir.UseVisualStyleBackColor = False
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.Label8.Location = New System.Drawing.Point(582, 23)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(160, 20)
        Me.Label8.TabIndex = 84
        Me.Label8.Text = "Direcciones Empresa"
        '
        'cmbdir
        '
        Me.cmbdir.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbdir.Font = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbdir.FormattingEnabled = True
        Me.cmbdir.Location = New System.Drawing.Point(586, 46)
        Me.cmbdir.Name = "cmbdir"
        Me.cmbdir.Size = New System.Drawing.Size(294, 37)
        Me.cmbdir.TabIndex = 3
        '
        'btnnuevasucursal
        '
        Me.btnnuevasucursal.BackColor = System.Drawing.Color.Khaki
        Me.btnnuevasucursal.Location = New System.Drawing.Point(364, 616)
        Me.btnnuevasucursal.Name = "btnnuevasucursal"
        Me.btnnuevasucursal.Size = New System.Drawing.Size(191, 45)
        Me.btnnuevasucursal.TabIndex = 12
        Me.btnnuevasucursal.Text = "Sucursal Nueva"
        Me.btnnuevasucursal.UseVisualStyleBackColor = False
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.Label7.Location = New System.Drawing.Point(231, 23)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(104, 20)
        Me.Label7.TabIndex = 81
        Me.Label7.Text = "Tipo Traslado"
        '
        'cmbtraslado
        '
        Me.cmbtraslado.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbtraslado.Font = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbtraslado.FormattingEnabled = True
        Me.cmbtraslado.Location = New System.Drawing.Point(235, 46)
        Me.cmbtraslado.Name = "cmbtraslado"
        Me.cmbtraslado.Size = New System.Drawing.Size(336, 37)
        Me.cmbtraslado.TabIndex = 2
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.Label6.Location = New System.Drawing.Point(738, 216)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(69, 20)
        Me.Label6.TabIndex = 77
        Me.Label6.Text = "Comuna"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.Label5.Location = New System.Drawing.Point(474, 217)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(59, 20)
        Me.Label5.TabIndex = 76
        Me.Label5.Text = "Ciudad"
        '
        'cmbcomuna
        '
        Me.cmbcomuna.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbcomuna.Font = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbcomuna.FormattingEnabled = True
        Me.cmbcomuna.Location = New System.Drawing.Point(742, 239)
        Me.cmbcomuna.Name = "cmbcomuna"
        Me.cmbcomuna.Size = New System.Drawing.Size(231, 37)
        Me.cmbcomuna.TabIndex = 9
        '
        'cmbciudad
        '
        Me.cmbciudad.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbciudad.Font = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbciudad.FormattingEnabled = True
        Me.cmbciudad.Location = New System.Drawing.Point(478, 239)
        Me.cmbciudad.Name = "cmbciudad"
        Me.cmbciudad.Size = New System.Drawing.Size(245, 37)
        Me.cmbciudad.TabIndex = 8
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.Label3.Location = New System.Drawing.Point(20, 216)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(75, 20)
        Me.Label3.TabIndex = 70
        Me.Label3.Text = "Dirección"
        '
        'txtdireccion
        '
        Me.txtdireccion.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtdireccion.Font = New System.Drawing.Font("Microsoft Sans Serif", 20.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtdireccion.Location = New System.Drawing.Point(17, 239)
        Me.txtdireccion.MaxLength = 50
        Me.txtdireccion.Name = "txtdireccion"
        Me.txtdireccion.Size = New System.Drawing.Size(440, 38)
        Me.txtdireccion.TabIndex = 7
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.Label4.Location = New System.Drawing.Point(20, 153)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(39, 20)
        Me.Label4.TabIndex = 68
        Me.Label4.Text = "Giro"
        '
        'txtgiro
        '
        Me.txtgiro.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtgiro.Font = New System.Drawing.Font("Microsoft Sans Serif", 20.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtgiro.Location = New System.Drawing.Point(17, 176)
        Me.txtgiro.MaxLength = 50
        Me.txtgiro.Name = "txtgiro"
        Me.txtgiro.Size = New System.Drawing.Size(956, 38)
        Me.txtgiro.TabIndex = 6
        '
        'lbraazon
        '
        Me.lbraazon.AutoSize = True
        Me.lbraazon.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.lbraazon.Location = New System.Drawing.Point(20, 86)
        Me.lbraazon.Name = "lbraazon"
        Me.lbraazon.Size = New System.Drawing.Size(103, 20)
        Me.lbraazon.TabIndex = 66
        Me.lbraazon.Text = "Razón Social"
        '
        'txtrazons
        '
        Me.txtrazons.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtrazons.Font = New System.Drawing.Font("Microsoft Sans Serif", 20.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtrazons.Location = New System.Drawing.Point(17, 107)
        Me.txtrazons.MaxLength = 50
        Me.txtrazons.Name = "txtrazons"
        Me.txtrazons.Size = New System.Drawing.Size(956, 38)
        Me.txtrazons.TabIndex = 5
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.Label2.Location = New System.Drawing.Point(177, 22)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(32, 20)
        Me.Label2.TabIndex = 64
        Me.Label2.Text = "DV"
        '
        'txtdv
        '
        Me.txtdv.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtdv.Font = New System.Drawing.Font("Microsoft Sans Serif", 20.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtdv.Location = New System.Drawing.Point(181, 45)
        Me.txtdv.MaxLength = 1
        Me.txtdv.Name = "txtdv"
        Me.txtdv.Size = New System.Drawing.Size(27, 38)
        Me.txtdv.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.ImeMode = System.Windows.Forms.ImeMode.NoControl
        Me.Label1.Location = New System.Drawing.Point(20, 22)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(35, 20)
        Me.Label1.TabIndex = 62
        Me.Label1.Text = "Rut"
        '
        'txtrut
        '
        Me.txtrut.Font = New System.Drawing.Font("Microsoft Sans Serif", 20.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtrut.Location = New System.Drawing.Point(17, 45)
        Me.txtrut.MaxLength = 8
        Me.txtrut.Name = "txtrut"
        Me.txtrut.Size = New System.Drawing.Size(145, 38)
        Me.txtrut.TabIndex = 0
        '
        'lberror
        '
        Me.lberror.AutoSize = True
        Me.lberror.Location = New System.Drawing.Point(26, 22)
        Me.lberror.Name = "lberror"
        Me.lberror.Size = New System.Drawing.Size(0, 20)
        Me.lberror.TabIndex = 25
        '
        'btnsalir
        '
        Me.btnsalir.BackColor = System.Drawing.Color.Khaki
        Me.btnsalir.Image = Global.StrindbergNet.My.Resources.Resources.cancel
        Me.btnsalir.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnsalir.Location = New System.Drawing.Point(782, 616)
        Me.btnsalir.Name = "btnsalir"
        Me.btnsalir.Size = New System.Drawing.Size(191, 45)
        Me.btnsalir.TabIndex = 13
        Me.btnsalir.Text = "Salir"
        Me.btnsalir.UseVisualStyleBackColor = False
        '
        'btngrabarcliente
        '
        Me.btngrabarcliente.BackColor = System.Drawing.Color.Khaki
        Me.btngrabarcliente.Image = Global.StrindbergNet.My.Resources.Resources.disk
        Me.btngrabarcliente.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btngrabarcliente.Location = New System.Drawing.Point(153, 617)
        Me.btngrabarcliente.Name = "btngrabarcliente"
        Me.btngrabarcliente.Size = New System.Drawing.Size(191, 45)
        Me.btngrabarcliente.TabIndex = 11
        Me.btngrabarcliente.Text = "Grabar"
        Me.btngrabarcliente.UseVisualStyleBackColor = False
        '
        'Clientes
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1003, 686)
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.MaximizeBox = False
        Me.Name = "Clientes"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents btngrabarcliente As System.Windows.Forms.Button
    Friend WithEvents btnsalir As System.Windows.Forms.Button
    Friend WithEvents lberror As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtdv As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtrut As System.Windows.Forms.TextBox
    Friend WithEvents lbraazon As System.Windows.Forms.Label
    Friend WithEvents txtrazons As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents txtgiro As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtdireccion As System.Windows.Forms.TextBox
    Friend WithEvents cmbcomuna As System.Windows.Forms.ComboBox
    Friend WithEvents cmbciudad As System.Windows.Forms.ComboBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents cmbtraslado As System.Windows.Forms.ComboBox
    Friend WithEvents btnnuevasucursal As System.Windows.Forms.Button
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents cmbdir As System.Windows.Forms.ComboBox
    Friend WithEvents btnusardir As System.Windows.Forms.Button
    Friend WithEvents btnModificar As System.Windows.Forms.Button
End Class
