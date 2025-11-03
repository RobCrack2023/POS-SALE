<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class compo
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
        Me.cmbcompo = New System.Windows.Forms.ComboBox()
        Me.btngrabar = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'cmbcompo
        '
        Me.cmbcompo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbcompo.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbcompo.FormattingEnabled = True
        Me.cmbcompo.Location = New System.Drawing.Point(21, 12)
        Me.cmbcompo.Name = "cmbcompo"
        Me.cmbcompo.Size = New System.Drawing.Size(247, 28)
        Me.cmbcompo.TabIndex = 0
        '
        'btngrabar
        '
        Me.btngrabar.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btngrabar.Image = Global.StrindbergNet.My.Resources.Resources.save_as
        Me.btngrabar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.btngrabar.Location = New System.Drawing.Point(52, 66)
        Me.btngrabar.Name = "btngrabar"
        Me.btngrabar.Size = New System.Drawing.Size(171, 36)
        Me.btngrabar.TabIndex = 1
        Me.btngrabar.Text = "Grabar"
        Me.btngrabar.UseVisualStyleBackColor = True
        '
        'compo
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(281, 113)
        Me.ControlBox = False
        Me.Controls.Add(Me.btngrabar)
        Me.Controls.Add(Me.cmbcompo)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D
        Me.Name = "compo"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent
        Me.Text = "Composición"
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents cmbcompo As System.Windows.Forms.ComboBox
    Friend WithEvents btngrabar As System.Windows.Forms.Button
End Class
