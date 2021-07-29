using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LBISGE
{
    public partial class FormReport : Form
    {
        public FormReport()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form ReporteGeneralSubs = new Reporte();
            ReporteGeneralSubs.Show();
        }

        private void BtnReportEdificio_Click(object sender, EventArgs e)
        {
            Form ReporteGeneralEdificioSubs = new ReporteEdificio();
            ReporteGeneralEdificioSubs.Show();
        }
    }
}
