namespace LBISGE
{
    partial class Subsistema
    {
        /// <summary>
        /// Variable del diseñador requerida.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén utilizando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben eliminar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido del método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Subsistema));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtSubsistemaBusqueda = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.Modificar = new System.Windows.Forms.GroupBox();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.btnLimpiar = new System.Windows.Forms.Button();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.btnModificar = new System.Windows.Forms.Button();
            this.txtSubsistema = new System.Windows.Forms.TextBox();
            this.txtID_Subsistema = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnMenu = new System.Windows.Forms.Button();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.dgvSubsistema = new System.Windows.Forms.DataGridView();
            this.IDareaColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NombreAreaColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1.SuspendLayout();
            this.Modificar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSubsistema)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtSubsistemaBusqueda);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.groupBox1.Location = new System.Drawing.Point(42, 44);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(323, 56);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Nombre subsistema";
            // 
            // txtSubsistemaBusqueda
            // 
            this.txtSubsistemaBusqueda.Location = new System.Drawing.Point(94, 18);
            this.txtSubsistemaBusqueda.Name = "txtSubsistemaBusqueda";
            this.txtSubsistemaBusqueda.Size = new System.Drawing.Size(196, 22);
            this.txtSubsistemaBusqueda.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label1.Location = new System.Drawing.Point(6, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(82, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Subsistema :";
            // 
            // Modificar
            // 
            this.Modificar.Controls.Add(this.btnGuardar);
            this.Modificar.Controls.Add(this.btnLimpiar);
            this.Modificar.Controls.Add(this.btnEliminar);
            this.Modificar.Controls.Add(this.btnModificar);
            this.Modificar.Controls.Add(this.txtSubsistema);
            this.Modificar.Controls.Add(this.txtID_Subsistema);
            this.Modificar.Controls.Add(this.label3);
            this.Modificar.Controls.Add(this.label2);
            this.Modificar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Modificar.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.Modificar.Location = new System.Drawing.Point(402, 44);
            this.Modificar.Name = "Modificar";
            this.Modificar.Size = new System.Drawing.Size(419, 250);
            this.Modificar.TabIndex = 2;
            this.Modificar.TabStop = false;
            this.Modificar.Text = "Agregar, Modificar o Eliminar.";
            // 
            // btnGuardar
            // 
            this.btnGuardar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnGuardar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGuardar.Image = ((System.Drawing.Image)(resources.GetObject("btnGuardar.Image")));
            this.btnGuardar.Location = new System.Drawing.Point(60, 155);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(64, 45);
            this.btnGuardar.TabIndex = 15;
            this.btnGuardar.Text = "    ";
            this.btnGuardar.UseVisualStyleBackColor = true;
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.BackColor = System.Drawing.Color.White;
            this.btnLimpiar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLimpiar.Image = ((System.Drawing.Image)(resources.GetObject("btnLimpiar.Image")));
            this.btnLimpiar.Location = new System.Drawing.Point(290, 154);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(64, 46);
            this.btnLimpiar.TabIndex = 14;
            this.btnLimpiar.UseVisualStyleBackColor = false;
            // 
            // btnEliminar
            // 
            this.btnEliminar.BackColor = System.Drawing.Color.White;
            this.btnEliminar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEliminar.Image = ((System.Drawing.Image)(resources.GetObject("btnEliminar.Image")));
            this.btnEliminar.Location = new System.Drawing.Point(205, 154);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(79, 46);
            this.btnEliminar.TabIndex = 13;
            this.btnEliminar.UseVisualStyleBackColor = false;
            // 
            // btnModificar
            // 
            this.btnModificar.BackColor = System.Drawing.Color.White;
            this.btnModificar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnModificar.Image = ((System.Drawing.Image)(resources.GetObject("btnModificar.Image")));
            this.btnModificar.Location = new System.Drawing.Point(129, 154);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(70, 46);
            this.btnModificar.TabIndex = 12;
            this.btnModificar.UseVisualStyleBackColor = false;
            // 
            // txtSubsistema
            // 
            this.txtSubsistema.Location = new System.Drawing.Point(168, 91);
            this.txtSubsistema.Name = "txtSubsistema";
            this.txtSubsistema.Size = new System.Drawing.Size(205, 22);
            this.txtSubsistema.TabIndex = 5;
            // 
            // txtID_Subsistema
            // 
            this.txtID_Subsistema.Location = new System.Drawing.Point(168, 42);
            this.txtID_Subsistema.Name = "txtID_Subsistema";
            this.txtID_Subsistema.Size = new System.Drawing.Size(205, 22);
            this.txtID_Subsistema.TabIndex = 4;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(23, 91);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(130, 17);
            this.label3.TabIndex = 3;
            this.label3.Text = "Nombre subsistema :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(23, 45);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(96, 17);
            this.label2.TabIndex = 2;
            this.label2.Text = "ID Subsistema :";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // btnMenu
            // 
            this.btnMenu.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMenu.Image = ((System.Drawing.Image)(resources.GetObject("btnMenu.Image")));
            this.btnMenu.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnMenu.Location = new System.Drawing.Point(634, 355);
            this.btnMenu.Name = "btnMenu";
            this.btnMenu.Size = new System.Drawing.Size(171, 41);
            this.btnMenu.TabIndex = 3;
            this.btnMenu.Text = "Menu principal";
            this.btnMenu.UseVisualStyleBackColor = true;
            this.btnMenu.Click += new System.EventHandler(this.btnMenu_Click);
            // 
            // dgvSubsistema
            // 
            this.dgvSubsistema.AllowUserToAddRows = false;
            this.dgvSubsistema.AllowUserToDeleteRows = false;
            this.dgvSubsistema.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvSubsistema.BackgroundColor = System.Drawing.Color.White;
            this.dgvSubsistema.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvSubsistema.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvSubsistema.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.IDareaColumn,
            this.NombreAreaColumn});
            this.dgvSubsistema.Location = new System.Drawing.Point(12, 109);
            this.dgvSubsistema.Name = "dgvSubsistema";
            this.dgvSubsistema.ReadOnly = true;
            this.dgvSubsistema.RowHeadersVisible = false;
            this.dgvSubsistema.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvSubsistema.Size = new System.Drawing.Size(373, 331);
            this.dgvSubsistema.TabIndex = 7;
            // 
            // IDareaColumn
            // 
            this.IDareaColumn.HeaderText = "IDarea";
            this.IDareaColumn.Name = "IDareaColumn";
            this.IDareaColumn.ReadOnly = true;
            this.IDareaColumn.Visible = false;
            // 
            // NombreAreaColumn
            // 
            this.NombreAreaColumn.HeaderText = "Nombre del Area";
            this.NombreAreaColumn.Name = "NombreAreaColumn";
            this.NombreAreaColumn.ReadOnly = true;
            // 
            // Subsistema
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(830, 509);
            this.Controls.Add(this.dgvSubsistema);
            this.Controls.Add(this.btnMenu);
            this.Controls.Add(this.Modificar);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Subsistema";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Subsistema";
            this.Load += new System.EventHandler(this.Subsistema_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.Modificar.ResumeLayout(false);
            this.Modificar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSubsistema)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtSubsistemaBusqueda;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox Modificar;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtSubsistema;
        private System.Windows.Forms.TextBox txtID_Subsistema;
        private System.Windows.Forms.Button btnMenu;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Button btnLimpiar;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Button btnModificar;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.DataGridView dgvSubsistema;
        private System.Windows.Forms.DataGridViewTextBoxColumn IDareaColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn NombreAreaColumn;
    }
}

