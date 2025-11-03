<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class MenuSemana
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
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.Reportes = New System.Windows.Forms.TabControl()
        Me.pedlocal = New System.Windows.Forms.TabPage()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.cmbsucursal = New System.Windows.Forms.ComboBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cmbturno = New System.Windows.Forms.ComboBox()
        Me.txtfechaped = New System.Windows.Forms.DateTimePicker()
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
        Me.optimo = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.sugerida = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.produccion = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.lbconectado = New System.Windows.Forms.Label()
        Me.lbactualiza = New System.Windows.Forms.Label()
        Me.lbnomusr = New System.Windows.Forms.Label()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.btnenviar = New System.Windows.Forms.Button()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.admpedidos = New System.Windows.Forms.TabPage()
        Me.btnaceptar = New System.Windows.Forms.Button()
        Me.grillapedact = New System.Windows.Forms.DataGridView()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.btncopiar = New System.Windows.Forms.Button()
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
        Me.pedlocal.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        CType(Me.grillaprodsol, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.admpedidos.SuspendLayout()
        CType(Me.grillapedact, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox3.SuspendLayout()
        CType(Me.grillapedidos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Reportes
        '
        Me.Reportes.Controls.Add(Me.pedlocal)
        Me.Reportes.Controls.Add(Me.admpedidos)
        Me.Reportes.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Reportes.Font = New System.Drawing.Font("Microsoft Sans Serif", 18.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Reportes.Location = New System.Drawing.Point(0, 0)
        Me.Reportes.Name = "Reportes"
        Me.Reportes.SelectedIndex = 0
        Me.Reportes.Size = New System.Drawing.Size(1034, 720)
        Me.Reportes.TabIndex = 1
        '
        'pedlocal
        '
        Me.pedlocal.BackColor = System.Drawing.Color.IndianRed
        Me.pedlocal.Controls.Add(Me.Label6)
        Me.pedlocal.Controls.Add(Me.cmbsucursal)
        Me.pedlocal.Controls.Add(Me.Label2)
        Me.pedlocal.Controls.Add(Me.Label1)
        Me.pedlocal.Controls.Add(Me.cmbturno)
        Me.pedlocal.Controls.Add(Me.txtfechaped)
        Me.pedlocal.Controls.Add(Me.GroupBox1)
        Me.pedlocal.Controls.Add(Me.lbconectado)
        Me.pedlocal.Controls.Add(Me.lbactualiza)
        Me.pedlocal.Controls.Add(Me.lbnomusr)
        Me.pedlocal.Controls.Add(Me.btncerrar)
        Me.pedlocal.Controls.Add(Me.btnenviar)
        Me.pedlocal.Controls.Add(Me.GroupBox2)
        Me.pedlocal.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.pedlocal.Location = New System.Drawing.Point(4, 38)
        Me.pedlocal.Name = "pedlocal"
        Me.pedlocal.Padding = New System.Windows.Forms.Padding(3)
        Me.pedlocal.Size = New System.Drawing.Size(1026, 678)
        Me.pedlocal.TabIndex = 0
        Me.pedlocal.Text = "Menu Semana"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(412, 596)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(83, 24)
        Me.Label6.TabIndex = 45
        Me.Label6.Text = "Sucursal"
        Me.Label6.Visible = False
        '
        'cmbsucursal
        '
        Me.cmbsucursal.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbsucursal.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbsucursal.FormattingEnabled = True
        Me.cmbsucursal.Location = New System.Drawing.Point(416, 622)
        Me.cmbsucursal.Name = "cmbsucursal"
        Me.cmbsucursal.Size = New System.Drawing.Size(183, 32)
        Me.cmbsucursal.TabIndex = 44
        Me.cmbsucursal.Visible = False
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(206, 596)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(152, 24)
        Me.Label2.TabIndex = 37
        Me.Label2.Text = "Turno Despacho"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(18, 593)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(117, 24)
        Me.Label1.TabIndex = 36
        Me.Label1.Text = "Fecha Saldo"
        '
        'cmbturno
        '
        Me.cmbturno.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbturno.FormattingEnabled = True
        Me.cmbturno.Location = New System.Drawing.Point(210, 623)
        Me.cmbturno.Name = "cmbturno"
        Me.cmbturno.Size = New System.Drawing.Size(184, 32)
        Me.cmbturno.TabIndex = 35
        '
        'txtfechaped
        '
        Me.txtfechaped.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.txtfechaped.Location = New System.Drawing.Point(22, 625)
        Me.txtfechaped.Margin = New System.Windows.Forms.Padding(7)
        Me.txtfechaped.Name = "txtfechaped"
        Me.txtfechaped.Size = New System.Drawing.Size(171, 29)
        Me.txtfechaped.TabIndex = 34
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
        Me.lbtotal.Location = New System.Drawing.Point(158, 22)
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
        Me.Label10.Size = New System.Drawing.Size(131, 24)
        Me.Label10.TabIndex = 28
        Me.Label10.Text = "Total Locales :"
        '
        'grillaprodsol
        '
        Me.grillaprodsol.AllowUserToAddRows = False
        Me.grillaprodsol.AllowUserToDeleteRows = False
        Me.grillaprodsol.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.ColumnHeader
        Me.grillaprodsol.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        Me.grillaprodsol.BackgroundColor = System.Drawing.Color.DarkGray
        Me.grillaprodsol.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillaprodsol.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.idprod, Me.producto, Me.cantprod, Me.inventario, Me.merma, Me.subtotalprod, Me.optimo, Me.sugerida, Me.produccion})
        Me.grillaprodsol.GridColor = System.Drawing.SystemColors.ButtonFace
        Me.grillaprodsol.Location = New System.Drawing.Point(16, 49)
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
        Me.idprod.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.idprod.Width = 33
        '
        'producto
        '
        Me.producto.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.producto.HeaderText = "Producto"
        Me.producto.Name = "producto"
        Me.producto.ReadOnly = True
        Me.producto.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.producto.Width = 92
        '
        'cantprod
        '
        Me.cantprod.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.cantprod.HeaderText = "Pedido"
        Me.cantprod.MaxInputLength = 3
        Me.cantprod.Name = "cantprod"
        Me.cantprod.ReadOnly = True
        Me.cantprod.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.cantprod.Width = 76
        '
        'inventario
        '
        Me.inventario.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.inventario.HeaderText = "Inicial"
        Me.inventario.MaxInputLength = 3
        Me.inventario.Name = "inventario"
        Me.inventario.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.inventario.Width = 63
        '
        'merma
        '
        Me.merma.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.merma.HeaderText = "Descontar"
        Me.merma.MaxInputLength = 3
        Me.merma.Name = "merma"
        Me.merma.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.merma.Width = 101
        '
        'subtotalprod
        '
        Me.subtotalprod.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.AllCells
        Me.subtotalprod.HeaderText = "Fin"
        Me.subtotalprod.MaxInputLength = 3
        Me.subtotalprod.Name = "subtotalprod"
        Me.subtotalprod.ReadOnly = True
        Me.subtotalprod.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.subtotalprod.Width = 43
        '
        'optimo
        '
        Me.optimo.HeaderText = "Optimo"
        Me.optimo.MaxInputLength = 3
        Me.optimo.Name = "optimo"
        Me.optimo.ReadOnly = True
        Me.optimo.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.optimo.Width = 77
        '
        'sugerida
        '
        Me.sugerida.HeaderText = "Sugerida"
        Me.sugerida.MaxInputLength = 3
        Me.sugerida.Name = "sugerida"
        Me.sugerida.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.sugerida.Width = 92
        '
        'produccion
        '
        Me.produccion.HeaderText = "Produccion"
        Me.produccion.MaxInputLength = 3
        Me.produccion.Name = "produccion"
        Me.produccion.ReadOnly = True
        Me.produccion.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.produccion.Width = 113
        '
        'lbconectado
        '
        Me.lbconectado.AutoSize = True
        Me.lbconectado.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbconectado.ForeColor = System.Drawing.Color.Red
        Me.lbconectado.Location = New System.Drawing.Point(816, 614)
        Me.lbconectado.Name = "lbconectado"
        Me.lbconectado.Size = New System.Drawing.Size(42, 13)
        Me.lbconectado.TabIndex = 31
        Me.lbconectado.Text = "xxxxxxx"
        '
        'lbactualiza
        '
        Me.lbactualiza.AutoSize = True
        Me.lbactualiza.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbactualiza.Location = New System.Drawing.Point(816, 627)
        Me.lbactualiza.Name = "lbactualiza"
        Me.lbactualiza.Size = New System.Drawing.Size(34, 13)
        Me.lbactualiza.TabIndex = 30
        Me.lbactualiza.Text = "---------"
        '
        'lbnomusr
        '
        Me.lbnomusr.AutoSize = True
        Me.lbnomusr.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbnomusr.Location = New System.Drawing.Point(816, 646)
        Me.lbnomusr.Name = "lbnomusr"
        Me.lbnomusr.Size = New System.Drawing.Size(42, 13)
        Me.lbnomusr.TabIndex = 29
        Me.lbnomusr.Text = "xxxxxxx"
        '
        'btncerrar
        '
        Me.btncerrar.Image = Global.StrindbergNet.My.Resources.Resources.cross
        Me.btncerrar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btncerrar.Location = New System.Drawing.Point(885, 612)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(117, 49)
        Me.btncerrar.TabIndex = 15
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'btnenviar
        '
        Me.btnenviar.Image = Global.StrindbergNet.My.Resources.Resources.package_go
        Me.btnenviar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnenviar.Location = New System.Drawing.Point(637, 616)
        Me.btnenviar.Name = "btnenviar"
        Me.btnenviar.Size = New System.Drawing.Size(164, 45)
        Me.btnenviar.TabIndex = 14
        Me.btnenviar.Text = "ENVIAR"
        Me.btnenviar.UseVisualStyleBackColor = True
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
        'admpedidos
        '
        Me.admpedidos.BackColor = System.Drawing.Color.YellowGreen
        Me.admpedidos.Controls.Add(Me.btnaceptar)
        Me.admpedidos.Controls.Add(Me.grillapedact)
        Me.admpedidos.Controls.Add(Me.GroupBox3)
        Me.admpedidos.Controls.Add(Me.grillapedidos)
        Me.admpedidos.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.admpedidos.Location = New System.Drawing.Point(4, 38)
        Me.admpedidos.Name = "admpedidos"
        Me.admpedidos.Padding = New System.Windows.Forms.Padding(3)
        Me.admpedidos.Size = New System.Drawing.Size(1026, 678)
        Me.admpedidos.TabIndex = 1
        Me.admpedidos.Text = "Pedido Locales Menu"
        '
        'btnaceptar
        '
        Me.btnaceptar.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnaceptar.Image = Global.StrindbergNet.My.Resources.Resources.report_go
        Me.btnaceptar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnaceptar.Location = New System.Drawing.Point(898, 276)
        Me.btnaceptar.Name = "btnaceptar"
        Me.btnaceptar.Size = New System.Drawing.Size(112, 39)
        Me.btnaceptar.TabIndex = 39
        Me.btnaceptar.Text = "ACEPTAR"
        Me.btnaceptar.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.btnaceptar.UseVisualStyleBackColor = True
        '
        'grillapedact
        '
        Me.grillapedact.AllowUserToAddRows = False
        Me.grillapedact.AllowUserToDeleteRows = False
        Me.grillapedact.AllowUserToResizeColumns = False
        Me.grillapedact.AllowUserToResizeRows = False
        DataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.grillapedact.AlternatingRowsDefaultCellStyle = DataGridViewCellStyle1
        Me.grillapedact.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.grillapedact.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        Me.grillapedact.BackgroundColor = System.Drawing.SystemColors.ButtonFace
        Me.grillapedact.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillapedact.Location = New System.Drawing.Point(20, 276)
        Me.grillapedact.Name = "grillapedact"
        Me.grillapedact.RowHeadersVisible = False
        Me.grillapedact.RowTemplate.DefaultCellStyle.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.grillapedact.Size = New System.Drawing.Size(872, 391)
        Me.grillapedact.TabIndex = 33
        Me.grillapedact.TabStop = False
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.btncopiar)
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
        'btncopiar
        '
        Me.btncopiar.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btncopiar.Image = Global.StrindbergNet.My.Resources.Resources.copying_and_distribution
        Me.btncopiar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btncopiar.Location = New System.Drawing.Point(715, 33)
        Me.btncopiar.Name = "btncopiar"
        Me.btncopiar.Size = New System.Drawing.Size(110, 37)
        Me.btncopiar.TabIndex = 42
        Me.btncopiar.Text = "COPIAR"
        Me.btncopiar.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.btncopiar.UseVisualStyleBackColor = True
        '
        'btnanular
        '
        Me.btnanular.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnanular.Image = Global.StrindbergNet.My.Resources.Resources.cross
        Me.btnanular.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnanular.Location = New System.Drawing.Point(831, 32)
        Me.btnanular.Name = "btnanular"
        Me.btnanular.Size = New System.Drawing.Size(110, 37)
        Me.btnanular.TabIndex = 41
        Me.btnanular.Text = "ANULAR"
        Me.btnanular.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.btnanular.UseVisualStyleBackColor = True
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
        Me.btnbuscar.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnbuscar.Image = Global.StrindbergNet.My.Resources.Resources.zoom
        Me.btnbuscar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnbuscar.Location = New System.Drawing.Point(599, 33)
        Me.btnbuscar.Name = "btnbuscar"
        Me.btnbuscar.Size = New System.Drawing.Size(110, 37)
        Me.btnbuscar.TabIndex = 38
        Me.btnbuscar.Text = "BUSCAR"
        Me.btnbuscar.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.btnbuscar.UseVisualStyleBackColor = True
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(305, 15)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(113, 24)
        Me.Label5.TabIndex = 37
        Me.Label5.Text = "Tipo Pedido"
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
        Me.cmbestado.Size = New System.Drawing.Size(270, 28)
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
        DataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText
        DataGridViewCellStyle2.NullValue = Nothing
        DataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight
        DataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.[False]
        Me.grillapedidos.DefaultCellStyle = DataGridViewCellStyle2
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
        'MenuSemana
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1034, 720)
        Me.ControlBox = False
        Me.Controls.Add(Me.Reportes)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "MenuSemana"
        Me.Text = "Menu Semana"
        Me.Reportes.ResumeLayout(False)
        Me.pedlocal.ResumeLayout(False)
        Me.pedlocal.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.grillaprodsol, System.ComponentModel.ISupportInitialize).EndInit()
        Me.admpedidos.ResumeLayout(False)
        CType(Me.grillapedact, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        CType(Me.grillapedidos, System.ComponentModel.ISupportInitialize).EndInit()
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
    Friend WithEvents admpedidos As System.Windows.Forms.TabPage
    Friend WithEvents grillapedidos As System.Windows.Forms.DataGridView
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents lbtotal As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents grillaprodsol As System.Windows.Forms.DataGridView
    Friend WithEvents cmbturno As System.Windows.Forms.ComboBox
    Friend WithEvents txtfechaped As System.Windows.Forms.DateTimePicker
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
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
    Friend WithEvents btncopiar As System.Windows.Forms.Button
    Friend WithEvents idprod As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents producto As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents cantprod As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents inventario As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents merma As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents subtotalprod As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents optimo As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents sugerida As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents produccion As System.Windows.Forms.DataGridViewTextBoxColumn

End Class
