<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Configuracion
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
        Me.PrintDialog1 = New System.Windows.Forms.PrintDialog()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.cmbsucursal = New System.Windows.Forms.ComboBox()
        Me.btnconfsucursal = New System.Windows.Forms.Button()
        Me.btnconfcaja = New System.Windows.Forms.Button()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.lbimprpt = New System.Windows.Forms.Label()
        Me.lbimpticket = New System.Windows.Forms.Label()
        Me.btnimprpt = New System.Windows.Forms.Button()
        Me.cmbimpresora2 = New System.Windows.Forms.ComboBox()
        Me.cmbimpresora1 = New System.Windows.Forms.ComboBox()
        Me.btnimpticket = New System.Windows.Forms.Button()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.btnreiniciacont = New System.Windows.Forms.Button()
        Me.btncerrar = New System.Windows.Forms.Button()
        Me.txtcaja = New System.Windows.Forms.TextBox()
        Me.Panel2.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'PrintDialog1
        '
        Me.PrintDialog1.UseEXDialog = True
        '
        'Panel2
        '
        Me.Panel2.BackColor = System.Drawing.Color.Tan
        Me.Panel2.Controls.Add(Me.GroupBox3)
        Me.Panel2.Controls.Add(Me.GroupBox2)
        Me.Panel2.Controls.Add(Me.GroupBox1)
        Me.Panel2.Location = New System.Drawing.Point(3, 12)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(905, 463)
        Me.Panel2.TabIndex = 1
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.txtcaja)
        Me.GroupBox3.Controls.Add(Me.cmbsucursal)
        Me.GroupBox3.Controls.Add(Me.btnconfsucursal)
        Me.GroupBox3.Controls.Add(Me.btnconfcaja)
        Me.GroupBox3.Location = New System.Drawing.Point(8, 253)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(776, 201)
        Me.GroupBox3.TabIndex = 3
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Configurar Local y Caja"
        '
        'cmbsucursal
        '
        Me.cmbsucursal.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbsucursal.FormattingEnabled = True
        Me.cmbsucursal.Location = New System.Drawing.Point(27, 39)
        Me.cmbsucursal.Name = "cmbsucursal"
        Me.cmbsucursal.Size = New System.Drawing.Size(216, 28)
        Me.cmbsucursal.TabIndex = 9
        '
        'btnconfsucursal
        '
        Me.btnconfsucursal.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnconfsucursal.Image = Global.StrindbergNet.My.Resources.Resources.printer
        Me.btnconfsucursal.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnconfsucursal.Location = New System.Drawing.Point(315, 35)
        Me.btnconfsucursal.Name = "btnconfsucursal"
        Me.btnconfsucursal.Size = New System.Drawing.Size(158, 36)
        Me.btnconfsucursal.TabIndex = 8
        Me.btnconfsucursal.Text = "Configurar Sucursal"
        Me.btnconfsucursal.UseVisualStyleBackColor = True
        '
        'btnconfcaja
        '
        Me.btnconfcaja.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnconfcaja.Image = Global.StrindbergNet.My.Resources.Resources.printer
        Me.btnconfcaja.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnconfcaja.Location = New System.Drawing.Point(315, 107)
        Me.btnconfcaja.Name = "btnconfcaja"
        Me.btnconfcaja.Size = New System.Drawing.Size(158, 36)
        Me.btnconfcaja.TabIndex = 6
        Me.btnconfcaja.Text = "Configurar Caja"
        Me.btnconfcaja.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.lbimprpt)
        Me.GroupBox2.Controls.Add(Me.lbimpticket)
        Me.GroupBox2.Controls.Add(Me.btnimprpt)
        Me.GroupBox2.Controls.Add(Me.cmbimpresora2)
        Me.GroupBox2.Controls.Add(Me.cmbimpresora1)
        Me.GroupBox2.Controls.Add(Me.btnimpticket)
        Me.GroupBox2.Location = New System.Drawing.Point(9, 103)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(776, 144)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Configurar Impresoras"
        '
        'lbimprpt
        '
        Me.lbimprpt.AutoSize = True
        Me.lbimprpt.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbimprpt.Location = New System.Drawing.Point(494, 95)
        Me.lbimprpt.Name = "lbimprpt"
        Me.lbimprpt.Size = New System.Drawing.Size(57, 20)
        Me.lbimprpt.TabIndex = 5
        Me.lbimprpt.Text = "Label2"
        '
        'lbimpticket
        '
        Me.lbimpticket.AutoSize = True
        Me.lbimpticket.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbimpticket.Location = New System.Drawing.Point(494, 49)
        Me.lbimpticket.Name = "lbimpticket"
        Me.lbimpticket.Size = New System.Drawing.Size(57, 20)
        Me.lbimpticket.TabIndex = 4
        Me.lbimpticket.Text = "Label1"
        '
        'btnimprpt
        '
        Me.btnimprpt.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnimprpt.Image = Global.StrindbergNet.My.Resources.Resources.printer
        Me.btnimprpt.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnimprpt.Location = New System.Drawing.Point(337, 95)
        Me.btnimprpt.Name = "btnimprpt"
        Me.btnimprpt.Size = New System.Drawing.Size(135, 32)
        Me.btnimprpt.TabIndex = 3
        Me.btnimprpt.Text = "ImpRpt"
        Me.btnimprpt.UseVisualStyleBackColor = True
        '
        'cmbimpresora2
        '
        Me.cmbimpresora2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbimpresora2.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbimpresora2.FormattingEnabled = True
        Me.cmbimpresora2.Location = New System.Drawing.Point(26, 95)
        Me.cmbimpresora2.Name = "cmbimpresora2"
        Me.cmbimpresora2.Size = New System.Drawing.Size(294, 28)
        Me.cmbimpresora2.TabIndex = 2
        '
        'cmbimpresora1
        '
        Me.cmbimpresora1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbimpresora1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbimpresora1.FormattingEnabled = True
        Me.cmbimpresora1.Location = New System.Drawing.Point(26, 45)
        Me.cmbimpresora1.Name = "cmbimpresora1"
        Me.cmbimpresora1.Size = New System.Drawing.Size(294, 28)
        Me.cmbimpresora1.TabIndex = 1
        '
        'btnimpticket
        '
        Me.btnimpticket.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnimpticket.Image = Global.StrindbergNet.My.Resources.Resources.printer
        Me.btnimpticket.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnimpticket.Location = New System.Drawing.Point(337, 45)
        Me.btnimpticket.Name = "btnimpticket"
        Me.btnimpticket.Size = New System.Drawing.Size(135, 32)
        Me.btnimpticket.TabIndex = 0
        Me.btnimpticket.Text = "ImpTicket"
        Me.btnimpticket.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.btnreiniciacont)
        Me.GroupBox1.Controls.Add(Me.btncerrar)
        Me.GroupBox1.Location = New System.Drawing.Point(9, 3)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(776, 94)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Configurar BD  Local"
        '
        'btnreiniciacont
        '
        Me.btnreiniciacont.Enabled = False
        Me.btnreiniciacont.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnreiniciacont.Image = Global.StrindbergNet.My.Resources.Resources.reset
        Me.btnreiniciacont.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btnreiniciacont.Location = New System.Drawing.Point(26, 31)
        Me.btnreiniciacont.Name = "btnreiniciacont"
        Me.btnreiniciacont.Size = New System.Drawing.Size(135, 32)
        Me.btnreiniciacont.TabIndex = 2
        Me.btnreiniciacont.Text = "Reinstalar"
        Me.btnreiniciacont.UseVisualStyleBackColor = True
        '
        'btncerrar
        '
        Me.btncerrar.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btncerrar.Image = Global.StrindbergNet.My.Resources.Resources.cancel1
        Me.btncerrar.ImageAlign = System.Drawing.ContentAlignment.TopLeft
        Me.btncerrar.Location = New System.Drawing.Point(619, 31)
        Me.btncerrar.Name = "btncerrar"
        Me.btncerrar.Size = New System.Drawing.Size(135, 32)
        Me.btncerrar.TabIndex = 1
        Me.btncerrar.Text = "Cerrar"
        Me.btncerrar.UseVisualStyleBackColor = True
        '
        'txtcaja
        '
        Me.txtcaja.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtcaja.Location = New System.Drawing.Point(27, 111)
        Me.txtcaja.Name = "txtcaja"
        Me.txtcaja.Size = New System.Drawing.Size(216, 26)
        Me.txtcaja.TabIndex = 10
        '
        'Configuracion
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(799, 478)
        Me.ControlBox = False
        Me.Controls.Add(Me.Panel2)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Name = "Configuracion"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Configuración"
        Me.Panel2.ResumeLayout(False)
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents PrintDialog1 As System.Windows.Forms.PrintDialog
    Friend WithEvents Panel2 As System.Windows.Forms.Panel
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents btnimpticket As System.Windows.Forms.Button
    Friend WithEvents cmbimpresora2 As System.Windows.Forms.ComboBox
    Friend WithEvents cmbimpresora1 As System.Windows.Forms.ComboBox
    Friend WithEvents btnimprpt As System.Windows.Forms.Button
    Friend WithEvents lbimprpt As System.Windows.Forms.Label
    Friend WithEvents lbimpticket As System.Windows.Forms.Label
    Friend WithEvents btncerrar As System.Windows.Forms.Button
    Friend WithEvents btnreiniciacont As System.Windows.Forms.Button
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents btnconfcaja As System.Windows.Forms.Button
    Friend WithEvents cmbsucursal As System.Windows.Forms.ComboBox
    Friend WithEvents btnconfsucursal As System.Windows.Forms.Button
    Friend WithEvents txtcaja As System.Windows.Forms.TextBox
End Class
