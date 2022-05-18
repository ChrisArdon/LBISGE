namespace LBISGE
{
    partial class eQuest_Nivel_2
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtNombreAreaSearch = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.BtnAgregar = new System.Windows.Forms.Button();
            this.dgv1 = new System.Windows.Forms.DataGridView();
            this.CheckDgv = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.dgvfinal = new System.Windows.Forms.DataGridView();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvfinal)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtNombreAreaSearch);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(24, 13);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(550, 46);
            this.groupBox1.TabIndex = 15;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Filtro de datos";
            // 
            // txtNombreAreaSearch
            // 
            this.txtNombreAreaSearch.Location = new System.Drawing.Point(130, 18);
            this.txtNombreAreaSearch.Name = "txtNombreAreaSearch";
            this.txtNombreAreaSearch.Size = new System.Drawing.Size(225, 20);
            this.txtNombreAreaSearch.TabIndex = 2;
            this.txtNombreAreaSearch.TextChanged += new System.EventHandler(this.txtNombreAreaSearch_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(37, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(87, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Nombre de Area:";
            // 
            // BtnAgregar
            // 
            this.BtnAgregar.Location = new System.Drawing.Point(624, 23);
            this.BtnAgregar.Name = "BtnAgregar";
            this.BtnAgregar.Size = new System.Drawing.Size(187, 35);
            this.BtnAgregar.TabIndex = 14;
            this.BtnAgregar.Text = "Agregar";
            this.BtnAgregar.UseVisualStyleBackColor = true;
            this.BtnAgregar.Click += new System.EventHandler(this.BtnAgregar_Click);
            // 
            // dgv1
            // 
            this.dgv1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.CheckDgv});
            this.dgv1.Location = new System.Drawing.Point(12, 80);
            this.dgv1.Name = "dgv1";
            this.dgv1.Size = new System.Drawing.Size(1289, 301);
            this.dgv1.TabIndex = 13;
            this.dgv1.ColumnHeaderMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgv1_ColumnHeaderMouseClick);
            // 
            // CheckDgv
            // 
            this.CheckDgv.HeaderText = "";
            this.CheckDgv.Name = "CheckDgv";
            this.CheckDgv.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.CheckDgv.Width = 20;
            // 
            // dgvfinal
            // 
            this.dgvfinal.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvfinal.Location = new System.Drawing.Point(12, 387);
            this.dgvfinal.Name = "dgvfinal";
            this.dgvfinal.Size = new System.Drawing.Size(1289, 296);
            this.dgvfinal.TabIndex = 12;
            // 
            // eQuest_Nivel_2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1313, 696);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.BtnAgregar);
            this.Controls.Add(this.dgv1);
            this.Controls.Add(this.dgvfinal);
            this.Name = "eQuest_Nivel_2";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "eQuest Nivel 2";
            this.Load += new System.EventHandler(this.eQuest_Nivel_2_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvfinal)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtNombreAreaSearch;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button BtnAgregar;
        private System.Windows.Forms.DataGridView dgv1;
        private System.Windows.Forms.DataGridViewCheckBoxColumn CheckDgv;
        private System.Windows.Forms.DataGridView dgvfinal;
    }
}