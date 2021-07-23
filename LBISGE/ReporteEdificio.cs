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

        private void Buscar_Click(object sender, EventArgs e)
        {

            
            // TODO: esta línea de código carga datos en la tabla 'ReportSelectEdificio.Subsistema' Puede moverla o quitarla según sea necesario.
            this.SubsistemaTableAdapter.FiltroEdificio(this.ReportSelectEdificio.Subsistema, label1.Text);
            reportViewer1.RefreshReport();
        }

        private void Reporte2_Click(object sender, EventArgs e)
        {
            this.SubsistemaTableAdapter.VerTodos(this.ReportSelectEdificio.Subsistema);
            reportViewer1.RefreshReport();
        }
    }
}
