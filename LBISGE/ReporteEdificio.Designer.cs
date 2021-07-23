namespace LBISGE
{
    partial class ReporteEdificio
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
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.SubsistemaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.ReportSelectEdificio = new LBISGE.ReportSelectEdificio();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.Reporte2 = new System.Windows.Forms.Button();
            this.label9 = new System.Windows.Forms.Label();
            this.Buscar = new System.Windows.Forms.Button();
            this.cbEdificio = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SubsistemaTableAdapter = new LBISGE.ReportSelectEdificioTableAdapters.SubsistemaTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.SubsistemaBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ReportSelectEdificio)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // SubsistemaBindingSource
            // 
            this.SubsistemaBindingSource.DataMember = "Subsistema";
            this.SubsistemaBindingSource.DataSource = this.ReportSelectEdificio;
            // 
            // ReportSelectEdificio
            // 
            this.ReportSelectEdificio.DataSetName = "ReportSelectEdificio";
            this.ReportSelectEdificio.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.SubsistemaBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "LBISGE.ReportEdificioSelect.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 91);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size(830, 418);
            this.reportViewer1.TabIndex = 0;
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.White;
            this.groupBox1.Controls.Add(this.Reporte2);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.Buscar);
            this.groupBox1.Controls.Add(this.cbEdificio);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(806, 73);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Seleccionar edificio del cual desea solicitar informacion";
            // 
            // Reporte2
            // 
            this.Reporte2.Location = new System.Drawing.Point(570, 23);
            this.Reporte2.Name = "Reporte2";
            this.Reporte2.Size = new System.Drawing.Size(203, 37);
            this.Reporte2.TabIndex = 25;
            this.Reporte2.Text = "Reporte General por subsitema";
            this.Reporte2.UseVisualStyleBackColor = true;
            this.Reporte2.Click += new System.EventHandler(this.Reporte2_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(67, 35);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(47, 13);
            this.label9.TabIndex = 22;
            this.label9.Text = "Edificio :";
            // 
            // Buscar
            // 
            this.Buscar.Location = new System.Drawing.Point(381, 23);
            this.Buscar.Name = "Buscar";
            this.Buscar.Size = new System.Drawing.Size(167, 37);
            this.Buscar.TabIndex = 24;
            this.Buscar.Text = "Generar reporte de edificio";
            this.Buscar.UseVisualStyleBackColor = true;
            this.Buscar.Click += new System.EventHandler(this.Buscar_Click);
            // 
            // cbEdificio
            // 
            this.cbEdificio.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
            this.cbEdificio.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbEdificio.FormattingEnabled = true;
            this.cbEdificio.Location = new System.Drawing.Point(150, 32);
            this.cbEdificio.Name = "cbEdificio";
            this.cbEdificio.Size = new System.Drawing.Size(205, 21);
            this.cbEdificio.TabIndex = 23;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(203, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 13);
            this.label1.TabIndex = 26;
            this.label1.Text = "label1";
            // 
            // SubsistemaTableAdapter
            // 
            this.SubsistemaTableAdapter.ClearBeforeFill = true;
            // 
            // ReporteEdificio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(830, 509);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.reportViewer1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "ReporteEdificio";
            this.Text = "ReporteEdificio";
            this.Load += new System.EventHandler(this.ReporteEdificio_Load);
            ((System.ComponentModel.ISupportInitialize)(this.SubsistemaBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ReportSelectEdificio)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button Buscar;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.BindingSource SubsistemaBindingSource;
        private ReportSelectEdificio ReportSelectEdificio;
        private ReportSelectEdificioTableAdapters.SubsistemaTableAdapter SubsistemaTableAdapter;
        private System.Windows.Forms.Button Reporte2;
        private System.Windows.Forms.ComboBox cbEdificio;
        private System.Windows.Forms.Label label1;
    }
}