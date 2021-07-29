namespace LBISGE
{
    partial class Edificio
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Edificio));
            this.btnMenu = new System.Windows.Forms.Button();
            this.Modificar = new System.Windows.Forms.GroupBox();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.btnLimpiar = new System.Windows.Forms.Button();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.btnModificar = new System.Windows.Forms.Button();
            this.txtNombreEdificio = new System.Windows.Forms.TextBox();
            this.txtID_Edificio = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.IDedfErrorLbl = new System.Windows.Forms.Label();
            this.dgvEdificio = new System.Windows.Forms.DataGridView();
            this.ID_edificioGvColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NombreEdificioGvColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.txtEdificioBusqueda = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.errorProvider1 = new System.Windows.Forms.ErrorProvider(this.components);
            this.datosLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
            this.dgvdatosLayoutPanel = new System.Windows.Forms.TableLayoutPanel();
            this.Modificar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEdificio)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).BeginInit();
            this.datosLayoutPanel.SuspendLayout();
            this.dgvdatosLayoutPanel.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnMenu
            // 
            this.btnMenu.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnMenu.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMenu.Image = ((System.Drawing.Image)(resources.GetObject("btnMenu.Image")));
            this.btnMenu.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnMenu.Location = new System.Drawing.Point(647, 587);
            this.btnMenu.Name = "btnMenu";
            this.btnMenu.Size = new System.Drawing.Size(171, 51);
            this.btnMenu.TabIndex = 4;
            this.btnMenu.Text = "Menu principal";
            this.btnMenu.UseVisualStyleBackColor = true;
            this.btnMenu.Click += new System.EventHandler(this.btnMenu_Click);
            // 
            // Modificar
            // 
            this.Modificar.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.Modificar.Controls.Add(this.btnGuardar);
            this.Modificar.Controls.Add(this.btnLimpiar);
            this.Modificar.Controls.Add(this.btnEliminar);
            this.Modificar.Controls.Add(this.btnModificar);
            this.Modificar.Controls.Add(this.txtNombreEdificio);
            this.Modificar.Controls.Add(this.txtID_Edificio);
            this.Modificar.Controls.Add(this.label3);
            this.Modificar.Controls.Add(this.label2);
            this.Modificar.Controls.Add(this.IDedfErrorLbl);
            this.Modificar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Modificar.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.Modificar.Location = new System.Drawing.Point(8, 84);
            this.Modificar.Name = "Modificar";
            this.Modificar.Size = new System.Drawing.Size(399, 265);
            this.Modificar.TabIndex = 7;
            this.Modificar.TabStop = false;
            this.Modificar.Text = "Agregar, Modificar o Eliminar.";
            this.Modificar.Enter += new System.EventHandler(this.Modificar_Enter);
            // 
            // btnGuardar
            // 
            this.btnGuardar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnGuardar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGuardar.Image = ((System.Drawing.Image)(resources.GetObject("btnGuardar.Image")));
            this.btnGuardar.Location = new System.Drawing.Point(63, 149);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(64, 45);
            this.btnGuardar.TabIndex = 15;
            this.btnGuardar.Text = "    ";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.BackColor = System.Drawing.Color.White;
            this.btnLimpiar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLimpiar.Image = ((System.Drawing.Image)(resources.GetObject("btnLimpiar.Image")));
            this.btnLimpiar.Location = new System.Drawing.Point(293, 148);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(64, 46);
            this.btnLimpiar.TabIndex = 14;
            this.btnLimpiar.UseVisualStyleBackColor = false;
            this.btnLimpiar.Click += new System.EventHandler(this.btnLimpiar_Click);
            // 
            // btnEliminar
            // 
            this.btnEliminar.BackColor = System.Drawing.Color.White;
            this.btnEliminar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEliminar.Image = ((System.Drawing.Image)(resources.GetObject("btnEliminar.Image")));
            this.btnEliminar.Location = new System.Drawing.Point(208, 148);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(79, 46);
            this.btnEliminar.TabIndex = 13;
            this.btnEliminar.UseVisualStyleBackColor = false;
            this.btnEliminar.Click += new System.EventHandler(this.btnEliminar_Click);
            // 
            // btnModificar
            // 
            this.btnModificar.BackColor = System.Drawing.Color.White;
            this.btnModificar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnModificar.Image = ((System.Drawing.Image)(resources.GetObject("btnModificar.Image")));
            this.btnModificar.Location = new System.Drawing.Point(132, 148);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(70, 46);
            this.btnModificar.TabIndex = 12;
            this.btnModificar.UseVisualStyleBackColor = false;
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // txtNombreEdificio
            // 
            this.txtNombreEdificio.Location = new System.Drawing.Point(168, 91);
            this.txtNombreEdificio.Name = "txtNombreEdificio";
            this.txtNombreEdificio.Size = new System.Drawing.Size(205, 22);
            this.txtNombreEdificio.TabIndex = 5;
            this.txtNombreEdificio.TextChanged += new System.EventHandler(this.txtNombreEdificio_TextChanged);
            // 
            // txtID_Edificio
            // 
            this.txtID_Edificio.Location = new System.Drawing.Point(168, 42);
            this.txtID_Edificio.Name = "txtID_Edificio";
            this.txtID_Edificio.Size = new System.Drawing.Size(205, 22);
            this.txtID_Edificio.TabIndex = 4;
            this.txtID_Edificio.TextChanged += new System.EventHandler(this.txtID_Edificio_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(23, 91);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(129, 17);
            this.label3.TabIndex = 3;
            this.label3.Text = "Nombre de edificio :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(23, 45);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(72, 17);
            this.label2.TabIndex = 2;
            this.label2.Text = "ID Edificio :";
            // 
            // IDedfErrorLbl
            // 
            this.IDedfErrorLbl.AutoSize = true;
            this.IDedfErrorLbl.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.IDedfErrorLbl.ForeColor = System.Drawing.Color.Red;
            this.IDedfErrorLbl.Location = new System.Drawing.Point(155, 42);
            this.IDedfErrorLbl.Name = "IDedfErrorLbl";
            this.IDedfErrorLbl.Size = new System.Drawing.Size(0, 21);
            this.IDedfErrorLbl.TabIndex = 16;
            // 
            // dgvEdificio
            // 
            this.dgvEdificio.AllowUserToAddRows = false;
            this.dgvEdificio.AllowUserToDeleteRows = false;
            this.dgvEdificio.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvEdificio.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvEdificio.BackgroundColor = System.Drawing.Color.White;
            this.dgvEdificio.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvEdificio.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEdificio.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ID_edificioGvColumn,
            this.NombreEdificioGvColumn});
            this.dgvEdificio.Location = new System.Drawing.Point(3, 3);
            this.dgvEdificio.Name = "dgvEdificio";
            this.dgvEdificio.ReadOnly = true;
            this.dgvEdificio.RowHeadersVisible = false;
            this.dgvEdificio.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvEdificio.Size = new System.Drawing.Size(369, 510);
            this.dgvEdificio.TabIndex = 6;
            this.dgvEdificio.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvEdificio_CellClick);
            this.dgvEdificio.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvEdificio_CellContentClick);
            // 
            // ID_edificioGvColumn
            // 
            this.ID_edificioGvColumn.HeaderText = "ID Edificio";
            this.ID_edificioGvColumn.Name = "ID_edificioGvColumn";
            this.ID_edificioGvColumn.ReadOnly = true;
            // 
            // NombreEdificioGvColumn
            // 
            this.NombreEdificioGvColumn.HeaderText = "Nombre Edificio";
            this.NombreEdificioGvColumn.Name = "NombreEdificioGvColumn";
            this.NombreEdificioGvColumn.ReadOnly = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.tableLayoutPanel1);
            this.groupBox1.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.groupBox1.Location = new System.Drawing.Point(27, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(323, 47);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Nombre de Edificio";
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 2;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 21.22186F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 78.77814F));
            this.tableLayoutPanel1.Controls.Add(this.txtEdificioBusqueda, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.label1, 0, 0);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(3, 18);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 1;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(317, 26);
            this.tableLayoutPanel1.TabIndex = 8;
            // 
            // txtEdificioBusqueda
            // 
            this.txtEdificioBusqueda.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtEdificioBusqueda.Location = new System.Drawing.Point(70, 3);
            this.txtEdificioBusqueda.Name = "txtEdificioBusqueda";
            this.txtEdificioBusqueda.Size = new System.Drawing.Size(244, 22);
            this.txtEdificioBusqueda.TabIndex = 1;
            this.txtEdificioBusqueda.TextChanged += new System.EventHandler(this.txtEdificioBusqueda_TextChanged);
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label1.Location = new System.Drawing.Point(3, 5);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(56, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Edificio :";
            // 
            // errorProvider1
            // 
            this.errorProvider1.ContainerControl = this;
            // 
            // datosLayoutPanel
            // 
            this.datosLayoutPanel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.datosLayoutPanel.ColumnCount = 1;
            this.datosLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.datosLayoutPanel.Controls.Add(this.Modificar, 0, 0);
            this.datosLayoutPanel.Location = new System.Drawing.Point(378, 3);
            this.datosLayoutPanel.Name = "datosLayoutPanel";
            this.datosLayoutPanel.RowCount = 1;
            this.datosLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.datosLayoutPanel.Size = new System.Drawing.Size(410, 433);
            this.datosLayoutPanel.TabIndex = 9;
            // 
            // dgvdatosLayoutPanel
            // 
            this.dgvdatosLayoutPanel.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvdatosLayoutPanel.ColumnCount = 2;
            this.dgvdatosLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.dgvdatosLayoutPanel.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 416F));
            this.dgvdatosLayoutPanel.Controls.Add(this.dgvEdificio, 0, 0);
            this.dgvdatosLayoutPanel.Controls.Add(this.datosLayoutPanel, 1, 0);
            this.dgvdatosLayoutPanel.Location = new System.Drawing.Point(27, 65);
            this.dgvdatosLayoutPanel.Name = "dgvdatosLayoutPanel";
            this.dgvdatosLayoutPanel.RowCount = 1;
            this.dgvdatosLayoutPanel.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.dgvdatosLayoutPanel.Size = new System.Drawing.Size(791, 516);
            this.dgvdatosLayoutPanel.TabIndex = 10;
            // 
            // Edificio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(830, 650);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnMenu);
            this.Controls.Add(this.dgvdatosLayoutPanel);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Edificio";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Edificio";
            this.Load += new System.EventHandler(this.Edificio_Load);
            this.Modificar.ResumeLayout(false);
            this.Modificar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEdificio)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).EndInit();
            this.datosLayoutPanel.ResumeLayout(false);
            this.dgvdatosLayoutPanel.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnMenu;
        private System.Windows.Forms.GroupBox Modificar;
        private System.Windows.Forms.TextBox txtNombreEdificio;
        private System.Windows.Forms.TextBox txtID_Edificio;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dgvEdificio;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtEdificioBusqueda;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Button btnLimpiar;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Button btnModificar;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.Label IDedfErrorLbl;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID_edificioGvColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn NombreEdificioGvColumn;
        private System.Windows.Forms.ErrorProvider errorProvider1;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.TableLayoutPanel datosLayoutPanel;
        private System.Windows.Forms.TableLayoutPanel dgvdatosLayoutPanel;
    }
}