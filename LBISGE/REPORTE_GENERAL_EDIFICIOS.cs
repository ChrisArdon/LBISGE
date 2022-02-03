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
    public partial class REPORTE_GENERAL_EDIFICIOS : Form
    {
        public REPORTE_GENERAL_EDIFICIOS()
        {
            InitializeComponent();
        }

        private void REPORTE_GENERAL_EDIFICIOS_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'DATA_COMPLETADataSet.sp_ConsumoPorSubS' Puede moverla o quitarla según sea necesario.
            this.sp_ConsumoPorSubSTableAdapter.Fill(this.DATA_COMPLETADataSet.sp_ConsumoPorSubS);

            this.reportViewer1.RefreshReport();
        }
    }
}
