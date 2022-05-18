namespace LBISGE
{
    partial class Reporte
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
            this.sp_ConsumoPorSubSBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.LBISGE_DATADataSet = new LBISGE.LBISGE_DATADataSet();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.sp_ConsumoPorSubSTableAdapter = new LBISGE.LBISGE_DATADataSetTableAdapters.sp_ConsumoPorSubSTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.sp_ConsumoPorSubSBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.LBISGE_DATADataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // sp_ConsumoPorSubSBindingSource
            // 
            this.sp_ConsumoPorSubSBindingSource.DataMember = "sp_ConsumoPorSubS";
            this.sp_ConsumoPorSubSBindingSource.DataSource = this.LBISGE_DATADataSet;
            // 
            // LBISGE_DATADataSet
            // 
            this.LBISGE_DATADataSet.DataSetName = "LBISGE_DATADataSet";
            this.LBISGE_DATADataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.sp_ConsumoPorSubSBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "LBISGE.ReportGeneralSubs.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size(953, 524);
            this.reportViewer1.TabIndex = 0;
            // 
            // sp_ConsumoPorSubSTableAdapter
            // 
            this.sp_ConsumoPorSubSTableAdapter.ClearBeforeFill = true;
            // 
            // Reporte
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(953, 524);
            this.Controls.Add(this.reportViewer1);
            this.Name = "Reporte";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Reporte";
            this.Load += new System.EventHandler(this.Reporte_Load);
            ((System.ComponentModel.ISupportInitialize)(this.sp_ConsumoPorSubSBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.LBISGE_DATADataSet)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource sp_ConsumoPorSubSBindingSource;
        private LBISGE_DATADataSet LBISGE_DATADataSet;
        private LBISGE_DATADataSetTableAdapters.sp_ConsumoPorSubSTableAdapter sp_ConsumoPorSubSTableAdapter;
    }
}