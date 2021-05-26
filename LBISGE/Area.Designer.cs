namespace LBISGE
{
    partial class Area
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Area));
            this.btnMenu = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.dgvArea = new System.Windows.Forms.DataGridView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.btnLimpiar = new System.Windows.Forms.Button();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.btnModificar = new System.Windows.Forms.Button();
            this.edificioCb = new System.Windows.Forms.ComboBox();
            this.nombreAreaTxt = new System.Windows.Forms.TextBox();
            this.IDareaTxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.IDareaErrorLbl = new System.Windows.Forms.Label();
            this.nombreAreaErrorLbl = new System.Windows.Forms.Label();
            this.edificioErrorLbl = new System.Windows.Forms.Label();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.IDareaColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NombreAreaColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvArea)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnMenu
            // 
            this.btnMenu.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMenu.Image = ((System.Drawing.Image)(resources.GetObject("btnMenu.Image")));
            this.btnMenu.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnMenu.Location = new System.Drawing.Point(637, 432);
            this.btnMenu.Name = "btnMenu";
            this.btnMenu.Size = new System.Drawing.Size(171, 51);
            this.btnMenu.TabIndex = 4;
            this.btnMenu.Text = "Menu principal";
            this.btnMenu.UseVisualStyleBackColor = true;
            this.btnMenu.Click += new System.EventHandler(this.btnMenu_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.textBox1);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(25, 26);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(423, 57);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Tipo De Area";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(65, 23);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(272, 22);
            this.textBox1.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(16, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(43, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Area :";
            // 
            // dgvArea
            // 
            this.dgvArea.AllowUserToAddRows = false;
            this.dgvArea.AllowUserToDeleteRows = false;
            this.dgvArea.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvArea.BackgroundColor = System.Drawing.Color.White;
            this.dgvArea.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvArea.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvArea.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.IDareaColumn,
            this.NombreAreaColumn});
            this.dgvArea.Location = new System.Drawing.Point(25, 115);
            this.dgvArea.Name = "dgvArea";
            this.dgvArea.ReadOnly = true;
            this.dgvArea.RowHeadersVisible = false;
            this.dgvArea.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvArea.Size = new System.Drawing.Size(423, 331);
            this.dgvArea.TabIndex = 6;
            this.dgvArea.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvArea_CellClick);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.btnGuardar);
            this.groupBox2.Controls.Add(this.btnLimpiar);
            this.groupBox2.Controls.Add(this.btnEliminar);
            this.groupBox2.Controls.Add(this.btnModificar);
            this.groupBox2.Controls.Add(this.edificioCb);
            this.groupBox2.Controls.Add(this.nombreAreaTxt);
            this.groupBox2.Controls.Add(this.IDareaTxt);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.IDareaErrorLbl);
            this.groupBox2.Controls.Add(this.nombreAreaErrorLbl);
            this.groupBox2.Controls.Add(this.edificioErrorLbl);
            this.groupBox2.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(476, 26);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(332, 391);
            this.groupBox2.TabIndex = 7;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Agregar, Modificar o Eliminar";
            this.groupBox2.Enter += new System.EventHandler(this.groupBox2_Enter);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(41, 239);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(45, 17);
            this.label5.TabIndex = 21;
            this.label5.Text = "label5";
            this.label5.Click += new System.EventHandler(this.label5_Click);
            // 
            // btnGuardar
            // 
            this.btnGuardar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnGuardar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGuardar.Image = ((System.Drawing.Image)(resources.GetObject("btnGuardar.Image")));
            this.btnGuardar.Location = new System.Drawing.Point(21, 286);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(64, 45);
            this.btnGuardar.TabIndex = 11;
            this.btnGuardar.Text = "    ";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.BackColor = System.Drawing.Color.White;
            this.btnLimpiar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLimpiar.Image = ((System.Drawing.Image)(resources.GetObject("btnLimpiar.Image")));
            this.btnLimpiar.Location = new System.Drawing.Point(251, 285);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(64, 46);
            this.btnLimpiar.TabIndex = 8;
            this.btnLimpiar.UseVisualStyleBackColor = false;
            // 
            // btnEliminar
            // 
            this.btnEliminar.BackColor = System.Drawing.Color.White;
            this.btnEliminar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEliminar.Image = ((System.Drawing.Image)(resources.GetObject("btnEliminar.Image")));
            this.btnEliminar.Location = new System.Drawing.Point(166, 285);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(79, 46);
            this.btnEliminar.TabIndex = 7;
            this.btnEliminar.UseVisualStyleBackColor = false;
            // 
            // btnModificar
            // 
            this.btnModificar.BackColor = System.Drawing.Color.White;
            this.btnModificar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnModificar.Image = ((System.Drawing.Image)(resources.GetObject("btnModificar.Image")));
            this.btnModificar.Location = new System.Drawing.Point(90, 285);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(70, 46);
            this.btnModificar.TabIndex = 6;
            this.btnModificar.UseVisualStyleBackColor = false;
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // edificioCb
            // 
            this.edificioCb.FormattingEnabled = true;
            this.edificioCb.Location = new System.Drawing.Point(141, 182);
            this.edificioCb.Name = "edificioCb";
            this.edificioCb.Size = new System.Drawing.Size(149, 25);
            this.edificioCb.TabIndex = 5;
            // 
            // nombreAreaTxt
            // 
            this.nombreAreaTxt.Location = new System.Drawing.Point(141, 129);
            this.nombreAreaTxt.Name = "nombreAreaTxt";
            this.nombreAreaTxt.Size = new System.Drawing.Size(149, 22);
            this.nombreAreaTxt.TabIndex = 4;
            // 
            // IDareaTxt
            // 
            this.IDareaTxt.Location = new System.Drawing.Point(141, 76);
            this.IDareaTxt.Name = "IDareaTxt";
            this.IDareaTxt.Size = new System.Drawing.Size(149, 22);
            this.IDareaTxt.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(22, 182);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(57, 17);
            this.label4.TabIndex = 2;
            this.label4.Text = "Edificio :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(22, 129);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(113, 17);
            this.label3.TabIndex = 1;
            this.label3.Text = "Nombre de Area :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(22, 81);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 17);
            this.label2.TabIndex = 0;
            this.label2.Text = "ID Area :";
            // 
            // IDareaErrorLbl
            // 
            this.IDareaErrorLbl.AutoSize = true;
            this.IDareaErrorLbl.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.IDareaErrorLbl.ForeColor = System.Drawing.Color.Red;
            this.IDareaErrorLbl.Location = new System.Drawing.Point(288, 78);
            this.IDareaErrorLbl.Name = "IDareaErrorLbl";
            this.IDareaErrorLbl.Size = new System.Drawing.Size(16, 21);
            this.IDareaErrorLbl.TabIndex = 17;
            this.IDareaErrorLbl.Text = "*";
            // 
            // nombreAreaErrorLbl
            // 
            this.nombreAreaErrorLbl.AutoSize = true;
            this.nombreAreaErrorLbl.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nombreAreaErrorLbl.ForeColor = System.Drawing.Color.Red;
            this.nombreAreaErrorLbl.Location = new System.Drawing.Point(288, 132);
            this.nombreAreaErrorLbl.Name = "nombreAreaErrorLbl";
            this.nombreAreaErrorLbl.Size = new System.Drawing.Size(16, 21);
            this.nombreAreaErrorLbl.TabIndex = 19;
            this.nombreAreaErrorLbl.Text = "*";
            // 
            // edificioErrorLbl
            // 
            this.edificioErrorLbl.AutoSize = true;
            this.edificioErrorLbl.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.edificioErrorLbl.ForeColor = System.Drawing.Color.Red;
            this.edificioErrorLbl.Location = new System.Drawing.Point(288, 186);
            this.edificioErrorLbl.Name = "edificioErrorLbl";
            this.edificioErrorLbl.Size = new System.Drawing.Size(16, 21);
            this.edificioErrorLbl.TabIndex = 20;
            this.edificioErrorLbl.Text = "*";
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
            // Area
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(830, 509);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.dgvArea);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnMenu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Area";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Area";
            this.Load += new System.EventHandler(this.Area_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvArea)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnMenu;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvArea;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.ComboBox edificioCb;
        private System.Windows.Forms.TextBox nombreAreaTxt;
        private System.Windows.Forms.TextBox IDareaTxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnModificar;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Button btnLimpiar;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.Label IDareaErrorLbl;
        private System.Windows.Forms.Label nombreAreaErrorLbl;
        private System.Windows.Forms.Label edificioErrorLbl;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.DataGridViewTextBoxColumn IDareaColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn NombreAreaColumn;
    }
}