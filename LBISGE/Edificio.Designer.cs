﻿namespace LBISGE
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
            this.nombreEdfErrorLbl = new System.Windows.Forms.Label();
            this.dgvEdificio = new System.Windows.Forms.DataGridView();
            this.ID_edificioGvColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NombreEdificioGvColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtEdificioBusqueda = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.Modificar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEdificio)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnMenu
            // 
            this.btnMenu.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMenu.Image = ((System.Drawing.Image)(resources.GetObject("btnMenu.Image")));
            this.btnMenu.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnMenu.Location = new System.Drawing.Point(647, 446);
            this.btnMenu.Name = "btnMenu";
            this.btnMenu.Size = new System.Drawing.Size(171, 51);
            this.btnMenu.TabIndex = 4;
            this.btnMenu.Text = "Menu principal";
            this.btnMenu.UseVisualStyleBackColor = true;
            this.btnMenu.Click += new System.EventHandler(this.btnMenu_Click);
            // 
            // Modificar
            // 
            this.Modificar.Controls.Add(this.btnGuardar);
            this.Modificar.Controls.Add(this.btnLimpiar);
            this.Modificar.Controls.Add(this.btnEliminar);
            this.Modificar.Controls.Add(this.btnModificar);
            this.Modificar.Controls.Add(this.txtNombreEdificio);
            this.Modificar.Controls.Add(this.txtID_Edificio);
            this.Modificar.Controls.Add(this.label3);
            this.Modificar.Controls.Add(this.label2);
            this.Modificar.Controls.Add(this.IDedfErrorLbl);
            this.Modificar.Controls.Add(this.nombreEdfErrorLbl);
            this.Modificar.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Modificar.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.Modificar.Location = new System.Drawing.Point(387, 32);
            this.Modificar.Name = "Modificar";
            this.Modificar.Size = new System.Drawing.Size(419, 250);
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
            this.btnGuardar.Location = new System.Drawing.Point(41, 144);
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
            this.btnLimpiar.Location = new System.Drawing.Point(271, 143);
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
            this.btnEliminar.Location = new System.Drawing.Point(186, 143);
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
            this.btnModificar.Location = new System.Drawing.Point(110, 143);
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
            // 
            // txtID_Edificio
            // 
            this.txtID_Edificio.Location = new System.Drawing.Point(168, 42);
            this.txtID_Edificio.Name = "txtID_Edificio";
            this.txtID_Edificio.Size = new System.Drawing.Size(205, 22);
            this.txtID_Edificio.TabIndex = 4;
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
            this.IDedfErrorLbl.Size = new System.Drawing.Size(16, 21);
            this.IDedfErrorLbl.TabIndex = 16;
            this.IDedfErrorLbl.Text = "*";
            // 
            // nombreEdfErrorLbl
            // 
            this.nombreEdfErrorLbl.AutoSize = true;
            this.nombreEdfErrorLbl.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nombreEdfErrorLbl.ForeColor = System.Drawing.Color.Red;
            this.nombreEdfErrorLbl.Location = new System.Drawing.Point(155, 92);
            this.nombreEdfErrorLbl.Name = "nombreEdfErrorLbl";
            this.nombreEdfErrorLbl.Size = new System.Drawing.Size(16, 21);
            this.nombreEdfErrorLbl.TabIndex = 17;
            this.nombreEdfErrorLbl.Text = "*";
            // 
            // dgvEdificio
            // 
            this.dgvEdificio.AllowUserToAddRows = false;
            this.dgvEdificio.AllowUserToDeleteRows = false;
            this.dgvEdificio.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvEdificio.BackgroundColor = System.Drawing.Color.White;
            this.dgvEdificio.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvEdificio.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEdificio.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ID_edificioGvColumn,
            this.NombreEdificioGvColumn});
            this.dgvEdificio.Location = new System.Drawing.Point(27, 109);
            this.dgvEdificio.Name = "dgvEdificio";
            this.dgvEdificio.ReadOnly = true;
            this.dgvEdificio.RowHeadersVisible = false;
            this.dgvEdificio.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvEdificio.Size = new System.Drawing.Size(323, 297);
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
            this.groupBox1.Controls.Add(this.txtEdificioBusqueda);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.groupBox1.Location = new System.Drawing.Point(27, 32);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(323, 56);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Nombre de Edificio";
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // txtEdificioBusqueda
            // 
            this.txtEdificioBusqueda.Location = new System.Drawing.Point(94, 18);
            this.txtEdificioBusqueda.Name = "txtEdificioBusqueda";
            this.txtEdificioBusqueda.Size = new System.Drawing.Size(196, 22);
            this.txtEdificioBusqueda.TabIndex = 1;
            this.txtEdificioBusqueda.TextChanged += new System.EventHandler(this.txtEdificioBusqueda_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label1.Location = new System.Drawing.Point(6, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(56, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Edificio :";
            // 
            // Edificio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(830, 509);
            this.Controls.Add(this.Modificar);
            this.Controls.Add(this.dgvEdificio);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnMenu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Edificio";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Edificio";
            this.Load += new System.EventHandler(this.Edificio_Load);
            this.Modificar.ResumeLayout(false);
            this.Modificar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEdificio)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
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
        private System.Windows.Forms.Label nombreEdfErrorLbl;
        private System.Windows.Forms.DataGridViewTextBoxColumn ID_edificioGvColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn NombreEdificioGvColumn;
    }
}