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
        string AreaID;
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

            r.showArea(dgvArea, IDareaColumn, NombreAreaColumn);
            //Double area;
            //area = Double.Parse(txt_AnchoArea.Text) * Double.Parse(txt_LargoArea.Text);
            //txt_AreaT.Text = area.ToString();
            //label5.Text = this.edificioCb.GetItemText(this.edificioCb.SelectedItem);
            //label5.Text = this.edificioCb.SelectedItem.ToString();

           
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (IDareaTxt.Text == "") { IDareaErrorLbl.Visible = true; } else { IDareaErrorLbl.Visible = false; }
            if (nombreAreaTxt.Text == "") { nombreAreaErrorLbl.Visible = true; } else { nombreAreaErrorLbl.Visible = false; }

            if (IDareaErrorLbl.Visible || nombreAreaErrorLbl.Visible)
            {
                MainClass.ShowMSG("Campos con * son obligatorios", "stop", "Error");
            }
            else
            {
                DBinsert i = new DBinsert();
                i.insertArea(IDareaTxt.Text, nombreAreaTxt.Text);
                r.showArea(dgvArea, IDareaColumn, NombreAreaColumn);
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

            if (IDareaErrorLbl.Visible || nombreAreaErrorLbl.Visible)
            {
                MainClass.ShowMSG("Campos con * son obligatorios", "stop", "Error");
            }
            else
            {
                DBupdate u = new DBupdate();
                u.updateArea(IDareaTxt.Text, nombreAreaTxt.Text);
                r.showArea(dgvArea, IDareaColumn, NombreAreaColumn);
            }
        }

        private void dgvArea_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex != -1)
            {
                DataGridViewRow row = dgvArea.Rows[e.RowIndex];
                AreaID = row.Cells["IDareaColumn"].Value.ToString();
                IDareaTxt.Text = row.Cells["IDareaColumn"].Value.ToString();
                nombreAreaTxt.Text = row.Cells["NombreAreaColumn"].Value.ToString();
                IDareaTxt.Enabled = false;
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if (textBox1.Text != "")
            {
                r.showArea(dgvArea, IDareaColumn, NombreAreaColumn, textBox1.Text);
            }
            else
            {
                r.showArea(dgvArea, IDareaColumn, NombreAreaColumn);
            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("Esta seguro de eliminar registro?", "...?", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                DBdelete d = new DBdelete();
                d.delete(AreaID, "pr_deleteArea", "@IDareaPr");
                r.showArea(dgvArea, IDareaColumn, NombreAreaColumn);
            }
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            IDareaTxt.Text = "";
            nombreAreaTxt.Text = "";
            IDareaTxt.Enabled = true;
        }

        private void txt_AreaT_TextChanged(object sender, EventArgs e)
        {
            txt_AreaT.Text = "2";
        }
    }
}
