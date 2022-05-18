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
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource2 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label9 = new System.Windows.Forms.Label();
            this.ReportEdificio = new System.Windows.Forms.Button();
            this.cbEdificio = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.LBISGE_DATADataSet = new LBISGE.LBISGE_DATADataSet();
            this.Subsistema1BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.Subsistema1TableAdapter = new LBISGE.LBISGE_DATADataSetTableAdapters.Subsistema1TableAdapter();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.LBISGE_DATADataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Subsistema1BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.White;
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.ReportEdificio);
            this.groupBox1.Controls.Add(this.cbEdificio);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.groupBox1.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(0, 0);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1276, 73);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Seleccionar edificio del cual desea solicitar información";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(18, 35);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(57, 17);
            this.label9.TabIndex = 22;
            this.label9.Text = "Edificio :";
            // 
            // ReportEdificio
            // 
            this.ReportEdificio.Location = new System.Drawing.Point(332, 23);
            this.ReportEdificio.Name = "ReportEdificio";
            this.ReportEdificio.Size = new System.Drawing.Size(231, 37);
            this.ReportEdificio.TabIndex = 24;
            this.ReportEdificio.Text = "Generar reporte de edificio";
            this.ReportEdificio.UseVisualStyleBackColor = true;
            this.ReportEdificio.Click += new System.EventHandler(this.ReportEdificio_Click);
            // 
            // cbEdificio
            // 
            this.cbEdificio.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
            this.cbEdificio.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbEdificio.FormattingEnabled = true;
            this.cbEdificio.Location = new System.Drawing.Point(101, 32);
            this.cbEdificio.Name = "cbEdificio";
            this.cbEdificio.Size = new System.Drawing.Size(205, 25);
            this.cbEdificio.TabIndex = 23;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(154, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(45, 17);
            this.label1.TabIndex = 26;
            this.label1.Text = "label1";
            // 
            // reportViewer1
            // 
            reportDataSource2.Name = "DataSet1";
            reportDataSource2.Value = this.Subsistema1BindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource2);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "LBISGE.ReporteEdificioSelect.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 75);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size(1276, 485);
            this.reportViewer1.TabIndex = 3;
            this.reportViewer1.Load += new System.EventHandler(this.reportViewer1_Load);
            // 
            // LBISGE_DATADataSet
            // 
            this.LBISGE_DATADataSet.DataSetName = "LBISGE_DATADataSet";
            this.LBISGE_DATADataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // Subsistema1BindingSource
            // 
            this.Subsistema1BindingSource.DataMember = "Subsistema1";
            this.Subsistema1BindingSource.DataSource = this.LBISGE_DATADataSet;
            // 
            // Subsistema1TableAdapter
            // 
            this.Subsistema1TableAdapter.ClearBeforeFill = true;
            // 
            // ReporteEdificio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1276, 561);
            this.Controls.Add(this.reportViewer1);
            this.Controls.Add(this.groupBox1);
            this.Name = "ReporteEdificio";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ReporteEdificio";
            this.Load += new System.EventHandler(this.ReporteEdificio_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.LBISGE_DATADataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Subsistema1BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button ReportEdificio;
        private System.Windows.Forms.ComboBox cbEdificio;
        private System.Windows.Forms.Label label1;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource Subsistema1BindingSource;
        private LBISGE_DATADataSet LBISGE_DATADataSet;
        private LBISGE_DATADataSetTableAdapters.Subsistema1TableAdapter Subsistema1TableAdapter;
    }
}