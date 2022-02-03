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
    public partial class Reporte : Form
    {
        public Reporte()
        {
            InitializeComponent();
        }

        private void Reporte_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'PRUEBA_DATA_HSDataSet.sp_ConsumoPorSubS' Puede moverla o quitarla según sea necesario.
            this.sp_ConsumoPorSubSTableAdapter.Fill(this.PRUEBA_DATA_HSDataSet.sp_ConsumoPorSubS);

            this.reportViewer1.RefreshReport();
        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {

        }

        private void sp_ConsumoPorSubSBindingSource_CurrentChanged(object sender, EventArgs e)
        {

        }
    }
}
