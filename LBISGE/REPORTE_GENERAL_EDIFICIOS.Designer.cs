namespace LBISGE
{
    partial class REPORTE_GENERAL_EDIFICIOS
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
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.DATA_COMPLETADataSet = new LBISGE.DATA_COMPLETADataSet();
            this.sp_ConsumoPorSubSBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.sp_ConsumoPorSubSTableAdapter = new LBISGE.DATA_COMPLETADataSetTableAdapters.sp_ConsumoPorSubSTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.DATA_COMPLETADataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sp_ConsumoPorSubSBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.sp_ConsumoPorSubSBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "LBISGE.ReportGeneral_2.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size(1005, 476);
            this.reportViewer1.TabIndex = 0;
            // 
            // DATA_COMPLETADataSet
            // 
            this.DATA_COMPLETADataSet.DataSetName = "DATA_COMPLETADataSet";
            this.DATA_COMPLETADataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // sp_ConsumoPorSubSBindingSource
            // 
            this.sp_ConsumoPorSubSBindingSource.DataMember = "sp_ConsumoPorSubS";
            this.sp_ConsumoPorSubSBindingSource.DataSource = this.DATA_COMPLETADataSet;
            // 
            // sp_ConsumoPorSubSTableAdapter
            // 
            this.sp_ConsumoPorSubSTableAdapter.ClearBeforeFill = true;
            // 
            // REPORTE_GENERAL_EDIFICIOS
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1005, 476);
            this.Controls.Add(this.reportViewer1);
            this.Name = "REPORTE_GENERAL_EDIFICIOS";
            this.Text = "REPORTE_GENERAL_EDIFICIOS";
            this.Load += new System.EventHandler(this.REPORTE_GENERAL_EDIFICIOS_Load);
            ((System.ComponentModel.ISupportInitialize)(this.DATA_COMPLETADataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sp_ConsumoPorSubSBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource sp_ConsumoPorSubSBindingSource;
        private DATA_COMPLETADataSet DATA_COMPLETADataSet;
        private DATA_COMPLETADataSetTableAdapters.sp_ConsumoPorSubSTableAdapter sp_ConsumoPorSubSTableAdapter;
    }
}