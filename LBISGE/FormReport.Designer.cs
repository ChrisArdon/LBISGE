namespace LBISGE
{
    partial class FormReport
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
            this.BtnReporteGeneralSubs = new System.Windows.Forms.Button();
            this.BtnReportEdificio = new System.Windows.Forms.Button();
            this.eQuest = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // BtnReporteGeneralSubs
            // 
            this.BtnReporteGeneralSubs.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(28)))), ((int)(((byte)(38)))));
            this.BtnReporteGeneralSubs.FlatAppearance.BorderSize = 0;
            this.BtnReporteGeneralSubs.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.BtnReporteGeneralSubs.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.BtnReporteGeneralSubs.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnReporteGeneralSubs.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.BtnReporteGeneralSubs.ForeColor = System.Drawing.Color.White;
            this.BtnReporteGeneralSubs.Location = new System.Drawing.Point(42, 23);
            this.BtnReporteGeneralSubs.Name = "BtnReporteGeneralSubs";
            this.BtnReporteGeneralSubs.Size = new System.Drawing.Size(224, 51);
            this.BtnReporteGeneralSubs.TabIndex = 0;
            this.BtnReporteGeneralSubs.Text = "Reporte General por Subsitema";
            this.BtnReporteGeneralSubs.UseVisualStyleBackColor = false;
            this.BtnReporteGeneralSubs.Click += new System.EventHandler(this.button1_Click);
            // 
            // BtnReportEdificio
            // 
            this.BtnReportEdificio.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(28)))), ((int)(((byte)(38)))));
            this.BtnReportEdificio.FlatAppearance.BorderSize = 0;
            this.BtnReportEdificio.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.BtnReportEdificio.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.BtnReportEdificio.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnReportEdificio.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.BtnReportEdificio.ForeColor = System.Drawing.Color.White;
            this.BtnReportEdificio.Location = new System.Drawing.Point(289, 23);
            this.BtnReportEdificio.Name = "BtnReportEdificio";
            this.BtnReportEdificio.Size = new System.Drawing.Size(235, 51);
            this.BtnReportEdificio.TabIndex = 1;
            this.BtnReportEdificio.Text = "Reporte General de Subsitema por Edificio";
            this.BtnReportEdificio.UseVisualStyleBackColor = false;
            this.BtnReportEdificio.Click += new System.EventHandler(this.BtnReportEdificio_Click);
            // 
            // eQuest
            // 
            this.eQuest.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(1)))), ((int)(((byte)(28)))), ((int)(((byte)(38)))));
            this.eQuest.FlatAppearance.BorderSize = 0;
            this.eQuest.FlatAppearance.MouseDownBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.eQuest.FlatAppearance.MouseOverBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(2)))), ((int)(((byte)(73)))), ((int)(((byte)(89)))));
            this.eQuest.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.eQuest.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.eQuest.ForeColor = System.Drawing.Color.White;
            this.eQuest.Location = new System.Drawing.Point(570, 23);
            this.eQuest.Name = "eQuest";
            this.eQuest.Size = new System.Drawing.Size(213, 51);
            this.eQuest.TabIndex = 2;
            this.eQuest.Text = "eQuest";
            this.eQuest.UseVisualStyleBackColor = false;
            // 
            // FormReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(830, 650);
            this.Controls.Add(this.eQuest);
            this.Controls.Add(this.BtnReportEdificio);
            this.Controls.Add(this.BtnReporteGeneralSubs);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FormReport";
            this.Text = "FormReport";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button BtnReporteGeneralSubs;
        private System.Windows.Forms.Button BtnReportEdificio;
        private System.Windows.Forms.Button eQuest;
    }
}