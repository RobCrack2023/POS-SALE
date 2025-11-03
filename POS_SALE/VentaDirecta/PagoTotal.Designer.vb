<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class PagoTotal
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()>
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
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim DataGridViewCellStyle5 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle6 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.lbsubtotal2 = New System.Windows.Forms.Label()
        Me.btnaceptaclave = New System.Windows.Forms.Button()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.cmbmotivo = New System.Windows.Forms.ComboBox()
        Me.btntotal = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtmontodesc = New System.Windows.Forms.TextBox()
        Me.lbclaveaut = New System.Windows.Forms.Label()
        Me.txtclaveautor = New System.Windows.Forms.TextBox()
        Me.btndescuentos = New System.Windows.Forms.Button()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.btnvolver = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.btn9 = New System.Windows.Forms.Button()
        Me.btn8 = New System.Windows.Forms.Button()
        Me.btn7 = New System.Windows.Forms.Button()
        Me.btn6 = New System.Windows.Forms.Button()
        Me.btn5 = New System.Windows.Forms.Button()
        Me.btn4 = New System.Windows.Forms.Button()
        Me.btn3 = New System.Windows.Forms.Button()
        Me.btn2 = New System.Windows.Forms.Button()
        Me.btn1 = New System.Windows.Forms.Button()
        Me.grillapago = New System.Windows.Forms.DataGridView()
        Me.idptipopago = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.tipopago = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.monto = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.cambio = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.lbmsj = New System.Windows.Forms.Label()
        Me.txtsubmonto = New System.Windows.Forms.TextBox()
        Me.txtcambio = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.txtmontototal = New System.Windows.Forms.TextBox()
        Me.txtabonoenc = New System.Windows.Forms.TextBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.txtrestante = New System.Windows.Forms.TextBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.btnboleta = New System.Windows.Forms.Button()
        Me.GroupBox2.SuspendLayout()
        CType(Me.grillapago, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.Wheat
        Me.GroupBox1.Location = New System.Drawing.Point(16, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(995, 83)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Tipo de Pago"
        '
        'GroupBox2
        '
        Me.GroupBox2.BackColor = System.Drawing.Color.MediumAquamarine
        Me.GroupBox2.Controls.Add(Me.Label4)
        Me.GroupBox2.Controls.Add(Me.lbsubtotal2)
        Me.GroupBox2.Controls.Add(Me.btnaceptaclave)
        Me.GroupBox2.Controls.Add(Me.Label5)
        Me.GroupBox2.Controls.Add(Me.cmbmotivo)
        Me.GroupBox2.Controls.Add(Me.btntotal)
        Me.GroupBox2.Controls.Add(Me.Label1)
        Me.GroupBox2.Controls.Add(Me.txtmontodesc)
        Me.GroupBox2.Controls.Add(Me.lbclaveaut)
        Me.GroupBox2.Controls.Add(Me.txtclaveautor)
        Me.GroupBox2.Controls.Add(Me.btndescuentos)
        Me.GroupBox2.Controls.Add(Me.Button4)
        Me.GroupBox2.Controls.Add(Me.btnvolver)
        Me.GroupBox2.Controls.Add(Me.Button1)
        Me.GroupBox2.Controls.Add(Me.btn9)
        Me.GroupBox2.Controls.Add(Me.btn8)
        Me.GroupBox2.Controls.Add(Me.btn7)
        Me.GroupBox2.Controls.Add(Me.btn6)
        Me.GroupBox2.Controls.Add(Me.btn5)
        Me.GroupBox2.Controls.Add(Me.btn4)
        Me.GroupBox2.Controls.Add(Me.btn3)
        Me.GroupBox2.Controls.Add(Me.btn2)
        Me.GroupBox2.Controls.Add(Me.btn1)
        Me.GroupBox2.Controls.Add(Me.grillapago)
        Me.GroupBox2.Location = New System.Drawing.Point(16, 287)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(995, 320)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(208, 16)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(93, 24)
        Me.Label4.TabIndex = 38
        Me.Label4.Text = "Restante :"
        Me.Label4.Visible = False
        '
        'lbsubtotal2
        '
        Me.lbsubtotal2.AutoSize = True
        Me.lbsubtotal2.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbsubtotal2.Location = New System.Drawing.Point(101, 13)
        Me.lbsubtotal2.Name = "lbsubtotal2"
        Me.lbsubtotal2.Size = New System.Drawing.Size(60, 24)
        Me.lbsubtotal2.TabIndex = 37
        Me.lbsubtotal2.Text = "aaaaa"
        '
        'btnaceptaclave
        '
        Me.btnaceptaclave.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnaceptaclave.Image = Global.StrindbergNet.My.Resources.Resources.accept
        Me.btnaceptaclave.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnaceptaclave.Location = New System.Drawing.Point(358, 257)
        Me.btnaceptaclave.Name = "btnaceptaclave"
        Me.btnaceptaclave.Size = New System.Drawing.Size(208, 48)
        Me.btnaceptaclave.TabIndex = 36
        Me.btnaceptaclave.Text = "Aceptar"
        Me.btnaceptaclave.UseVisualStyleBackColor = True
        Me.btnaceptaclave.Visible = False
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(362, 135)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(161, 24)
        Me.Label5.TabIndex = 35
        Me.Label5.Text = "Motivo Descuento"
        Me.Label5.Visible = False
        '
        'cmbmotivo
        '
        Me.cmbmotivo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbmotivo.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbmotivo.FormattingEnabled = True
        Me.cmbmotivo.Location = New System.Drawing.Point(358, 162)
        Me.cmbmotivo.Name = "cmbmotivo"
        Me.cmbmotivo.Size = New System.Drawing.Size(207, 28)
        Me.cmbmotivo.TabIndex = 9
        Me.cmbmotivo.Visible = False
        '
        'btntotal
        '
        Me.btntotal.Font = New System.Drawing.Font("Microsoft Sans Serif", 24.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btntotal.Location = New System.Drawing.Point(588, 256)
        Me.btntotal.Name = "btntotal"
        Me.btntotal.Size = New System.Drawing.Size(279, 49)
        Me.btntotal.TabIndex = 33
        Me.btntotal.Text = "PAGAR"
        Me.btntotal.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(354, 76)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(121, 24)
        Me.Label1.TabIndex = 31
        Me.Label1.Text = "% Descuento"
        Me.Label1.Visible = False
        '
        'txtmontodesc
        '
        Me.txtmontodesc.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtmontodesc.Location = New System.Drawing.Point(358, 100)
        Me.txtmontodesc.MaxLength = 6
        Me.txtmontodesc.Name = "txtmontodesc"
        Me.txtmontodesc.Size = New System.Drawing.Size(208, 31)
        Me.txtmontodesc.TabIndex = 10
        Me.txtmontodesc.Visible = False
        '
        'lbclaveaut
        '
        Me.lbclaveaut.AutoSize = True
        Me.lbclaveaut.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbclaveaut.Location = New System.Drawing.Point(362, 193)
        Me.lbclaveaut.Name = "lbclaveaut"
        Me.lbclaveaut.Size = New System.Drawing.Size(130, 24)
        Me.lbclaveaut.TabIndex = 3
        Me.lbclaveaut.Text = "Clave Autoriza"
        Me.lbclaveaut.Visible = False
        '
        'txtclaveautor
        '
        Me.txtclaveautor.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtclaveautor.Location = New System.Drawing.Point(362, 217)
        Me.txtclaveautor.Name = "txtclaveautor"
        Me.txtclaveautor.Size = New System.Drawing.Size(204, 31)
        Me.txtclaveautor.TabIndex = 11
        Me.txtclaveautor.UseSystemPasswordChar = True
        Me.txtclaveautor.Visible = False
        '
        'btndescuentos
        '
        Me.btndescuentos.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btndescuentos.Location = New System.Drawing.Point(358, 19)
        Me.btndescuentos.Name = "btndescuentos"
        Me.btndescuentos.Size = New System.Drawing.Size(208, 49)
        Me.btndescuentos.TabIndex = 8
        Me.btndescuentos.Text = "Descuentos"
        Me.btndescuentos.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button4.Location = New System.Drawing.Point(588, 196)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(83, 54)
        Me.Button4.TabIndex = 27
        Me.Button4.Text = "C"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'btnvolver
        '
        Me.btnvolver.BackColor = System.Drawing.Color.Red
        Me.btnvolver.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnvolver.Location = New System.Drawing.Point(784, 196)
        Me.btnvolver.Name = "btnvolver"
        Me.btnvolver.Size = New System.Drawing.Size(83, 54)
        Me.btnvolver.TabIndex = 26
        Me.btnvolver.Text = "SALIR"
        Me.btnvolver.UseVisualStyleBackColor = False
        '
        'Button1
        '
        Me.Button1.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button1.Location = New System.Drawing.Point(686, 196)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(83, 54)
        Me.Button1.TabIndex = 22
        Me.Button1.Text = "0"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'btn9
        '
        Me.btn9.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn9.Location = New System.Drawing.Point(784, 16)
        Me.btn9.Name = "btn9"
        Me.btn9.Size = New System.Drawing.Size(83, 54)
        Me.btn9.TabIndex = 20
        Me.btn9.Text = "9"
        Me.btn9.UseVisualStyleBackColor = True
        '
        'btn8
        '
        Me.btn8.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn8.Location = New System.Drawing.Point(686, 16)
        Me.btn8.Name = "btn8"
        Me.btn8.Size = New System.Drawing.Size(83, 54)
        Me.btn8.TabIndex = 19
        Me.btn8.Text = "8"
        Me.btn8.UseVisualStyleBackColor = True
        '
        'btn7
        '
        Me.btn7.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn7.Location = New System.Drawing.Point(588, 16)
        Me.btn7.Name = "btn7"
        Me.btn7.Size = New System.Drawing.Size(83, 54)
        Me.btn7.TabIndex = 18
        Me.btn7.Text = "7"
        Me.btn7.UseVisualStyleBackColor = True
        '
        'btn6
        '
        Me.btn6.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn6.Location = New System.Drawing.Point(784, 79)
        Me.btn6.Name = "btn6"
        Me.btn6.Size = New System.Drawing.Size(83, 54)
        Me.btn6.TabIndex = 17
        Me.btn6.Text = "6"
        Me.btn6.UseVisualStyleBackColor = True
        '
        'btn5
        '
        Me.btn5.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn5.Location = New System.Drawing.Point(686, 79)
        Me.btn5.Name = "btn5"
        Me.btn5.Size = New System.Drawing.Size(83, 54)
        Me.btn5.TabIndex = 16
        Me.btn5.Text = "5"
        Me.btn5.UseVisualStyleBackColor = True
        '
        'btn4
        '
        Me.btn4.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn4.Location = New System.Drawing.Point(588, 79)
        Me.btn4.Name = "btn4"
        Me.btn4.Size = New System.Drawing.Size(83, 54)
        Me.btn4.TabIndex = 15
        Me.btn4.Text = "4"
        Me.btn4.UseVisualStyleBackColor = True
        '
        'btn3
        '
        Me.btn3.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn3.Location = New System.Drawing.Point(784, 136)
        Me.btn3.Name = "btn3"
        Me.btn3.Size = New System.Drawing.Size(83, 54)
        Me.btn3.TabIndex = 14
        Me.btn3.Text = "3"
        Me.btn3.UseVisualStyleBackColor = True
        '
        'btn2
        '
        Me.btn2.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn2.Location = New System.Drawing.Point(686, 136)
        Me.btn2.Name = "btn2"
        Me.btn2.Size = New System.Drawing.Size(83, 54)
        Me.btn2.TabIndex = 13
        Me.btn2.Text = "2"
        Me.btn2.UseVisualStyleBackColor = True
        '
        'btn1
        '
        Me.btn1.Font = New System.Drawing.Font("Microsoft Sans Serif", 36.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btn1.Location = New System.Drawing.Point(588, 136)
        Me.btn1.Name = "btn1"
        Me.btn1.Size = New System.Drawing.Size(83, 54)
        Me.btn1.TabIndex = 12
        Me.btn1.Text = "1"
        Me.btn1.UseVisualStyleBackColor = True
        '
        'grillapago
        '
        Me.grillapago.AllowUserToAddRows = False
        Me.grillapago.AllowUserToDeleteRows = False
        Me.grillapago.AllowUserToResizeColumns = False
        Me.grillapago.AllowUserToResizeRows = False
        Me.grillapago.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.grillapago.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        Me.grillapago.BackgroundColor = System.Drawing.SystemColors.Control
        Me.grillapago.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillapago.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.idptipopago, Me.tipopago, Me.monto, Me.cambio})
        Me.grillapago.GridColor = System.Drawing.SystemColors.Control
        Me.grillapago.Location = New System.Drawing.Point(6, 40)
        Me.grillapago.Name = "grillapago"
        Me.grillapago.ReadOnly = True
        Me.grillapago.RowHeadersVisible = False
        Me.grillapago.RowTemplate.DefaultCellStyle.Font = New System.Drawing.Font("Microsoft Sans Serif", 20.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.grillapago.Size = New System.Drawing.Size(327, 263)
        Me.grillapago.TabIndex = 0
        '
        'idptipopago
        '
        Me.idptipopago.HeaderText = "idtipopago"
        Me.idptipopago.Name = "idptipopago"
        Me.idptipopago.ReadOnly = True
        Me.idptipopago.Visible = False
        Me.idptipopago.Width = 62
        '
        'tipopago
        '
        DataGridViewCellStyle5.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.tipopago.DefaultCellStyle = DataGridViewCellStyle5
        Me.tipopago.HeaderText = "Tipo Pago"
        Me.tipopago.Name = "tipopago"
        Me.tipopago.ReadOnly = True
        Me.tipopago.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.tipopago.Width = 62
        '
        'monto
        '
        DataGridViewCellStyle6.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.monto.DefaultCellStyle = DataGridViewCellStyle6
        Me.monto.HeaderText = "Monto"
        Me.monto.Name = "monto"
        Me.monto.ReadOnly = True
        Me.monto.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.NotSortable
        Me.monto.Width = 43
        '
        'cambio
        '
        Me.cambio.HeaderText = "Cambio"
        Me.cambio.Name = "cambio"
        Me.cambio.ReadOnly = True
        Me.cambio.Width = 67
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(685, 110)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(61, 24)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Total :"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(19, 113)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(73, 24)
        Me.Label3.TabIndex = 5
        Me.Label3.Text = "Monto :"
        '
        'lbmsj
        '
        Me.lbmsj.AutoSize = True
        Me.lbmsj.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbmsj.ForeColor = System.Drawing.Color.Red
        Me.lbmsj.Location = New System.Drawing.Point(31, 279)
        Me.lbmsj.Name = "lbmsj"
        Me.lbmsj.Size = New System.Drawing.Size(0, 24)
        Me.lbmsj.TabIndex = 6
        '
        'txtsubmonto
        '
        Me.txtsubmonto.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtsubmonto.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtsubmonto.Location = New System.Drawing.Point(93, 108)
        Me.txtsubmonto.Name = "txtsubmonto"
        Me.txtsubmonto.Size = New System.Drawing.Size(133, 29)
        Me.txtsubmonto.TabIndex = 7
        '
        'txtcambio
        '
        Me.txtcambio.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtcambio.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtcambio.Location = New System.Drawing.Point(323, 108)
        Me.txtcambio.Name = "txtcambio"
        Me.txtcambio.ReadOnly = True
        Me.txtcambio.Size = New System.Drawing.Size(133, 29)
        Me.txtcambio.TabIndex = 9
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(236, 110)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(74, 24)
        Me.Label6.TabIndex = 8
        Me.Label6.Text = "Vuelto :"
        '
        'txtmontototal
        '
        Me.txtmontototal.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtmontototal.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtmontototal.Location = New System.Drawing.Point(748, 108)
        Me.txtmontototal.Name = "txtmontototal"
        Me.txtmontototal.ReadOnly = True
        Me.txtmontototal.Size = New System.Drawing.Size(156, 29)
        Me.txtmontototal.TabIndex = 10
        '
        'txtabonoenc
        '
        Me.txtabonoenc.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtabonoenc.Enabled = False
        Me.txtabonoenc.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtabonoenc.Location = New System.Drawing.Point(539, 108)
        Me.txtabonoenc.Name = "txtabonoenc"
        Me.txtabonoenc.ReadOnly = True
        Me.txtabonoenc.Size = New System.Drawing.Size(140, 29)
        Me.txtabonoenc.TabIndex = 42
        Me.txtabonoenc.Visible = False
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.Location = New System.Drawing.Point(461, 110)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(77, 24)
        Me.Label7.TabIndex = 41
        Me.Label7.Text = "Abono :"
        Me.Label7.Visible = False
        '
        'txtrestante
        '
        Me.txtrestante.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtrestante.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtrestante.Location = New System.Drawing.Point(93, 160)
        Me.txtrestante.Name = "txtrestante"
        Me.txtrestante.ReadOnly = True
        Me.txtrestante.Size = New System.Drawing.Size(133, 29)
        Me.txtrestante.TabIndex = 44
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.Location = New System.Drawing.Point(-1, 162)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(93, 24)
        Me.Label8.TabIndex = 43
        Me.Label8.Text = "Restante :"
        '
        'btnboleta
        '
        Me.btnboleta.Enabled = False
        Me.btnboleta.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnboleta.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnboleta.Location = New System.Drawing.Point(16, 221)
        Me.btnboleta.Name = "btnboleta"
        Me.btnboleta.Size = New System.Drawing.Size(301, 52)
        Me.btnboleta.TabIndex = 37
        Me.btnboleta.Text = "Boleta"
        Me.btnboleta.UseVisualStyleBackColor = True
        '
        'PagoTotal
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1023, 614)
        Me.ControlBox = False
        Me.Controls.Add(Me.txtrestante)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.txtabonoenc)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.btnboleta)
        Me.Controls.Add(Me.txtmontototal)
        Me.Controls.Add(Me.txtcambio)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.txtsubmonto)
        Me.Controls.Add(Me.lbmsj)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "PagoTotal"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "POS-SALE"
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        CType(Me.grillapago, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents grillapago As System.Windows.Forms.DataGridView
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents btn9 As System.Windows.Forms.Button
    Friend WithEvents btn8 As System.Windows.Forms.Button
    Friend WithEvents btn7 As System.Windows.Forms.Button
    Friend WithEvents btn6 As System.Windows.Forms.Button
    Friend WithEvents btn5 As System.Windows.Forms.Button
    Friend WithEvents btn4 As System.Windows.Forms.Button
    Friend WithEvents btn3 As System.Windows.Forms.Button
    Friend WithEvents btn2 As System.Windows.Forms.Button
    Friend WithEvents btn1 As System.Windows.Forms.Button
    Friend WithEvents btnvolver As System.Windows.Forms.Button
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents btndescuentos As System.Windows.Forms.Button
    Friend WithEvents lbclaveaut As System.Windows.Forms.Label
    Friend WithEvents txtclaveautor As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtmontodesc As System.Windows.Forms.TextBox
    Friend WithEvents btntotal As System.Windows.Forms.Button
    Friend WithEvents cmbmotivo As System.Windows.Forms.ComboBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents lbmsj As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents btnaceptaclave As System.Windows.Forms.Button
    Friend WithEvents txtsubmonto As System.Windows.Forms.TextBox
    Friend WithEvents txtcambio As System.Windows.Forms.TextBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents txtmontototal As System.Windows.Forms.TextBox
    Friend WithEvents btnboleta As System.Windows.Forms.Button
    Friend WithEvents txtabonoenc As System.Windows.Forms.TextBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents lbsubtotal2 As System.Windows.Forms.Label
    Friend WithEvents txtrestante As System.Windows.Forms.TextBox
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents idptipopago As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents tipopago As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents monto As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents cambio As System.Windows.Forms.DataGridViewTextBoxColumn
End Class
