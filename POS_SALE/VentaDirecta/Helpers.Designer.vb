<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Helpers
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
        Me.groupteclado = New System.Windows.Forms.GroupBox()
        Me.grillaProdPLU = New System.Windows.Forms.DataGridView()
        Me.btnsalir = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        CType(Me.grillaProdPLU, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.Gold
        Me.GroupBox1.Controls.Add(Me.groupteclado)
        Me.GroupBox1.Controls.Add(Me.grillaProdPLU)
        Me.GroupBox1.Controls.Add(Me.btnsalir)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(637, 598)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Ayuda Plu"
        '
        'groupteclado
        '
        Me.groupteclado.Location = New System.Drawing.Point(6, 25)
        Me.groupteclado.Name = "groupteclado"
        Me.groupteclado.Size = New System.Drawing.Size(613, 163)
        Me.groupteclado.TabIndex = 50
        Me.groupteclado.TabStop = False
        '
        'grillaProdPLU
        '
        Me.grillaProdPLU.AllowUserToAddRows = False
        Me.grillaProdPLU.AllowUserToDeleteRows = False
        Me.grillaProdPLU.AllowUserToResizeColumns = False
        Me.grillaProdPLU.AllowUserToResizeRows = False
        Me.grillaProdPLU.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells
        Me.grillaProdPLU.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells
        Me.grillaProdPLU.BackgroundColor = System.Drawing.Color.White
        Me.grillaProdPLU.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grillaProdPLU.Location = New System.Drawing.Point(10, 194)
        Me.grillaProdPLU.Name = "grillaProdPLU"
        Me.grillaProdPLU.ReadOnly = True
        Me.grillaProdPLU.RowHeadersVisible = False
        Me.grillaProdPLU.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.grillaProdPLU.Size = New System.Drawing.Size(542, 393)
        Me.grillaProdPLU.TabIndex = 49
        '
        'btnsalir
        '
        Me.btnsalir.BackColor = System.Drawing.Color.Khaki
        Me.btnsalir.FlatAppearance.BorderColor = System.Drawing.Color.White
        Me.btnsalir.Image = Global.StrindbergNet.My.Resources.Resources.cross1
        Me.btnsalir.Location = New System.Drawing.Point(558, 521)
        Me.btnsalir.Name = "btnsalir"
        Me.btnsalir.Size = New System.Drawing.Size(73, 66)
        Me.btnsalir.TabIndex = 4
        Me.btnsalir.UseVisualStyleBackColor = False
        '
        'Helpers
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(661, 611)
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.MaximizeBox = False
        Me.Name = "Helpers"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.GroupBox1.ResumeLayout(False)
        CType(Me.grillaProdPLU, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents btnsalir As System.Windows.Forms.Button
    Friend WithEvents grillaProdPLU As System.Windows.Forms.DataGridView
    Friend WithEvents groupteclado As System.Windows.Forms.GroupBox
End Class
