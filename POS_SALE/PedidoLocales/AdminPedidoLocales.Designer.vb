<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class AdminPedidoLocales
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
        Dim DataGridViewCellStyle4 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle5 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle6 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.Reportes = New System.Windows.Forms.TabControl()
        Me.admpedidos = New System.Windows.Forms.TabPage()
        Me.btnpicking = New System.Windows.Forms.Button()
        Me.btnarmado = New System.Windows.Forms.Button()
        Me.btnImprimir = New System.Windows.Forms.Button()
        Me.GroupBox4 = New System.Windows.Forms.GroupBox()
        Me.btnsalir = New System.Windows.Forms.Button()
        Me.btneliminar = New System.Windows.Forms.Button()
        Me.btnagregar = New System.Windows.Forms.Button()
        Me.btnaceptar = New System.Windows.Forms.Button()
        Me.grillapedact = New System.Windows.Forms.DataGridView()
        Me.idproducto = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.productonom = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.cantidadped = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.cantidadenv = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.cmbsucursal = New System.Windows.Forms.ComboBox()
        Me.btnanular = New System.Windows.Forms.Button()
        Me.txtfechasta = New System.Windows.Forms.DateTimePicker()
        Me.txtfecdesde = New System.Windows.Forms.DateTimePicker()
        Me.btnbuscar = New System.Windows.Forms.Button()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.cmbestado = New System.Windows.Forms.ComboBox()
        Me.grillapedidos = New System.Windows.Forms.DataGridView()
        Me.Reportes.SuspendLayout()
        Me.admpedidos.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        CType(Me.grillapedact, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox3.SuspendLayout()
        CType(Me.grillapedidos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Reportes
        '
        Me.Reportes.Controls.Add(Me.admpedidos)
        Me.Reportes.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Reportes.Font = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Reportes.Location = New System.Drawing.Point(0, 0)
        Me.Reportes.Name = "Reportes"
        Me.Reportes.SelectedIndex = 0
        Me.Reportes.Size = New System.Drawing.Size(1040, 720)
        Me.Reportes.TabIndex = 1
        '
        'admpedidos
        '
        Me.admpedidos.BackColor = System.Drawing.Color.DarkSeaGreen
        Me.admpedidos.Controls.Add(Me.btnpicking)
        Me.admpedidos.Controls.Add(Me.btnarmado)
        Me.admpedidos.Controls.Add(Me.btnImprimir)
        Me.admpedidos.Controls.Add(Me.GroupBox4)
        Me.admpedidos.Controls.Add(Me.btnaceptar)
        Me.admpedidos.Controls.Add(Me.grillapedact)
        Me.admpedidos.Controls.Add(Me.GroupBox3)
        Me.admpedidos.Controls.Add(Me.grillapedidos)
        Me.admpedidos.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.admpedidos.Location = New System.Drawing.Point(4, 38)
        Me.admpedidos.Name = "admpedidos"
        Me.admpedidos.Padding = New System.Windows.Forms.Padding(3)
        Me.admpedidos.Size = New System.Drawing.Size(1032, 678)
        Me.admpedidos.TabIndex = 1
        Me.admpedidos.Text = "Administración de Pedidos"
        '
        'btnpicking
        '
        Me.btnpicking.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnpicking.Image = Global.StrindbergNet.My.Resources.Resources.package_go1
        Me.btnpicking.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnpicking.Location = New System.Drawing.Point(898, 220)
        Me.btnpicking.Name = "btnpicking"
        Me.btnpicking.Size = New System.Drawing.Size(126, 39)
        Me.btnpicking.TabIndex = 43
        Me.btnpicking.Text = "Pre-Factura"
        Me.btnpicking.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.btnpicking.UseVisualStyleBackColor = True
        '
        'btnarmado
        '
        Me.btnarmado.BackColor = System.Drawing.Color.LightGray
        Me.btnarmado.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnarmado.Image = Global.StrindbergNet.My.Resources.Resources.box_down
        Me.btnarmado.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnarmado.Location = New System.Drawing.Point(898, 161)
        Me.btnarmado.Name = "btnarmado"
        Me.btnarmado.Size = New System.Drawing.Size(126, 39)
        Me.btnarmado.TabIndex = 42
        Me.btnarmado.Text = "Armado"
        Me.btnarmado.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.btnarmado.UseVisualStyleBackColor = False
        '
        'btnImprimir
        '
        Me.btnImprimir.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnImprimir.Image = Global.StrindbergNet.My.Resources.Resources.printer1
        Me.btnImprimir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnImprimir.Location = New System.Drawing.Point(898, 101)
        Me.btnImprimir.Name = "btnImprimir"
        Me.btnImprimir.Size = New System.Drawing.Size(126, 39)
        Me.btnImprimir.TabIndex = 41
        Me.btnImprimir.Text = "Imprimir"
        Me.btnImprimir.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.btnImprimir.UseVisualStyleBackColor = True
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.btnsalir)
        Me.GroupBox4.Controls.Add(Me.btneliminar)
        Me.GroupBox4.Controls.Add(Me.btnagregar)
        Me.GroupBox4.Location = New System.Drawing.Point(23, 604)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(868, 66)
        Me.GroupBox4.TabIndex = 40
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Accion"
        '
        'btnsalir
        '
        Me.btnsalir.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnsalir.Image = Global.StrindbergNet.My.Resources.Resources.cancel
        Me.btnsalir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnsalir.Location = New System.Drawing.Point(733, 22)
        Me.btnsalir.Name = "btnsalir"
        Me.btnsalir.Size = New System.Drawing.Size(129, 37)
        Me.btnsalir.TabIndex = 41
        Me.btnsalir.Text = "Cerrar"
        Me.btnsalir.UseVisualStyleBackColor = True
        '
        'btneliminar
        '
        Me.btneliminar.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btneliminar.Image = Global.StrindbergNet.My.Resources.Resources.database_delete
        Me.btneliminar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btneliminar.Location = New System.Drawing.Point(224, 23)
        Me.btneliminar.Name = "btneliminar"
        Me.btneliminar.Size = New System.Drawing.Size(129, 37)
        Me.btneliminar.TabIndex = 40
        Me.btneliminar.Text = "Eliminar"
        Me.btneliminar.UseVisualStyleBackColor = True
        '
        'btnagregar
        '
        Me.btnagregar.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnagregar.Image = Global.StrindbergNet.My.Resources.Resources.database_add
        Me.btnagregar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnagregar.Location = New System.Drawing.Point(67, 23)
        Me.btnagregar.Name = "btnagregar"
        Me.btnagregar.Size = New System.Drawing.Size(129, 37)
        Me.btnagregar.TabIndex = 39
        Me.btnagregar.Text = "Agregar"
        Me.btnagregar.UseVisualStyleBackColor = True
        '
        'btnaceptar
        '
        Me.btnaceptar.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnaceptar.Image = Global.StrindbergNet.My.Resources.Resources.lorry_go
        Me.btnaceptar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnaceptar.Location = New System.Drawing.Point(898, 276)
        Me.btnaceptar.Name = "btnaceptar"
        Me.btnaceptar.Size = New System.Drawing.Size(126, 39)
        Me.btnaceptar.TabIndex = 39
        Me.btnaceptar.Text = "Despachar"
        Me.btnaceptar.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.btnaceptar.UseVisualStyleBackColor = True
        '
        'grillapedact
        '
        Me.grillapedact.AllowUserToAddRows = False
        Me.grillapedact.AllowUserToDeleteRows = False
        Me.grillapedact.AllowUserToResizeColumns = False
        Me.grillapedact.AllowUserToResizeRows = False
        DataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.grillapedact.AlternatingRowsDefaultCellStyle = DataGridViewCellStyle4
        Me.grillapedact.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.grillapedact.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        Me.grillapedact.BackgroundColor = System.Drawing.SystemColors.ButtonFace
        Me.grillapedact.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillapedact.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.idproducto, Me.productonom, Me.cantidadped, Me.cantidadenv})
        Me.grillapedact.Location = New System.Drawing.Point(20, 276)
        Me.grillapedact.Name = "grillapedact"
        Me.grillapedact.RowHeadersVisible = False
        Me.grillapedact.RowTemplate.DefaultCellStyle.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.grillapedact.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.grillapedact.Size = New System.Drawing.Size(872, 327)
        Me.grillapedact.TabIndex = 33
        Me.grillapedact.TabStop = False
        '
        'idproducto
        '
        Me.idproducto.DataPropertyName = "id_producto"
        Me.idproducto.HeaderText = "ID"
        Me.idproducto.Name = "idproducto"
        Me.idproducto.Width = 51
        '
        'productonom
        '
        Me.productonom.DataPropertyName = "descripcion"
        DataGridViewCellStyle5.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.productonom.DefaultCellStyle = DataGridViewCellStyle5
        Me.productonom.HeaderText = "Producto"
        Me.productonom.Name = "productonom"
        Me.productonom.Width = 98
        '
        'cantidadped
        '
        Me.cantidadped.DataPropertyName = "cantidad"
        Me.cantidadped.HeaderText = "Cantidad Ped."
        Me.cantidadped.MaxInputLength = 3
        Me.cantidadped.Name = "cantidadped"
        Me.cantidadped.Width = 134
        '
        'cantidadenv
        '
        Me.cantidadenv.DataPropertyName = "cantenviada"
        Me.cantidadenv.HeaderText = "Cantidad Env."
        Me.cantidadenv.MaxInputLength = 3
        Me.cantidadenv.Name = "cantidadenv"
        Me.cantidadenv.Width = 133
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.Label6)
        Me.GroupBox3.Controls.Add(Me.cmbsucursal)
        Me.GroupBox3.Controls.Add(Me.btnanular)
        Me.GroupBox3.Controls.Add(Me.txtfechasta)
        Me.GroupBox3.Controls.Add(Me.txtfecdesde)
        Me.GroupBox3.Controls.Add(Me.btnbuscar)
        Me.GroupBox3.Controls.Add(Me.Label5)
        Me.GroupBox3.Controls.Add(Me.Label4)
        Me.GroupBox3.Controls.Add(Me.Label3)
        Me.GroupBox3.Controls.Add(Me.cmbestado)
        Me.GroupBox3.Location = New System.Drawing.Point(20, 6)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(990, 79)
        Me.GroupBox3.TabIndex = 32
        Me.GroupBox3.TabStop = False
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Enabled = False
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(503, 14)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(83, 24)
        Me.Label6.TabIndex = 43
        Me.Label6.Text = "Sucursal"
        Me.Label6.Visible = False
        '
        'cmbsucursal
        '
        Me.cmbsucursal.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbsucursal.Enabled = False
        Me.cmbsucursal.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbsucursal.FormattingEnabled = True
        Me.cmbsucursal.Location = New System.Drawing.Point(507, 41)
        Me.cmbsucursal.Name = "cmbsucursal"
        Me.cmbsucursal.Size = New System.Drawing.Size(183, 28)
        Me.cmbsucursal.TabIndex = 42
        Me.cmbsucursal.Visible = False
        '
        'btnanular
        '
        Me.btnanular.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnanular.Image = Global.StrindbergNet.My.Resources.Resources.cross
        Me.btnanular.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnanular.Location = New System.Drawing.Point(840, 32)
        Me.btnanular.Name = "btnanular"
        Me.btnanular.Size = New System.Drawing.Size(132, 37)
        Me.btnanular.TabIndex = 41
        Me.btnanular.Text = "ANULAR"
        Me.btnanular.UseVisualStyleBackColor = True
        Me.btnanular.Visible = False
        '
        'txtfechasta
        '
        Me.txtfechasta.CalendarFont = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtfechasta.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtfechasta.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.txtfechasta.Location = New System.Drawing.Point(155, 41)
        Me.txtfechasta.Name = "txtfechasta"
        Me.txtfechasta.Size = New System.Drawing.Size(118, 29)
        Me.txtfechasta.TabIndex = 40
        '
        'txtfecdesde
        '
        Me.txtfecdesde.CalendarFont = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtfecdesde.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtfecdesde.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.txtfecdesde.Location = New System.Drawing.Point(16, 41)
        Me.txtfecdesde.Name = "txtfecdesde"
        Me.txtfecdesde.Size = New System.Drawing.Size(118, 29)
        Me.txtfecdesde.TabIndex = 39
        '
        'btnbuscar
        '
        Me.btnbuscar.BackColor = System.Drawing.SystemColors.ButtonFace
        Me.btnbuscar.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnbuscar.Image = Global.StrindbergNet.My.Resources.Resources.zoom
        Me.btnbuscar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnbuscar.Location = New System.Drawing.Point(696, 33)
        Me.btnbuscar.Name = "btnbuscar"
        Me.btnbuscar.Size = New System.Drawing.Size(138, 37)
        Me.btnbuscar.TabIndex = 38
        Me.btnbuscar.Text = "BUSCAR"
        Me.btnbuscar.UseVisualStyleBackColor = False
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(305, 15)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(68, 24)
        Me.Label5.TabIndex = 37
        Me.Label5.Text = "Estado"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(157, 15)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(116, 24)
        Me.Label4.TabIndex = 36
        Me.Label4.Text = "Fecha Hasta"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(11, 14)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(124, 24)
        Me.Label3.TabIndex = 35
        Me.Label3.Text = "Fecha Desde"
        '
        'cmbestado
        '
        Me.cmbestado.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbestado.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbestado.FormattingEnabled = True
        Me.cmbestado.Items.AddRange(New Object() {"SinEntregar", "Entregados", "Anulados"})
        Me.cmbestado.Location = New System.Drawing.Point(306, 41)
        Me.cmbestado.Name = "cmbestado"
        Me.cmbestado.Size = New System.Drawing.Size(183, 28)
        Me.cmbestado.TabIndex = 34
        '
        'grillapedidos
        '
        Me.grillapedidos.AllowUserToAddRows = False
        Me.grillapedidos.AllowUserToDeleteRows = False
        Me.grillapedidos.AllowUserToResizeColumns = False
        Me.grillapedidos.AllowUserToResizeRows = False
        Me.grillapedidos.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.grillapedidos.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        Me.grillapedidos.BackgroundColor = System.Drawing.Color.Moccasin
        Me.grillapedidos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        DataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle6.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.ControlText
        DataGridViewCellStyle6.NullValue = Nothing
        DataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.grillapedidos.DefaultCellStyle = DataGridViewCellStyle6
        Me.grillapedidos.Location = New System.Drawing.Point(20, 101)
        Me.grillapedidos.MultiSelect = False
        Me.grillapedidos.Name = "grillapedidos"
        Me.grillapedidos.ReadOnly = True
        Me.grillapedidos.RowHeadersVisible = False
        Me.grillapedidos.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToAllHeaders
        Me.grillapedidos.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.grillapedidos.Size = New System.Drawing.Size(872, 169)
        Me.grillapedidos.TabIndex = 3
        '
        'AdminPedidoLocales
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1040, 720)
        Me.ControlBox = False
        Me.Controls.Add(Me.Reportes)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Name = "AdminPedidoLocales"
        Me.Text = "Admin Pedido Locales"
        Me.Reportes.ResumeLayout(False)
        Me.admpedidos.ResumeLayout(False)
        Me.GroupBox4.ResumeLayout(False)
        CType(Me.grillapedact, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        CType(Me.grillapedidos, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Reportes As System.Windows.Forms.TabControl
    Friend WithEvents admpedidos As System.Windows.Forms.TabPage
    Friend WithEvents grillapedidos As System.Windows.Forms.DataGridView
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents cmbestado As System.Windows.Forms.ComboBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents grillapedact As System.Windows.Forms.DataGridView
    Friend WithEvents btnbuscar As System.Windows.Forms.Button
    Friend WithEvents btnaceptar As System.Windows.Forms.Button
    Friend WithEvents txtfechasta As System.Windows.Forms.DateTimePicker
    Friend WithEvents txtfecdesde As System.Windows.Forms.DateTimePicker
    Friend WithEvents btnanular As System.Windows.Forms.Button
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents cmbsucursal As System.Windows.Forms.ComboBox
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents btneliminar As System.Windows.Forms.Button
    Friend WithEvents btnagregar As System.Windows.Forms.Button
    Friend WithEvents idproducto As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents productonom As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents cantidadped As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents cantidadenv As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents btnsalir As System.Windows.Forms.Button
    Friend WithEvents btnImprimir As System.Windows.Forms.Button
    Friend WithEvents btnarmado As System.Windows.Forms.Button
    Friend WithEvents btnpicking As System.Windows.Forms.Button

End Class
