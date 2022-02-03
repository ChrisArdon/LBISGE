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

        private void eQuest_Click(object sender, EventArgs e)
        {
            Form eQuest = new eQuest();
            eQuest.Show();
        }

        private void eQuestN2_Click(object sender, EventArgs e)
        {
            Form eQuestN2 = new eQuest_Nivel_2();
            eQuestN2.Show();
        }

        private void eQuestN3_Click(object sender, EventArgs e)
        {
            Form eQuestN2 = new eQuest_Nivel_3();
            eQuestN2.Show();
        }
    }
}
