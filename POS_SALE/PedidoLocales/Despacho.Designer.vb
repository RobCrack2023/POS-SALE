<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Despacho
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
        Me.txthrssalida = New System.Windows.Forms.MaskedTextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.btnsalir = New System.Windows.Forms.Button()
        Me.btngrabar = New System.Windows.Forms.Button()
        Me.txtpatente = New System.Windows.Forms.MaskedTextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cmbconductor = New System.Windows.Forms.ComboBox()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.cmbconductor)
        Me.GroupBox1.Controls.Add(Me.txthrssalida)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.btnsalir)
        Me.GroupBox1.Controls.Add(Me.btngrabar)
        Me.GroupBox1.Controls.Add(Me.txtpatente)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(375, 311)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'txthrssalida
        '
        Me.txthrssalida.BackColor = System.Drawing.Color.NavajoWhite
        Me.txthrssalida.Location = New System.Drawing.Point(28, 176)
        Me.txthrssalida.Mask = "00:00"
        Me.txthrssalida.Name = "txthrssalida"
        Me.txthrssalida.Size = New System.Drawing.Size(103, 29)
        Me.txthrssalida.TabIndex = 2
        Me.txthrssalida.ValidatingType = GetType(Date)
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(24, 150)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(107, 24)
        Me.Label3.TabIndex = 7
        Me.Label3.Text = "Hora Salida"
        '
        'btnsalir
        '
        Me.btnsalir.Image = Global.StrindbergNet.My.Resources.Resources.cross
        Me.btnsalir.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnsalir.Location = New System.Drawing.Point(230, 248)
        Me.btnsalir.Name = "btnsalir"
        Me.btnsalir.Size = New System.Drawing.Size(133, 38)
        Me.btnsalir.TabIndex = 6
        Me.btnsalir.Text = "Cerrar"
        Me.btnsalir.UseVisualStyleBackColor = True
        '
        'btngrabar
        '
        Me.btngrabar.Image = Global.StrindbergNet.My.Resources.Resources.disk
        Me.btngrabar.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btngrabar.Location = New System.Drawing.Point(28, 248)
        Me.btngrabar.Name = "btngrabar"
        Me.btngrabar.Size = New System.Drawing.Size(133, 38)
        Me.btngrabar.TabIndex = 5
        Me.btngrabar.Text = "Grabar"
        Me.btngrabar.UseVisualStyleBackColor = True
        '
        'txtpatente
        '
        Me.txtpatente.BackColor = System.Drawing.Color.NavajoWhite
        Me.txtpatente.Location = New System.Drawing.Point(28, 59)
        Me.txtpatente.Mask = "??-&&-00"
        Me.txtpatente.Name = "txtpatente"
        Me.txtpatente.Size = New System.Drawing.Size(232, 29)
        Me.txtpatente.TabIndex = 0
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(24, 91)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(98, 24)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "Conductor"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(24, 33)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(73, 24)
        Me.Label1.TabIndex = 2
        Me.Label1.Text = "Patente"
        '
        'cmbconductor
        '
        Me.cmbconductor.BackColor = System.Drawing.Color.NavajoWhite
        Me.cmbconductor.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbconductor.FormattingEnabled = True
        Me.cmbconductor.Location = New System.Drawing.Point(28, 118)
        Me.cmbconductor.Name = "cmbconductor"
        Me.cmbconductor.Size = New System.Drawing.Size(283, 32)
        Me.cmbconductor.TabIndex = 8
        '
        'Despacho
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(11.0!, 24.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(406, 338)
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Margin = New System.Windows.Forms.Padding(6)
        Me.Name = "Despacho"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Despacho"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents txtpatente As System.Windows.Forms.MaskedTextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents btnsalir As System.Windows.Forms.Button
    Friend WithEvents btngrabar As System.Windows.Forms.Button
    Friend WithEvents txthrssalida As System.Windows.Forms.MaskedTextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents cmbconductor As System.Windows.Forms.ComboBox
End Class
