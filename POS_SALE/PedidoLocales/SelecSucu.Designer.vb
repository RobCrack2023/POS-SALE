<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class SelecSucu
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
        Me.Label1 = New System.Windows.Forms.Label()
        Me.lstSucursal = New System.Windows.Forms.ListBox()
        Me.btnsalir = New System.Windows.Forms.Button()
        Me.btnimpsucuped = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.BackColor = System.Drawing.Color.Khaki
        Me.GroupBox1.Controls.Add(Me.btnimpsucuped)
        Me.GroupBox1.Controls.Add(Me.btnsalir)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.lstSucursal)
        Me.GroupBox1.Location = New System.Drawing.Point(18, 18)
        Me.GroupBox1.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Padding = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.GroupBox1.Size = New System.Drawing.Size(446, 432)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(16, 24)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(158, 20)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Seleccionar Sucursal"
        '
        'lstSucursal
        '
        Me.lstSucursal.FormattingEnabled = True
        Me.lstSucursal.ItemHeight = 20
        Me.lstSucursal.Location = New System.Drawing.Point(20, 49)
        Me.lstSucursal.Name = "lstSucursal"
        Me.lstSucursal.SelectionMode = System.Windows.Forms.SelectionMode.MultiSimple
        Me.lstSucursal.Size = New System.Drawing.Size(247, 364)
        Me.lstSucursal.TabIndex = 0
        '
        'btnsalir
        '
        Me.btnsalir.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnsalir.Image = Global.StrindbergNet.My.Resources.Resources.cancel
        Me.btnsalir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnsalir.Location = New System.Drawing.Point(295, 376)
        Me.btnsalir.Name = "btnsalir"
        Me.btnsalir.Size = New System.Drawing.Size(129, 37)
        Me.btnsalir.TabIndex = 42
        Me.btnsalir.Text = "Cerrar"
        Me.btnsalir.UseVisualStyleBackColor = True
        '
        'btnimpsucuped
        '
        Me.btnimpsucuped.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnimpsucuped.Image = Global.StrindbergNet.My.Resources.Resources.printer1
        Me.btnimpsucuped.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btnimpsucuped.Location = New System.Drawing.Point(295, 49)
        Me.btnimpsucuped.Name = "btnimpsucuped"
        Me.btnimpsucuped.Size = New System.Drawing.Size(129, 37)
        Me.btnimpsucuped.TabIndex = 43
        Me.btnimpsucuped.Text = "Imprimir"
        Me.btnimpsucuped.UseVisualStyleBackColor = True
        '
        'SelecSucu
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(472, 458)
        Me.ControlBox = False
        Me.Controls.Add(Me.GroupBox1)
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Margin = New System.Windows.Forms.Padding(4, 5, 4, 5)
        Me.Name = "SelecSucu"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "IMprime Pedidos Sucursales"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents lstSucursal As System.Windows.Forms.ListBox
    Friend WithEvents btnsalir As System.Windows.Forms.Button
    Friend WithEvents btnimpsucuped As System.Windows.Forms.Button
End Class
