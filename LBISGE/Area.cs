using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;

namespace LBISGE
{
    public partial class Area : Form
    {
        DBretrieval r = new DBretrieval();
        public Area()
        {
            InitializeComponent();
        }

        private void btnMenu_Click(object sender, EventArgs e)
        {
            new Menu().Show();
            this.Hide();
        }

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }

        private void Area_Load(object sender, EventArgs e)
        {
            // Mensajes de descripción en cada uno de los botones
            toolTip1.SetToolTip(this.btnGuardar, "Guardar");
            toolTip1.SetToolTip(this.btnLimpiar, "Limpiar Campos");
            toolTip1.SetToolTip(this.btnEliminar, "Eliminar");
            toolTip1.SetToolTip(this.btnModificar, "Actualizar");
            //FillCombo();

            r.showArea(dgvArea, IDareaColumn, NombreAreaColumn, NombreEdificioColumn);
            r.getAreaList("st_getEdificioList", edificioCb, "NombreEdificio", "IDedificio");

            //label5.Text = this.edificioCb.GetItemText(this.edificioCb.SelectedItem);
            //label5.Text = this.edificioCb.SelectedItem.ToString();

           
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (IDareaTxt.Text == "") { IDareaErrorLbl.Visible = true; } else { IDareaErrorLbl.Visible = false; }
            if (nombreAreaTxt.Text == "") { nombreAreaErrorLbl.Visible = true; } else { nombreAreaErrorLbl.Visible = false; }
            if (edificioCb.Text == "") { edificioErrorLbl.Visible = true; } else { edificioErrorLbl.Visible = false; }

            if (IDareaErrorLbl.Visible || nombreAreaErrorLbl.Visible || edificioErrorLbl.Visible)
            {
                MainClass.ShowMSG("Campos con * son obligatorios", "stop", "Error");
            }
            else
            {
                DBinsert i = new DBinsert();
                //i.insertArea(IDareaTxt.Text, nombreAreaTxt.Text, selectIDfromCb());
                r.showArea(dgvArea, IDareaColumn, NombreAreaColumn, NombreEdificioColumn);
                //show gv
            }
        }

        /*private void FillCombo()
        {
            DBselect s = new DBselect();
            //Creating datatable to hold the edificios from datatable
            DataTable edificiosDT = s.selectEdificio();

            //Specify datasource for Edificio combobox
            edificioCb.DataSource = edificiosDT;

            //Specify Display Member and value member for combo
            edificioCb.DisplayMember = "NombreDeEdificio"; //Name of the column in the table edificio form SQL database
            edificioCb.ValueMember = "NombreDeEdificio";

        }*/

        private void label5_Click(object sender, EventArgs e)
        {

        }

       /* private string selectIDfromCb()
        {
            //string ID;
            try
            {
                string edificioname = this.edificioCb.GetItemText(this.edificioCb.SelectedItem);
                string sqlcmmnd = "SELECT ID_edificio FROM Edificios WHERE NombreDeEdificio ='" + edificioname + "'";
                SqlCommand cmds = new SqlCommand(sqlcmmnd, MainClass.con);

                MainClass.con.Open();
                cmds.ExecuteNonQuery();
                SqlDataReader reader = cmds.ExecuteReader();
                if (reader.Read())
                {
                    return reader.GetString(0);
                }
                MainClass.con.Close();
                
            }
            catch (Exception ex)
            {
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
            finally
            {
                MainClass.con.Close();
            }
            return null;
        }*/

        private void btnModificar_Click(object sender, EventArgs e)
        {
            //Validacion de los campos para que no queden vacios, usando el asterisco rojo
            if (IDareaTxt.Text == "") { IDareaErrorLbl.Visible = true; } else { IDareaErrorLbl.Visible = false; }
            if (nombreAreaTxt.Text == "") { nombreAreaErrorLbl.Visible = true; } else { nombreAreaErrorLbl.Visible = false; }
            if (edificioCb.Text == "") { edificioErrorLbl.Visible = true; } else { edificioErrorLbl.Visible = false; }

            if (IDareaErrorLbl.Visible || nombreAreaErrorLbl.Visible || edificioErrorLbl.Visible)
            {
                MainClass.ShowMSG("Campos con * son obligatorios", "stop", "Error");
            }
            else
            {
                DBupdate u = new DBupdate();
                //Falta...
            }
        }
    }
}
