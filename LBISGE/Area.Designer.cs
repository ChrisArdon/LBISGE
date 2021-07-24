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
            this.txtAreaBusqueda = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.dgvArea = new System.Windows.Forms.DataGridView();
            this.IDareaColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NombreAreaColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtNivel = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.CantidadPersonas = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txt_AreaT = new System.Windows.Forms.TextBox();
            this.txt_AnchoArea = new System.Windows.Forms.TextBox();
            this.txt_LargoArea = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.TipoArea = new System.Windows.Forms.ComboBox();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.btnLimpiar = new System.Windows.Forms.Button();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.btnModificar = new System.Windows.Forms.Button();
            this.nombreAreaTxt = new System.Windows.Forms.TextBox();
            this.IDareaTxt = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.IDareaErrorLbl = new System.Windows.Forms.Label();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.errorProvider1 = new System.Windows.Forms.ErrorProvider(this.components);
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.label8 = new System.Windows.Forms.Label();
            this.CantidadPersonas = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtNivel = new System.Windows.Forms.TextBox();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvArea)).BeginInit();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).BeginInit();
            this.tableLayoutPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnMenu
            // 
            this.btnMenu.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnMenu.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMenu.Image = ((System.Drawing.Image)(resources.GetObject("btnMenu.Image")));
            this.btnMenu.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnMenu.Location = new System.Drawing.Point(637, 573);
            this.btnMenu.Name = "btnMenu";
            this.btnMenu.Size = new System.Drawing.Size(171, 51);
            this.btnMenu.TabIndex = 4;
            this.btnMenu.Text = "Menu principal";
            this.btnMenu.UseVisualStyleBackColor = true;
            this.btnMenu.Click += new System.EventHandler(this.btnMenu_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtAreaBusqueda);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(25, 26);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(423, 57);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Tipo De Area";
            // 
            // txtAreaBusqueda
            // 
            this.txtAreaBusqueda.Location = new System.Drawing.Point(65, 23);
            this.txtAreaBusqueda.Name = "txtAreaBusqueda";
            this.txtAreaBusqueda.Size = new System.Drawing.Size(272, 22);
            this.txtAreaBusqueda.TabIndex = 1;
            this.txtAreaBusqueda.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
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
            this.dgvArea.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvArea.Location = new System.Drawing.Point(3, 3);
            this.dgvArea.Name = "dgvArea";
            this.dgvArea.ReadOnly = true;
            this.dgvArea.RowHeadersVisible = false;
            this.dgvArea.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvArea.Size = new System.Drawing.Size(438, 461);
            this.dgvArea.TabIndex = 6;
            this.dgvArea.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvArea_CellClick);
            this.dgvArea.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvArea_CellContentClick);
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
            // groupBox2
            // 
            this.groupBox2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox2.Controls.Add(this.txtNivel);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.CantidadPersonas);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.txt_AreaT);
            this.groupBox2.Controls.Add(this.txt_AnchoArea);
            this.groupBox2.Controls.Add(this.txt_LargoArea);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.TipoArea);
            this.groupBox2.Controls.Add(this.btnGuardar);
            this.groupBox2.Controls.Add(this.btnLimpiar);
            this.groupBox2.Controls.Add(this.btnEliminar);
            this.groupBox2.Controls.Add(this.btnModificar);
            this.groupBox2.Controls.Add(this.nombreAreaTxt);
            this.groupBox2.Controls.Add(this.IDareaTxt);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.IDareaErrorLbl);
            this.groupBox2.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(447, 3);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(333, 391);
            this.groupBox2.TabIndex = 7;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Agregar, Modificar o Eliminar";
            this.groupBox2.Enter += new System.EventHandler(this.groupBox2_Enter);
            // 
            // txtNivel
            // 
            this.txtNivel.Location = new System.Drawing.Point(167, 144);
            this.txtNivel.Name = "txtNivel";
            this.txtNivel.Size = new System.Drawing.Size(146, 22);
            this.txtNivel.TabIndex = 31;
            this.txtNivel.TextChanged += new System.EventHandler(this.txtNivel_TextChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(18, 147);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(45, 17);
            this.label9.TabIndex = 30;
            this.label9.Text = "Nivel :";
            // 
            // CantidadPersonas
            // 
            this.CantidadPersonas.Location = new System.Drawing.Point(167, 109);
            this.CantidadPersonas.Name = "CantidadPersonas";
            this.CantidadPersonas.Size = new System.Drawing.Size(146, 22);
            this.CantidadPersonas.TabIndex = 29;
            this.CantidadPersonas.TextChanged += new System.EventHandler(this.CantidadPersonas_TextChanged);
            this.CantidadPersonas.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CantidadPersonas_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(17, 109);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(144, 17);
            this.label8.TabIndex = 28;
            this.label8.Text = "Cantidad de Personas :";
            // 
            // txt_AreaT
            // 
            this.txt_AreaT.Enabled = false;
            this.txt_AreaT.Location = new System.Drawing.Point(239, 258);
            this.txt_AreaT.Name = "txt_AreaT";
            this.txt_AreaT.Size = new System.Drawing.Size(68, 22);
            this.txt_AreaT.TabIndex = 27;
            this.txt_AreaT.TextChanged += new System.EventHandler(this.txt_AreaT_TextChanged);
            // 
            // txt_AnchoArea
            // 
            this.txt_AnchoArea.Location = new System.Drawing.Point(94, 268);
            this.txt_AnchoArea.Name = "txt_AnchoArea";
            this.txt_AnchoArea.Size = new System.Drawing.Size(100, 22);
            this.txt_AnchoArea.TabIndex = 26;
            this.txt_AnchoArea.TextChanged += new System.EventHandler(this.txt_AnchoArea_TextChanged);
            this.txt_AnchoArea.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txt_AnchoArea_KeyPress);
            // 
            // txt_LargoArea
            // 
            this.txt_LargoArea.Location = new System.Drawing.Point(94, 233);
            this.txt_LargoArea.Name = "txt_LargoArea";
            this.txt_LargoArea.Size = new System.Drawing.Size(100, 22);
            this.txt_LargoArea.TabIndex = 25;
            this.txt_LargoArea.TextChanged += new System.EventHandler(this.txt_LargoArea_TextChanged);
            this.txt_LargoArea.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txt_LargoArea_KeyPress);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(236, 238);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(71, 17);
            this.label7.TabIndex = 24;
            this.label7.Text = "Area (ft2) :";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(17, 268);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(76, 17);
            this.label6.TabIndex = 23;
            this.label6.Text = "Ancho (m) :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(17, 236);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(71, 17);
            this.label5.TabIndex = 22;
            this.label5.Text = "Largo (m) :";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(74, 170);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(89, 17);
            this.label4.TabIndex = 21;
            this.label4.Text = "Tipo de Area :";
            // 
            // TipoArea
            // 
            this.TipoArea.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
            this.TipoArea.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.TipoArea.FormattingEnabled = true;
            this.TipoArea.Items.AddRange(new object[] {
            "All Others",
            "Auditorium",
            "Auto Repair Workshop",
            "Bank/Financial Institution",
            "Bar, Cocktail Lounge",
            "Barber and Beauty Shop",
            "Casino/Gaming",
            "Classroom/Lecture",
            "Courtrooms",
            "Comm/Ind Work (General, High Bay)",
            "Comm/Ind Work (General, Low Bay)",
            "Comm/Ind Work (High Tech, Bio Tech, Lab)",
            "Comm/Ind Work (Loading Dock)",
            "Comm/Ind Work (Precision)",
            "Computer Room (Mainframe/Server)",
            "Computer Room (Instructional/PC Lab)",
            "Conference Room",
            "Convention and Meeting Center",
            "Copy Room (photocopying equipment)",
            "Corridor",
            "Dining Area",
            "Dry Cleaning (Coin Operated)",
            "Dry Cleaning (Full Service Commercial)",
            "Exercising Centers and Gymnasium",
            "Exhibit Display Area / Museum",
            "Hotel/Motel Guest Room (incl. Toilets)",
            "Kitchen and Food Preparation",
            "Laboratory, Medical",
            "Laundry",
            "Library (Reading Areas)",
            "Library (Stacks)",
            "Lobby (Hotel)",
            "Lobby (Main Entry and Assembly)",
            "Lobby (Office Reception/Waiting)",
            "Locker and Dressing Room",
            "Mall, Arcade and Atrium",
            "Mechanical/Electrical Room",
            "Medical and Clinical Care",
            "Office (General)",
            "Office (Executive/Private)",
            "Office (Open Plan)",
            "Police Station and Fire Station",
            "Religius Worship",
            "Residential (Bedroom)",
            "Residential (Garage)",
            "Residential (General Living Space)",
            "Residential (High-Rise)",
            "Residential (Multifamily Dwelling Unit)",
            "Residential (Single Family)",
            "Restrooms",
            "Retail Sales an Wholesale Showroom",
            "Smoking Lounge",
            "Storage (Conditioded)",
            "Storage (Unconditioned)",
            "Theater (Motion Picture)",
            "Theater (Performance)",
            "Vocational Areas"});
            this.TipoArea.Location = new System.Drawing.Point(20, 198);
            this.TipoArea.Name = "TipoArea";
            this.TipoArea.Size = new System.Drawing.Size(265, 25);
            this.TipoArea.TabIndex = 20;
            this.TipoArea.TextChanged += new System.EventHandler(this.TipoArea_TextChanged);
            // 
            // btnGuardar
            // 
            this.btnGuardar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnGuardar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGuardar.Image = ((System.Drawing.Image)(resources.GetObject("btnGuardar.Image")));
            this.btnGuardar.Location = new System.Drawing.Point(21, 314);
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
            this.btnLimpiar.Location = new System.Drawing.Point(251, 313);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(64, 46);
            this.btnLimpiar.TabIndex = 8;
            this.btnLimpiar.UseVisualStyleBackColor = false;
            this.btnLimpiar.Click += new System.EventHandler(this.btnLimpiar_Click);
            // 
            // btnEliminar
            // 
            this.btnEliminar.BackColor = System.Drawing.Color.White;
            this.btnEliminar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEliminar.Image = ((System.Drawing.Image)(resources.GetObject("btnEliminar.Image")));
            this.btnEliminar.Location = new System.Drawing.Point(166, 313);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(79, 46);
            this.btnEliminar.TabIndex = 7;
            this.btnEliminar.UseVisualStyleBackColor = false;
            this.btnEliminar.Click += new System.EventHandler(this.btnEliminar_Click);
            // 
            // btnModificar
            // 
            this.btnModificar.BackColor = System.Drawing.Color.White;
            this.btnModificar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnModificar.Image = ((System.Drawing.Image)(resources.GetObject("btnModificar.Image")));
            this.btnModificar.Location = new System.Drawing.Point(90, 313);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(70, 46);
            this.btnModificar.TabIndex = 6;
            this.btnModificar.UseVisualStyleBackColor = false;
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // nombreAreaTxt
            // 
            this.nombreAreaTxt.Location = new System.Drawing.Point(166, 74);
            this.nombreAreaTxt.Name = "nombreAreaTxt";
            this.nombreAreaTxt.Size = new System.Drawing.Size(149, 22);
            this.nombreAreaTxt.TabIndex = 4;
            this.nombreAreaTxt.TextChanged += new System.EventHandler(this.nombreAreaTxt_TextChanged);
            // 
            // IDareaTxt
            // 
            this.IDareaTxt.Location = new System.Drawing.Point(166, 37);
            this.IDareaTxt.Name = "IDareaTxt";
            this.IDareaTxt.Size = new System.Drawing.Size(149, 22);
            this.IDareaTxt.TabIndex = 3;
            this.IDareaTxt.TextChanged += new System.EventHandler(this.IDareaTxt_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(17, 74);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(113, 17);
            this.label3.TabIndex = 1;
            this.label3.Text = "Nombre de Area :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(17, 42);
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
            this.IDareaErrorLbl.Location = new System.Drawing.Point(296, 39);
            this.IDareaErrorLbl.Name = "IDareaErrorLbl";
            this.IDareaErrorLbl.Size = new System.Drawing.Size(0, 21);
            this.IDareaErrorLbl.TabIndex = 17;
            // 
            // errorProvider1
            // 
            this.errorProvider1.ContainerControl = this;
            //
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
            | System.Windows.Forms.AnchorStyles.Left)
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tableLayoutPanel1.ColumnCount = 2;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 339F));
            this.tableLayoutPanel1.Controls.Add(this.dgvArea, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.groupBox2, 1, 0);
            this.tableLayoutPanel1.Location = new System.Drawing.Point(25, 100);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 1;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(783, 467);
            this.tableLayoutPanel1.TabIndex = 8;
            //
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(17, 109);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(144, 17);
            this.label8.TabIndex = 28;
            this.label8.Text = "Cantidad de Personas :";
            // 
            // CantidadPersonas
            // 
            this.CantidadPersonas.Location = new System.Drawing.Point(167, 109);
            this.CantidadPersonas.Name = "CantidadPersonas";
            this.CantidadPersonas.Size = new System.Drawing.Size(146, 22);
            this.CantidadPersonas.TabIndex = 29;
            this.CantidadPersonas.TextChanged += new System.EventHandler(this.CantidadPersonas_TextChanged);
            this.CantidadPersonas.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.CantidadPersonas_KeyPress);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(18, 147);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(45, 17);
            this.label9.TabIndex = 30;
            this.label9.Text = "Nivel :";
            // 
            // txtNivel
            // 
            this.txtNivel.Location = new System.Drawing.Point(167, 144);
            this.txtNivel.Name = "txtNivel";
            this.txtNivel.Size = new System.Drawing.Size(146, 22);
            this.txtNivel.TabIndex = 31;
            this.txtNivel.TextChanged += new System.EventHandler(this.txtNivel_TextChanged);
            // 
            // Area
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(830, 650);
            this.Controls.Add(this.tableLayoutPanel1);
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
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).EndInit();
            this.tableLayoutPanel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnMenu;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtAreaBusqueda;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvArea;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox nombreAreaTxt;
        private System.Windows.Forms.TextBox IDareaTxt;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnModificar;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Button btnLimpiar;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.Label IDareaErrorLbl;
        private System.Windows.Forms.DataGridViewTextBoxColumn IDareaColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn NombreAreaColumn;
        private System.Windows.Forms.ComboBox TipoArea;
        private System.Windows.Forms.TextBox txt_AreaT;
        private System.Windows.Forms.TextBox txt_AnchoArea;
        private System.Windows.Forms.TextBox txt_LargoArea;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ErrorProvider errorProvider1;
        private System.Windows.Forms.TextBox txtNivel;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox CantidadPersonas;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
    }
}