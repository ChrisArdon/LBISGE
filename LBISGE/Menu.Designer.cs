namespace LBISGE
{
    partial class Menu
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Menu));
            this.PanelMenu = new System.Windows.Forms.Panel();
            this.btnInfoArea = new System.Windows.Forms.Button();
            this.Configuración = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnTipoArea = new System.Windows.Forms.Button();
            this.btnSubsistema = new System.Windows.Forms.Button();
            this.btnEdificio = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.BtnMinimizar = new System.Windows.Forms.PictureBox();
            this.BtnMaximizar = new System.Windows.Forms.PictureBox();
            this.BtnCerrar = new System.Windows.Forms.PictureBox();
            this.PanelContenedor = new System.Windows.Forms.Panel();
            this.PanelMenu.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.BtnMinimizar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BtnMaximizar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BtnCerrar)).BeginInit();
            this.SuspendLayout();
            // 
            // PanelMenu
            // 
            this.PanelMenu.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(28)))), ((int)(((byte)(38)))));
            this.PanelMenu.Controls.Add(this.btnInfoArea);
            this.PanelMenu.Controls.Add(this.Configuración);
            this.PanelMenu.Controls.Add(this.btnSalir);
            this.PanelMenu.Controls.Add(this.btnTipoArea);
            this.PanelMenu.Controls.Add(this.btnSubsistema);
            this.PanelMenu.Controls.Add(this.btnEdificio);
            this.PanelMenu.Controls.Add(this.pictureBox1);
            this.PanelMenu.Location = new System.Drawing.Point(-1, 31);
            this.PanelMenu.Name = "PanelMenu";
            this.PanelMenu.Size = new System.Drawing.Size(249, 509);
            this.PanelMenu.TabIndex = 0;
            // 
            // btnInfoArea
            // 
            this.btnInfoArea.FlatAppearance.BorderSize = 0;
            this.btnInfoArea.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.btnInfoArea.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.btnInfoArea.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnInfoArea.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnInfoArea.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnInfoArea.Location = new System.Drawing.Point(-1, 290);
            this.btnInfoArea.Name = "btnInfoArea";
            this.btnInfoArea.Size = new System.Drawing.Size(250, 45);
            this.btnInfoArea.TabIndex = 2;
            this.btnInfoArea.Text = "Información Area";
            this.btnInfoArea.UseVisualStyleBackColor = true;
            this.btnInfoArea.Click += new System.EventHandler(this.btnInfoArea_Click);
            // 
            // Configuración
            // 
            this.Configuración.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Configuración.FlatAppearance.BorderSize = 0;
            this.Configuración.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Configuración.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            this.Configuración.ForeColor = System.Drawing.SystemColors.HighlightText;
            this.Configuración.Image = ((System.Drawing.Image)(resources.GetObject("Configuración.Image")));
            this.Configuración.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.Configuración.Location = new System.Drawing.Point(3, 410);
            this.Configuración.Name = "Configuración";
            this.Configuración.Size = new System.Drawing.Size(243, 48);
            this.Configuración.TabIndex = 7;
            this.Configuración.Text = "Configuración";
            this.Configuración.UseVisualStyleBackColor = true;
            this.Configuración.Click += new System.EventHandler(this.button1_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnSalir.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.btnSalir.FlatAppearance.BorderSize = 0;
            this.btnSalir.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.btnSalir.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.btnSalir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSalir.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSalir.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnSalir.Image = ((System.Drawing.Image)(resources.GetObject("btnSalir.Image")));
            this.btnSalir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSalir.Location = new System.Drawing.Point(0, 464);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(249, 45);
            this.btnSalir.TabIndex = 5;
            this.btnSalir.Text = "Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // btnTipoArea
            // 
            this.btnTipoArea.FlatAppearance.BorderSize = 0;
            this.btnTipoArea.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.btnTipoArea.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.btnTipoArea.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTipoArea.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTipoArea.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnTipoArea.Location = new System.Drawing.Point(-1, 196);
            this.btnTipoArea.Name = "btnTipoArea";
            this.btnTipoArea.Size = new System.Drawing.Size(250, 45);
            this.btnTipoArea.TabIndex = 4;
            this.btnTipoArea.Text = "Tipo de Area";
            this.btnTipoArea.UseVisualStyleBackColor = true;
            this.btnTipoArea.Click += new System.EventHandler(this.btnTipoArea_Click);
            // 
            // btnSubsistema
            // 
            this.btnSubsistema.FlatAppearance.BorderSize = 0;
            this.btnSubsistema.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.btnSubsistema.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.btnSubsistema.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSubsistema.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSubsistema.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnSubsistema.Location = new System.Drawing.Point(-1, 246);
            this.btnSubsistema.Name = "btnSubsistema";
            this.btnSubsistema.Size = new System.Drawing.Size(250, 45);
            this.btnSubsistema.TabIndex = 3;
            this.btnSubsistema.Text = "Subsistemas";
            this.btnSubsistema.UseVisualStyleBackColor = true;
            this.btnSubsistema.Click += new System.EventHandler(this.btnSubsistema_Click);
            // 
            // btnEdificio
            // 
            this.btnEdificio.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(28)))), ((int)(((byte)(38)))));
            this.btnEdificio.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnEdificio.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnEdificio.FlatAppearance.BorderSize = 0;
            this.btnEdificio.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.btnEdificio.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.btnEdificio.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEdificio.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEdificio.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnEdificio.Location = new System.Drawing.Point(-1, 149);
            this.btnEdificio.Name = "btnEdificio";
            this.btnEdificio.Size = new System.Drawing.Size(250, 45);
            this.btnEdificio.TabIndex = 1;
            this.btnEdificio.Text = "Información Edificio";
            this.btnEdificio.UseVisualStyleBackColor = false;
            this.btnEdificio.Click += new System.EventHandler(this.btnEdificio_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(13, 7);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(215, 136);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(28)))), ((int)(((byte)(38)))));
            this.panel1.Controls.Add(this.BtnMinimizar);
            this.panel1.Controls.Add(this.BtnMaximizar);
            this.panel1.Controls.Add(this.BtnCerrar);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1075, 32);
            this.panel1.TabIndex = 1;
            this.panel1.TabStop = true;
            // 
            // BtnMinimizar
            // 
            this.BtnMinimizar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.BtnMinimizar.Image = ((System.Drawing.Image)(resources.GetObject("BtnMinimizar.Image")));
            this.BtnMinimizar.Location = new System.Drawing.Point(937, 2);
            this.BtnMinimizar.Name = "BtnMinimizar";
            this.BtnMinimizar.Size = new System.Drawing.Size(38, 28);
            this.BtnMinimizar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.BtnMinimizar.TabIndex = 9;
            this.BtnMinimizar.TabStop = false;
            this.BtnMinimizar.Click += new System.EventHandler(this.BtnMinimizar_Click);
            // 
            // BtnMaximizar
            // 
            this.BtnMaximizar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.BtnMaximizar.Image = ((System.Drawing.Image)(resources.GetObject("BtnMaximizar.Image")));
            this.BtnMaximizar.Location = new System.Drawing.Point(987, 2);
            this.BtnMaximizar.Name = "BtnMaximizar";
            this.BtnMaximizar.Size = new System.Drawing.Size(38, 28);
            this.BtnMaximizar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.BtnMaximizar.TabIndex = 8;
            this.BtnMaximizar.TabStop = false;
            this.BtnMaximizar.Click += new System.EventHandler(this.BtnMaximizar_Click);
            // 
            // BtnCerrar
            // 
            this.BtnCerrar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.BtnCerrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.BtnCerrar.Image = ((System.Drawing.Image)(resources.GetObject("BtnCerrar.Image")));
            this.BtnCerrar.Location = new System.Drawing.Point(1034, 6);
            this.BtnCerrar.Name = "BtnCerrar";
            this.BtnCerrar.Size = new System.Drawing.Size(20, 19);
            this.BtnCerrar.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.BtnCerrar.TabIndex = 7;
            this.BtnCerrar.TabStop = false;
            this.BtnCerrar.Click += new System.EventHandler(this.BtnCerrar_Click);
            // 
            // PanelContenedor
            // 
            this.PanelContenedor.Location = new System.Drawing.Point(245, 31);
            this.PanelContenedor.Name = "PanelContenedor";
            this.PanelContenedor.Size = new System.Drawing.Size(830, 497);
            this.PanelContenedor.TabIndex = 2;
            this.PanelContenedor.Paint += new System.Windows.Forms.PaintEventHandler(this.PanelContenedor_Paint);
            // 
            // Menu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1075, 540);
            this.Controls.Add(this.PanelContenedor);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.PanelMenu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Menu";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Menu";
            this.PanelMenu.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.BtnMinimizar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BtnMaximizar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BtnCerrar)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel PanelMenu;
        private System.Windows.Forms.Button btnTipoArea;
        private System.Windows.Forms.Button btnSubsistema;
        private System.Windows.Forms.Button btnInfoArea;
        private System.Windows.Forms.Button btnEdificio;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel PanelContenedor;
        private System.Windows.Forms.PictureBox BtnMinimizar;
        private System.Windows.Forms.PictureBox BtnMaximizar;
        private System.Windows.Forms.PictureBox BtnCerrar;
        private System.Windows.Forms.Button Configuración;
    }
}