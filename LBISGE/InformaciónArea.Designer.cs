namespace LBISGE
{
    partial class InformaciónArea
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(InformaciónArea));
            this.btnMenu = new System.Windows.Forms.Button();
            this.Modificar = new System.Windows.Forms.GroupBox();
            this.label13 = new System.Windows.Forms.Label();
            this.CantidadPersonas = new System.Windows.Forms.TextBox();
            this.TipoAreatxt = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.btnLimpiar = new System.Windows.Forms.Button();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.btnModificar = new System.Windows.Forms.Button();
            this.cbSubsistema = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.cbArea = new System.Windows.Forms.ComboBox();
            this.label10 = new System.Windows.Forms.Label();
            this.cbEdificio = new System.Windows.Forms.ComboBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtConsumo = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtDias = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtHorasUso = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtCapacidad = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtCantidad = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.txtID_Area = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtEdificioBusqueda = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.errorProvider1 = new System.Windows.Forms.ErrorProvider(this.components);
            this.dgvInformacionArea = new System.Windows.Forms.DataGridView();
            this.EdificioColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.AreaColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TipoAreaColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CantidadPersonasColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SubsistemaColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ItemColum = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DescripcionColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CantidadColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CapacidadColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HorasColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DiasColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ConsumoColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Modificar.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvInformacionArea)).BeginInit();
            this.SuspendLayout();
            // 
            // btnMenu
            // 
            this.btnMenu.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMenu.Image = ((System.Drawing.Image)(resources.GetObject("btnMenu.Image")));
            this.btnMenu.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnMenu.Location = new System.Drawing.Point(12, 438);
            this.btnMenu.Name = "btnMenu";
            this.btnMenu.Size = new System.Drawing.Size(171, 51);
            this.btnMenu.TabIndex = 4;
            this.btnMenu.Text = "Menu principal";
            this.btnMenu.UseVisualStyleBackColor = true;
            this.btnMenu.Click += new System.EventHandler(this.btnMenu_Click);
            // 
            // Modificar
            // 
            this.Modificar.Controls.Add(this.label13);
            this.Modificar.Controls.Add(this.CantidadPersonas);
            this.Modificar.Controls.Add(this.TipoAreatxt);
            this.Modificar.Controls.Add(this.label12);
            this.Modificar.Controls.Add(this.btnGuardar);
            this.Modificar.Controls.Add(this.btnLimpiar);
            this.Modificar.Controls.Add(this.btnEliminar);
            this.Modificar.Controls.Add(this.btnModificar);
            this.Modificar.Controls.Add(this.cbSubsistema);
            this.Modificar.Controls.Add(this.label11);
            this.Modificar.Controls.Add(this.cbArea);
            this.Modificar.Controls.Add(this.label10);
            this.Modificar.Controls.Add(this.cbEdificio);
            this.Modificar.Controls.Add(this.label9);
            this.Modificar.Controls.Add(this.txtConsumo);
            this.Modificar.Controls.Add(this.label8);
            this.Modificar.Controls.Add(this.txtDias);
            this.Modificar.Controls.Add(this.label7);
            this.Modificar.Controls.Add(this.txtHorasUso);
            this.Modificar.Controls.Add(this.label6);
            this.Modificar.Controls.Add(this.txtCapacidad);
            this.Modificar.Controls.Add(this.label5);
            this.Modificar.Controls.Add(this.txtCantidad);
            this.Modificar.Controls.Add(this.label4);
            this.Modificar.Controls.Add(this.txtDescripcion);
            this.Modificar.Controls.Add(this.txtID_Area);
            this.Modificar.Controls.Add(this.label3);
            this.Modificar.Controls.Add(this.label2);
            this.Modificar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Modificar.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.Modificar.Location = new System.Drawing.Point(422, 23);
            this.Modificar.Name = "Modificar";
            this.Modificar.Size = new System.Drawing.Size(396, 474);
            this.Modificar.TabIndex = 10;
            this.Modificar.TabStop = false;
            this.Modificar.Text = "Agregar, Modificar o Eliminar.";
            this.Modificar.Enter += new System.EventHandler(this.Modificar_Enter);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(24, 136);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(144, 17);
            this.label13.TabIndex = 33;
            this.label13.Text = "Cantidad de Personas :";
            // 
            // CantidadPersonas
            // 
            this.CantidadPersonas.Location = new System.Drawing.Point(176, 133);
            this.CantidadPersonas.Name = "CantidadPersonas";
            this.CantidadPersonas.Size = new System.Drawing.Size(205, 22);
            this.CantidadPersonas.TabIndex = 32;
            // 
            // TipoAreatxt
            // 
            this.TipoAreatxt.Enabled = false;
            this.TipoAreatxt.Location = new System.Drawing.Point(176, 103);
            this.TipoAreatxt.Name = "TipoAreatxt";
            this.TipoAreatxt.Size = new System.Drawing.Size(205, 22);
            this.TipoAreatxt.TabIndex = 31;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(23, 106);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(89, 17);
            this.label12.TabIndex = 30;
            this.label12.Text = "Tipo de Area :";
            // 
            // btnGuardar
            // 
            this.btnGuardar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnGuardar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGuardar.Image = ((System.Drawing.Image)(resources.GetObject("btnGuardar.Image")));
            this.btnGuardar.Location = new System.Drawing.Point(54, 413);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(64, 45);
            this.btnGuardar.TabIndex = 29;
            this.btnGuardar.Text = "    ";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.BackColor = System.Drawing.Color.White;
            this.btnLimpiar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLimpiar.Image = ((System.Drawing.Image)(resources.GetObject("btnLimpiar.Image")));
            this.btnLimpiar.Location = new System.Drawing.Point(284, 412);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(64, 46);
            this.btnLimpiar.TabIndex = 28;
            this.btnLimpiar.UseVisualStyleBackColor = false;
            // 
            // btnEliminar
            // 
            this.btnEliminar.BackColor = System.Drawing.Color.White;
            this.btnEliminar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEliminar.Image = ((System.Drawing.Image)(resources.GetObject("btnEliminar.Image")));
            this.btnEliminar.Location = new System.Drawing.Point(199, 412);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(79, 46);
            this.btnEliminar.TabIndex = 27;
            this.btnEliminar.UseVisualStyleBackColor = false;
            // 
            // btnModificar
            // 
            this.btnModificar.BackColor = System.Drawing.Color.White;
            this.btnModificar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnModificar.Image = ((System.Drawing.Image)(resources.GetObject("btnModificar.Image")));
            this.btnModificar.Location = new System.Drawing.Point(123, 412);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(70, 46);
            this.btnModificar.TabIndex = 26;
            this.btnModificar.UseVisualStyleBackColor = false;
            // 
            // cbSubsistema
            // 
            this.cbSubsistema.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
            this.cbSubsistema.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbSubsistema.FormattingEnabled = true;
            this.cbSubsistema.Location = new System.Drawing.Point(176, 161);
            this.cbSubsistema.Name = "cbSubsistema";
            this.cbSubsistema.Size = new System.Drawing.Size(205, 25);
            this.cbSubsistema.TabIndex = 25;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(23, 164);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(81, 17);
            this.label11.TabIndex = 24;
            this.label11.Text = "Subsistema :";
            // 
            // cbArea
            // 
            this.cbArea.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
            this.cbArea.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbArea.FormattingEnabled = true;
            this.cbArea.Location = new System.Drawing.Point(176, 72);
            this.cbArea.Name = "cbArea";
            this.cbArea.Size = new System.Drawing.Size(205, 25);
            this.cbArea.TabIndex = 23;
            this.cbArea.SelectedIndexChanged += new System.EventHandler(this.cbArea_SelectedIndexChanged);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(23, 75);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(43, 17);
            this.label10.TabIndex = 22;
            this.label10.Text = "Area :";
            // 
            // cbEdificio
            // 
            this.cbEdificio.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
            this.cbEdificio.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbEdificio.FormattingEnabled = true;
            this.cbEdificio.Location = new System.Drawing.Point(176, 41);
            this.cbEdificio.Name = "cbEdificio";
            this.cbEdificio.Size = new System.Drawing.Size(205, 25);
            this.cbEdificio.TabIndex = 21;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(23, 44);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(57, 17);
            this.label9.TabIndex = 20;
            this.label9.Text = "Edificio :";
            // 
            // txtConsumo
            // 
            this.txtConsumo.Enabled = false;
            this.txtConsumo.Location = new System.Drawing.Point(176, 364);
            this.txtConsumo.Name = "txtConsumo";
            this.txtConsumo.Size = new System.Drawing.Size(205, 22);
            this.txtConsumo.TabIndex = 19;
            this.txtConsumo.TextChanged += new System.EventHandler(this.txtConsumo_TextChanged);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(23, 367);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(69, 17);
            this.label8.TabIndex = 18;
            this.label8.Text = "Consumo :";
            // 
            // txtDias
            // 
            this.txtDias.Location = new System.Drawing.Point(176, 336);
            this.txtDias.Name = "txtDias";
            this.txtDias.Size = new System.Drawing.Size(205, 22);
            this.txtDias.TabIndex = 17;
            this.txtDias.TextChanged += new System.EventHandler(this.textBox4_TextChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(24, 339);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(39, 17);
            this.label7.TabIndex = 13;
            this.label7.Text = "Días :";
            this.label7.Click += new System.EventHandler(this.label7_Click);
            // 
            // txtHorasUso
            // 
            this.txtHorasUso.Location = new System.Drawing.Point(176, 308);
            this.txtHorasUso.Name = "txtHorasUso";
            this.txtHorasUso.Size = new System.Drawing.Size(205, 22);
            this.txtHorasUso.TabIndex = 12;
            this.txtHorasUso.TextChanged += new System.EventHandler(this.txtHorasUso_TextChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(24, 311);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(89, 17);
            this.label6.TabIndex = 11;
            this.label6.Text = "Horas de uso :";
            // 
            // txtCapacidad
            // 
            this.txtCapacidad.Location = new System.Drawing.Point(176, 280);
            this.txtCapacidad.Name = "txtCapacidad";
            this.txtCapacidad.Size = new System.Drawing.Size(205, 22);
            this.txtCapacidad.TabIndex = 10;
            this.txtCapacidad.TextChanged += new System.EventHandler(this.txtCapacidad_TextChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(24, 283);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(82, 17);
            this.label5.TabIndex = 9;
            this.label5.Text = "Capacidad :";
            // 
            // txtCantidad
            // 
            this.txtCantidad.Location = new System.Drawing.Point(176, 252);
            this.txtCantidad.Name = "txtCantidad";
            this.txtCantidad.Size = new System.Drawing.Size(205, 22);
            this.txtCantidad.TabIndex = 8;
            this.txtCantidad.TextChanged += new System.EventHandler(this.txtCantidad_TextChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(24, 255);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(70, 17);
            this.label4.TabIndex = 7;
            this.label4.Text = "Cantidad :";
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(176, 221);
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(205, 22);
            this.txtDescripcion.TabIndex = 5;
            // 
            // txtID_Area
            // 
            this.txtID_Area.Enabled = false;
            this.txtID_Area.Location = new System.Drawing.Point(176, 193);
            this.txtID_Area.Name = "txtID_Area";
            this.txtID_Area.Size = new System.Drawing.Size(205, 22);
            this.txtID_Area.TabIndex = 4;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(23, 224);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(85, 17);
            this.label3.TabIndex = 3;
            this.label3.Text = "Descripción :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(23, 196);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(41, 17);
            this.label2.TabIndex = 2;
            this.label2.Text = "Item :";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtEdificioBusqueda);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.groupBox1.Location = new System.Drawing.Point(25, 23);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(391, 56);
            this.groupBox1.TabIndex = 8;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Descripción de area";
            // 
            // txtEdificioBusqueda
            // 
            this.txtEdificioBusqueda.Location = new System.Drawing.Point(94, 18);
            this.txtEdificioBusqueda.Name = "txtEdificioBusqueda";
            this.txtEdificioBusqueda.Size = new System.Drawing.Size(196, 22);
            this.txtEdificioBusqueda.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label1.Location = new System.Drawing.Point(6, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(43, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Area :";
            // 
            // errorProvider1
            // 
            this.errorProvider1.ContainerControl = this;
            // 
            // dgvInformacionArea
            // 
            this.dgvInformacionArea.AllowUserToAddRows = false;
            this.dgvInformacionArea.AllowUserToDeleteRows = false;
            this.dgvInformacionArea.BackgroundColor = System.Drawing.Color.White;
            this.dgvInformacionArea.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvInformacionArea.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvInformacionArea.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.EdificioColumn,
            this.AreaColumn,
            this.TipoAreaColumn,
            this.CantidadPersonasColumn,
            this.SubsistemaColumn,
            this.ItemColum,
            this.DescripcionColumn,
            this.CantidadColumn,
            this.CapacidadColumn,
            this.HorasColumn,
            this.DiasColumn,
            this.ConsumoColumn});
            this.dgvInformacionArea.Location = new System.Drawing.Point(12, 95);
            this.dgvInformacionArea.Name = "dgvInformacionArea";
            this.dgvInformacionArea.ReadOnly = true;
            this.dgvInformacionArea.RowHeadersVisible = false;
            this.dgvInformacionArea.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvInformacionArea.Size = new System.Drawing.Size(404, 337);
            this.dgvInformacionArea.TabIndex = 11;
            // 
            // EdificioColumn
            // 
            this.EdificioColumn.HeaderText = "Edificio";
            this.EdificioColumn.Name = "EdificioColumn";
            this.EdificioColumn.ReadOnly = true;
            this.EdificioColumn.Width = 101;
            // 
            // AreaColumn
            // 
            this.AreaColumn.HeaderText = "Area";
            this.AreaColumn.Name = "AreaColumn";
            this.AreaColumn.ReadOnly = true;
            this.AreaColumn.Width = 101;
            // 
            // TipoAreaColumn
            // 
            this.TipoAreaColumn.HeaderText = "TipoArea";
            this.TipoAreaColumn.Name = "TipoAreaColumn";
            this.TipoAreaColumn.ReadOnly = true;
            // 
            // CantidadPersonasColumn
            // 
            this.CantidadPersonasColumn.HeaderText = "Personas";
            this.CantidadPersonasColumn.Name = "CantidadPersonasColumn";
            this.CantidadPersonasColumn.ReadOnly = true;
            this.CantidadPersonasColumn.Width = 101;
            // 
            // SubsistemaColumn
            // 
            this.SubsistemaColumn.HeaderText = "Subsistema";
            this.SubsistemaColumn.Name = "SubsistemaColumn";
            this.SubsistemaColumn.ReadOnly = true;
            // 
            // ItemColum
            // 
            this.ItemColum.HeaderText = "Item";
            this.ItemColum.Name = "ItemColum";
            this.ItemColum.ReadOnly = true;
            this.ItemColum.Visible = false;
            // 
            // DescripcionColumn
            // 
            this.DescripcionColumn.HeaderText = "Descripcion";
            this.DescripcionColumn.Name = "DescripcionColumn";
            this.DescripcionColumn.ReadOnly = true;
            // 
            // CantidadColumn
            // 
            this.CantidadColumn.HeaderText = "Cantidad";
            this.CantidadColumn.Name = "CantidadColumn";
            this.CantidadColumn.ReadOnly = true;
            // 
            // CapacidadColumn
            // 
            this.CapacidadColumn.HeaderText = "Capacidad";
            this.CapacidadColumn.Name = "CapacidadColumn";
            this.CapacidadColumn.ReadOnly = true;
            // 
            // HorasColumn
            // 
            this.HorasColumn.HeaderText = "Horas";
            this.HorasColumn.Name = "HorasColumn";
            this.HorasColumn.ReadOnly = true;
            // 
            // DiasColumn
            // 
            this.DiasColumn.HeaderText = "Dias";
            this.DiasColumn.Name = "DiasColumn";
            this.DiasColumn.ReadOnly = true;
            // 
            // ConsumoColumn
            // 
            this.ConsumoColumn.HeaderText = "Consumo";
            this.ConsumoColumn.Name = "ConsumoColumn";
            this.ConsumoColumn.ReadOnly = true;
            // 
            // InformaciónArea
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(830, 509);
            this.Controls.Add(this.dgvInformacionArea);
            this.Controls.Add(this.Modificar);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnMenu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "InformaciónArea";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "InformaciónArea";
            this.Load += new System.EventHandler(this.InformaciónArea_Load);
            this.Modificar.ResumeLayout(false);
            this.Modificar.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvInformacionArea)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnMenu;
        private System.Windows.Forms.GroupBox Modificar;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.TextBox txtID_Area;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtEdificioBusqueda;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtDias;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtHorasUso;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtCapacidad;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtCantidad;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtConsumo;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ComboBox cbSubsistema;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.ComboBox cbArea;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox cbEdificio;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Button btnLimpiar;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Button btnModificar;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.ErrorProvider errorProvider1;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox CantidadPersonas;
        private System.Windows.Forms.TextBox TipoAreatxt;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.DataGridView dgvInformacionArea;
        private System.Windows.Forms.DataGridViewTextBoxColumn EdificioColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn AreaColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn TipoAreaColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn CantidadPersonasColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn SubsistemaColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ItemColum;
        private System.Windows.Forms.DataGridViewTextBoxColumn DescripcionColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn CantidadColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn CapacidadColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn HorasColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn DiasColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ConsumoColumn;
    }
}