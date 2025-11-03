<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class AtribCompo
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
        Me.txtnomseccion = New System.Windows.Forms.TextBox()
        Me.txtdias = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.btngrabar = New System.Windows.Forms.Button()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.txthrsfija = New System.Windows.Forms.MaskedTextBox()
        Me.txthrsdin = New System.Windows.Forms.MaskedTextBox()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.NavajoWhite
        Me.GroupBox1.Controls.Add(Me.txthrsdin)
        Me.GroupBox1.Controls.Add(Me.txthrsfija)
        Me.GroupBox1.Controls.Add(Me.btncerrar)
        Me.GroupBox1.Controls.Add(Me.btngrabar)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.txtdias)
        Me.GroupBox1.Controls.Add(Me.txtnomseccion)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(442, 291)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'txtnomseccion
        '
        Me.txtnomseccion.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtnomseccion.Location = New System.Drawing.Point(48, 49)
        Me.txtnomseccion.Name = "txtnomseccion"
        Me.txtnomseccion.Size = New System.Drawing.Size(322, 26)
        Me.txtnomseccion.TabIndex = 0
        '
        'txtdias
        '
        Me.txtdias.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtdias.Location = New System.Drawing.Point(48, 101)
        Me.txtdias.Name = "txtdias"
        Me.txtdias.Size = New System.Drawing.Size(322, 26)
        Me.txtdias.TabIndex = 1
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(44, 26)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(66, 20)
        Me.Label1.TabIndex = 2
        Me.Label1.Text = "Sección"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(44, 78)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(41, 20)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "Dias"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(44, 130)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(73, 20)
        Me.Label3.TabIndex = 5
        Me.Label3.Text = "Hora Fija"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(44, 182)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(114, 20)
        Me.Label4.TabIndex = 7
        Me.Label4.Text = "Hora Dinamica"
        '
        'btngrabar
        '
        Me.btngrabar.Location = New System.Drawing.Point(43, 248)
        Me.btngrabar.Name = "btngrabar"
        Me.btngrabar.Size = New System.Drawing.Size(137, 36)
        Me.btngrabar.TabIndex = 8
        Me.btngrabar.Text = "Grabar"
        Me.btngrabar.UseVisualStyleBackColor = True
        '
        'btncerrar
        '
        Me.btncerrar.Location = New System.Drawing.Point(228, 248)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(137, 36)
        Me.btncerrar.TabIndex = 9
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'txthrsfija
        '
        Me.txthrsfija.Location = New System.Drawing.Point(48, 153)
        Me.txthrsfija.Mask = "00:00"
        Me.txthrsfija.Name = "txthrsfija"
        Me.txthrsfija.Size = New System.Drawing.Size(110, 26)
        Me.txthrsfija.TabIndex = 10
        Me.txthrsfija.ValidatingType = GetType(Date)
        '
        'txthrsdin
        '
        Me.txthrsdin.Location = New System.Drawing.Point(48, 205)
        Me.txthrsdin.Mask = "00:00"
        Me.txthrsdin.Name = "txthrsdin"
        Me.txthrsdin.Size = New System.Drawing.Size(110, 26)
        Me.txthrsdin.TabIndex = 11
        Me.txthrsdin.ValidatingType = GetType(Date)
        '
        'AtribCompo
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(459, 308)
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.Name = "AtribCompo"
        Me.Text = "AtribCompo"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents txtnomseccion As System.Windows.Forms.TextBox
    Friend WithEvents btncerrar As System.Windows.Forms.Button
    Friend WithEvents btngrabar As System.Windows.Forms.Button
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtdias As System.Windows.Forms.TextBox
    Friend WithEvents txthrsfija As System.Windows.Forms.MaskedTextBox
    Friend WithEvents txthrsdin As System.Windows.Forms.MaskedTextBox
End Class
