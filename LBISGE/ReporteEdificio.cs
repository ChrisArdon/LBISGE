using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace LBISGE
{
    public partial class ReporteEdificio : Form
    {
        DBretrieval r = new DBretrieval();
        public ReporteEdificio()
        {
            InitializeComponent();
        }

        private void ReporteEdificio_Load(object sender, EventArgs e)
        {
            try
            {
                MainClass.con.Open();

                cbEdificio.Items.Clear();
                cbEdificio.DataSource = null;
                cbEdificio.Items.Insert(0, "Seleccionar...");

                SqlCommand cmd = new SqlCommand("Select*from Edificios", MainClass.con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cbEdificio.DataSource = dt;
                cbEdificio.DisplayMember = "NombreDeEdificio"; //nombre del edificio
                label1.DataBindings.Add(new Binding("Text", dt, "ID_edificio")); //ID del edificio
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }

            //this.reportViewer1.RefreshReport();
        }

        private void ReportEdificio_Click(object sender, EventArgs e)
        {

            this.Subsistema1TableAdapter.FiltroEdificio(this.LBISGE_DATADataSet.Subsistema1, label1.Text);
            this.reportViewer1.RefreshReport();
     

        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {

        }

        private void ReporteGeneral_Click(object sender, EventArgs e)
        {

            this.Subsistema1TableAdapter.VerTodos(this.LBISGE_DATADataSet.Subsistema1);
            this.reportViewer1.RefreshReport();
     
            
        }
    }
}
