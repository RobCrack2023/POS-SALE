<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class AnulaDoc
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(AnulaDoc))
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.checknulos = New System.Windows.Forms.CheckBox()
        Me.btnbuscar = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtfecha = New System.Windows.Forms.DateTimePicker()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.txtticket = New System.Windows.Forms.TextBox()
        Me.lberror = New System.Windows.Forms.Label()
        Me.griddetdocanula = New System.Windows.Forms.DataGridView()
        Me.griddocanula = New System.Windows.Forms.DataGridView()
        Me.btneliticket = New System.Windows.Forms.Button()
        Me.btneliitem = New System.Windows.Forms.Button()
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
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.griddetdocanula, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.griddocanula, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.MediumPurple
        Me.GroupBox1.Controls.Add(Me.GroupBox2)
        Me.GroupBox1.Controls.Add(Me.griddetdocanula)
        Me.GroupBox1.Controls.Add(Me.griddocanula)
        Me.GroupBox1.Controls.Add(Me.btneliticket)
        Me.GroupBox1.Controls.Add(Me.btneliitem)
        Me.GroupBox1.Controls.Add(Me.Button4)
        Me.GroupBox1.Controls.Add(Me.btnvolver)
        Me.GroupBox1.Controls.Add(Me.Button1)
        Me.GroupBox1.Controls.Add(Me.btn9)
        Me.GroupBox1.Controls.Add(Me.btn8)
        Me.GroupBox1.Controls.Add(Me.btn7)
        Me.GroupBox1.Controls.Add(Me.btn6)
        Me.GroupBox1.Controls.Add(Me.btn5)
        Me.GroupBox1.Controls.Add(Me.btn4)
        Me.GroupBox1.Controls.Add(Me.btn3)
        Me.GroupBox1.Controls.Add(Me.btn2)
        Me.GroupBox1.Controls.Add(Me.btn1)
        resources.ApplyResources(Me.GroupBox1, "GroupBox1")
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.TabStop = False
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.checknulos)
        Me.GroupBox2.Controls.Add(Me.btnbuscar)
        Me.GroupBox2.Controls.Add(Me.Label1)
        Me.GroupBox2.Controls.Add(Me.txtfecha)
        Me.GroupBox2.Controls.Add(Me.Label4)
        Me.GroupBox2.Controls.Add(Me.txtticket)
        Me.GroupBox2.Controls.Add(Me.lberror)
        resources.ApplyResources(Me.GroupBox2, "GroupBox2")
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.TabStop = False
        '
        'checknulos
        '
        resources.ApplyResources(Me.checknulos, "checknulos")
        Me.checknulos.Name = "checknulos"
        Me.checknulos.UseVisualStyleBackColor = True
        '
        'btnbuscar
        '
        resources.ApplyResources(Me.btnbuscar, "btnbuscar")
        Me.btnbuscar.Name = "btnbuscar"
        Me.btnbuscar.UseVisualStyleBackColor = True
        '
        'Label1
        '
        resources.ApplyResources(Me.Label1, "Label1")
        Me.Label1.Name = "Label1"
        '
        'txtfecha
        '
        resources.ApplyResources(Me.txtfecha, "txtfecha")
        Me.txtfecha.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.txtfecha.MaxDate = New Date(2028, 1, 1, 0, 0, 0, 0)
        Me.txtfecha.MinDate = New Date(2025, 1, 1, 0, 0, 0, 0)
        Me.txtfecha.Name = "txtfecha"
        Me.txtfecha.Value = New Date(2026, 2, 15, 0, 0, 0, 0)
        '
        'Label4
        '
        resources.ApplyResources(Me.Label4, "Label4")
        Me.Label4.Name = "Label4"
        '
        'txtticket
        '
        resources.ApplyResources(Me.txtticket, "txtticket")
        Me.txtticket.Name = "txtticket"
        '
        'lberror
        '
        resources.ApplyResources(Me.lberror, "lberror")
        Me.lberror.ForeColor = System.Drawing.Color.Crimson
        Me.lberror.Name = "lberror"
        '
        'griddetdocanula
        '
        Me.griddetdocanula.AllowUserToAddRows = False
        Me.griddetdocanula.AllowUserToDeleteRows = False
        Me.griddetdocanula.AllowUserToResizeColumns = False
        Me.griddetdocanula.AllowUserToResizeRows = False
        Me.griddetdocanula.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.griddetdocanula.BackgroundColor = System.Drawing.SystemColors.Control
        Me.griddetdocanula.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        resources.ApplyResources(Me.griddetdocanula, "griddetdocanula")
        Me.griddetdocanula.MultiSelect = False
        Me.griddetdocanula.Name = "griddetdocanula"
        Me.griddetdocanula.ReadOnly = True
        Me.griddetdocanula.RowHeadersVisible = False
        DataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.Khaki
        DataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.Black
        Me.griddetdocanula.RowsDefaultCellStyle = DataGridViewCellStyle1
        Me.griddetdocanula.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        '
        'griddocanula
        '
        Me.griddocanula.AllowUserToAddRows = False
        Me.griddocanula.AllowUserToDeleteRows = False
        Me.griddocanula.AllowUserToResizeColumns = False
        Me.griddocanula.AllowUserToResizeRows = False
        Me.griddocanula.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.griddocanula.BackgroundColor = System.Drawing.SystemColors.Control
        Me.griddocanula.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        resources.ApplyResources(Me.griddocanula, "griddocanula")
        Me.griddocanula.MultiSelect = False
        Me.griddocanula.Name = "griddocanula"
        Me.griddocanula.ReadOnly = True
        Me.griddocanula.RowHeadersVisible = False
        DataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.PaleGoldenrod
        DataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.Black
        Me.griddocanula.RowsDefaultCellStyle = DataGridViewCellStyle2
        Me.griddocanula.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        '
        'btneliticket
        '
        Me.btneliticket.BackColor = System.Drawing.Color.Gainsboro
        resources.ApplyResources(Me.btneliticket, "btneliticket")
        Me.btneliticket.Image = Global.StrindbergNet.My.Resources.Resources.delete
        Me.btneliticket.Name = "btneliticket"
        Me.btneliticket.UseVisualStyleBackColor = False
        '
        'btneliitem
        '
        Me.btneliitem.BackColor = System.Drawing.Color.Linen
        resources.ApplyResources(Me.btneliitem, "btneliitem")
        Me.btneliitem.Image = Global.StrindbergNet.My.Resources.Resources.delete
        Me.btneliitem.Name = "btneliitem"
        Me.btneliitem.UseVisualStyleBackColor = False
        '
        'Button4
        '
        resources.ApplyResources(Me.Button4, "Button4")
        Me.Button4.Name = "Button4"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'btnvolver
        '
        Me.btnvolver.BackColor = System.Drawing.Color.Red
        resources.ApplyResources(Me.btnvolver, "btnvolver")
        Me.btnvolver.ForeColor = System.Drawing.SystemColors.Info
        Me.btnvolver.Name = "btnvolver"
        Me.btnvolver.UseVisualStyleBackColor = False
        '
        'Button1
        '
        resources.ApplyResources(Me.Button1, "Button1")
        Me.Button1.Name = "Button1"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'btn9
        '
        resources.ApplyResources(Me.btn9, "btn9")
        Me.btn9.Name = "btn9"
        Me.btn9.UseVisualStyleBackColor = True
        '
        'btn8
        '
        resources.ApplyResources(Me.btn8, "btn8")
        Me.btn8.Name = "btn8"
        Me.btn8.UseVisualStyleBackColor = True
        '
        'btn7
        '
        resources.ApplyResources(Me.btn7, "btn7")
        Me.btn7.Name = "btn7"
        Me.btn7.UseVisualStyleBackColor = True
        '
        'btn6
        '
        resources.ApplyResources(Me.btn6, "btn6")
        Me.btn6.Name = "btn6"
        Me.btn6.UseVisualStyleBackColor = True
        '
        'btn5
        '
        resources.ApplyResources(Me.btn5, "btn5")
        Me.btn5.Name = "btn5"
        Me.btn5.UseVisualStyleBackColor = True
        '
        'btn4
        '
        resources.ApplyResources(Me.btn4, "btn4")
        Me.btn4.Name = "btn4"
        Me.btn4.UseVisualStyleBackColor = True
        '
        'btn3
        '
        resources.ApplyResources(Me.btn3, "btn3")
        Me.btn3.Name = "btn3"
        Me.btn3.UseVisualStyleBackColor = True
        '
        'btn2
        '
        resources.ApplyResources(Me.btn2, "btn2")
        Me.btn2.Name = "btn2"
        Me.btn2.UseVisualStyleBackColor = True
        '
        'btn1
        '
        resources.ApplyResources(Me.btn1, "btn1")
        Me.btn1.Name = "btn1"
        Me.btn1.UseVisualStyleBackColor = True
        '
        'AnulaDoc
        '
        resources.ApplyResources(Me, "$this")
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "AnulaDoc"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        CType(Me.griddetdocanula, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.griddocanula, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents btnvolver As System.Windows.Forms.Button
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
    Friend WithEvents btneliticket As System.Windows.Forms.Button
    Friend WithEvents btneliitem As System.Windows.Forms.Button
    Friend WithEvents lberror As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents txtticket As System.Windows.Forms.TextBox
    Friend WithEvents griddocanula As System.Windows.Forms.DataGridView
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtfecha As System.Windows.Forms.DateTimePicker
    Friend WithEvents griddetdocanula As System.Windows.Forms.DataGridView
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents checknulos As System.Windows.Forms.CheckBox
    Friend WithEvents btnbuscar As System.Windows.Forms.Button
End Class
