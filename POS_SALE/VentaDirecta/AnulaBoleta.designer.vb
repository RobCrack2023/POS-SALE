<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class AnulaBoleta
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(AnulaBoleta))
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.btnvolver = New System.Windows.Forms.Button()
        Me.btnSalvar = New System.Windows.Forms.Button()
        Me.btneliminar = New System.Windows.Forms.Button()
        Me.btnGrabar = New System.Windows.Forms.Button()
        Me.btnK = New System.Windows.Forms.Button()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.txtdv = New System.Windows.Forms.TextBox()
        Me.txtrut = New System.Windows.Forms.TextBox()
        Me.gridbolnulas = New System.Windows.Forms.DataGridView()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.cmbmotivos = New System.Windows.Forms.ComboBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtmonto = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtfecha = New System.Windows.Forms.DateTimePicker()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.txtticket = New System.Windows.Forms.TextBox()
        Me.lberror = New System.Windows.Forms.Label()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.btn_0 = New System.Windows.Forms.Button()
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
        CType(Me.gridbolnulas, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.DarkOrange
        Me.GroupBox1.Controls.Add(Me.btnvolver)
        Me.GroupBox1.Controls.Add(Me.btnSalvar)
        Me.GroupBox1.Controls.Add(Me.btneliminar)
        Me.GroupBox1.Controls.Add(Me.btnGrabar)
        Me.GroupBox1.Controls.Add(Me.btnK)
        Me.GroupBox1.Controls.Add(Me.GroupBox2)
        Me.GroupBox1.Controls.Add(Me.Button4)
        Me.GroupBox1.Controls.Add(Me.btn_0)
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
        'btnvolver
        '
        resources.ApplyResources(Me.btnvolver, "btnvolver")
        Me.btnvolver.Image = Global.StrindbergNet.My.Resources.Resources.LetsIconsRefundBack
        Me.btnvolver.Name = "btnvolver"
        Me.btnvolver.UseVisualStyleBackColor = True
        '
        'btnSalvar
        '
        resources.ApplyResources(Me.btnSalvar, "btnSalvar")
        Me.btnSalvar.Image = Global.StrindbergNet.My.Resources.Resources.FluentSaveArrowRight24Regular
        Me.btnSalvar.Name = "btnSalvar"
        Me.btnSalvar.UseVisualStyleBackColor = True
        '
        'btneliminar
        '
        resources.ApplyResources(Me.btneliminar, "btneliminar")
        Me.btneliminar.Image = Global.StrindbergNet.My.Resources.Resources.MingcuteDelete2Fill
        Me.btneliminar.Name = "btneliminar"
        Me.btneliminar.UseVisualStyleBackColor = True
        '
        'btnGrabar
        '
        resources.ApplyResources(Me.btnGrabar, "btnGrabar")
        Me.btnGrabar.Image = Global.StrindbergNet.My.Resources.Resources.MaterialSymbolsSaveAsSharp
        Me.btnGrabar.Name = "btnGrabar"
        Me.btnGrabar.UseVisualStyleBackColor = True
        '
        'btnK
        '
        resources.ApplyResources(Me.btnK, "btnK")
        Me.btnK.Name = "btnK"
        Me.btnK.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Label7)
        Me.GroupBox2.Controls.Add(Me.Label6)
        Me.GroupBox2.Controls.Add(Me.txtdv)
        Me.GroupBox2.Controls.Add(Me.txtrut)
        Me.GroupBox2.Controls.Add(Me.gridbolnulas)
        Me.GroupBox2.Controls.Add(Me.Label5)
        Me.GroupBox2.Controls.Add(Me.Label3)
        Me.GroupBox2.Controls.Add(Me.cmbmotivos)
        Me.GroupBox2.Controls.Add(Me.Label2)
        Me.GroupBox2.Controls.Add(Me.txtmonto)
        Me.GroupBox2.Controls.Add(Me.Label1)
        Me.GroupBox2.Controls.Add(Me.txtfecha)
        Me.GroupBox2.Controls.Add(Me.Label4)
        Me.GroupBox2.Controls.Add(Me.txtticket)
        Me.GroupBox2.Controls.Add(Me.lberror)
        resources.ApplyResources(Me.GroupBox2, "GroupBox2")
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.TabStop = False
        '
        'Label7
        '
        resources.ApplyResources(Me.Label7, "Label7")
        Me.Label7.Name = "Label7"
        '
        'Label6
        '
        resources.ApplyResources(Me.Label6, "Label6")
        Me.Label6.Name = "Label6"
        '
        'txtdv
        '
        resources.ApplyResources(Me.txtdv, "txtdv")
        Me.txtdv.Name = "txtdv"
        '
        'txtrut
        '
        resources.ApplyResources(Me.txtrut, "txtrut")
        Me.txtrut.Name = "txtrut"
        '
        'gridbolnulas
        '
        Me.gridbolnulas.AllowUserToAddRows = False
        Me.gridbolnulas.AllowUserToDeleteRows = False
        Me.gridbolnulas.AllowUserToResizeColumns = False
        Me.gridbolnulas.AllowUserToResizeRows = False
        Me.gridbolnulas.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.gridbolnulas.BackgroundColor = System.Drawing.SystemColors.Control
        Me.gridbolnulas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        resources.ApplyResources(Me.gridbolnulas, "gridbolnulas")
        Me.gridbolnulas.MultiSelect = False
        Me.gridbolnulas.Name = "gridbolnulas"
        Me.gridbolnulas.ReadOnly = True
        Me.gridbolnulas.RowHeadersVisible = False
        DataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.PaleGoldenrod
        DataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.Black
        Me.gridbolnulas.RowsDefaultCellStyle = DataGridViewCellStyle2
        Me.gridbolnulas.RowTemplate.DefaultCellStyle.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.gridbolnulas.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        '
        'Label5
        '
        resources.ApplyResources(Me.Label5, "Label5")
        Me.Label5.Name = "Label5"
        '
        'Label3
        '
        resources.ApplyResources(Me.Label3, "Label3")
        Me.Label3.Name = "Label3"
        '
        'cmbmotivos
        '
        Me.cmbmotivos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        resources.ApplyResources(Me.cmbmotivos, "cmbmotivos")
        Me.cmbmotivos.FormattingEnabled = True
        Me.cmbmotivos.Name = "cmbmotivos"
        '
        'Label2
        '
        resources.ApplyResources(Me.Label2, "Label2")
        Me.Label2.Name = "Label2"
        '
        'txtmonto
        '
        resources.ApplyResources(Me.txtmonto, "txtmonto")
        Me.txtmonto.Name = "txtmonto"
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
        Me.txtfecha.MaxDate = New Date(2026, 12, 31, 0, 0, 0, 0)
        Me.txtfecha.MinDate = New Date(2024, 1, 1, 0, 0, 0, 0)
        Me.txtfecha.Name = "txtfecha"
        Me.txtfecha.Value = New Date(2024, 1, 1, 0, 0, 0, 0)
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
        'Button4
        '
        resources.ApplyResources(Me.Button4, "Button4")
        Me.Button4.Image = Global.StrindbergNet.My.Resources.Resources.IconoirArrowLeftCircleSolid
        Me.Button4.Name = "Button4"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'btn_0
        '
        resources.ApplyResources(Me.btn_0, "btn_0")
        Me.btn_0.Name = "btn_0"
        Me.btn_0.UseVisualStyleBackColor = True
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
        'AnulaBoleta
        '
        resources.ApplyResources(Me, "$this")
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "AnulaBoleta"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        CType(Me.gridbolnulas, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents btn_0 As System.Windows.Forms.Button
    Friend WithEvents btn9 As System.Windows.Forms.Button
    Friend WithEvents btn8 As System.Windows.Forms.Button
    Friend WithEvents btn7 As System.Windows.Forms.Button
    Friend WithEvents btn6 As System.Windows.Forms.Button
    Friend WithEvents btn5 As System.Windows.Forms.Button
    Friend WithEvents btn4 As System.Windows.Forms.Button
    Friend WithEvents btn3 As System.Windows.Forms.Button
    Friend WithEvents btn2 As System.Windows.Forms.Button
    Friend WithEvents btn1 As System.Windows.Forms.Button
    Friend WithEvents lberror As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents txtticket As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtfecha As System.Windows.Forms.DateTimePicker
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents Label2 As Label
    Friend WithEvents txtmonto As TextBox
    Friend WithEvents Label3 As Label
    Friend WithEvents cmbmotivos As ComboBox
    Friend WithEvents Label5 As Label
    Friend WithEvents gridbolnulas As DataGridView
    Friend WithEvents btnK As Button
    Friend WithEvents txtrut As TextBox
    Friend WithEvents Label6 As Label
    Friend WithEvents txtdv As TextBox
    Friend WithEvents Label7 As Label
    Friend WithEvents btnGrabar As Button
    Friend WithEvents btneliminar As Button
    Friend WithEvents btnSalvar As Button
    Friend WithEvents btnvolver As Button
End Class
