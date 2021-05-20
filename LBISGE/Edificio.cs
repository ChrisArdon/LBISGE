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
    public partial class Edificio : Form
    {
        
        DBretrieval r = new DBretrieval();
        string EdificioID;
        public Edificio()
        {
            InitializeComponent();
        }

        private void btnMenu_Click(object sender, EventArgs e)
        {
            new Menu().Show();
            this.Hide();
        }

        private void Modificar_Enter(object sender, EventArgs e)
        {

        }

        private void dgvEdificio_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void Edificio_Load(object sender, EventArgs e)
        {
            // Mensajes de descripción en cada uno de los botones
            toolTip1.SetToolTip(this.btnGuardar, "Guardar");
            toolTip1.SetToolTip(this.btnLimpiar, "Limpiar Campos");
            toolTip1.SetToolTip(this.btnEliminar, "Eliminar");
            toolTip1.SetToolTip(this.btnModificar, "Actualizar");

            r.showEdificios(dgvEdificio, ID_edificioGvColumn, NombreEdificioGvColumn);
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            
            //Validacion de los campos para que no queden vacios, usando el asterisco rojo
            if (txtID_Edificio.Text == "") { IDedfErrorLbl.Visible = true; } else { IDedfErrorLbl.Visible = false; }
            if (txtNombreEdificio.Text == "") { nombreEdfErrorLbl.Visible = true; } else { nombreEdfErrorLbl.Visible = false; }

            if (IDedfErrorLbl.Visible || nombreEdfErrorLbl.Visible)
            {
                MainClass.ShowMSG("Campos con * son obligatorios", "Stop", "Error");
            }
            else
            {
                DBinsert i = new DBinsert();
                i.insertEdificio(txtID_Edificio.Text, txtNombreEdificio.Text);
                r.showEdificios(dgvEdificio, ID_edificioGvColumn, NombreEdificioGvColumn);
            }
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            
            //Validacion de los campos para que no queden vacios, usando el asterisco rojo
            if (txtID_Edificio.Text == "") { IDedfErrorLbl.Visible = true; } else { IDedfErrorLbl.Visible = false; }
            if (txtNombreEdificio.Text == "") { nombreEdfErrorLbl.Visible = true; } else { nombreEdfErrorLbl.Visible = false; }


            if (IDedfErrorLbl.Visible || nombreEdfErrorLbl.Visible)
            {
                MainClass.ShowMSG("Campos con * son obligatorios", "Stop", "Error");
            }
            else
            {
                DBupdate u = new DBupdate();
                u.updateEdificio(txtID_Edificio.Text, txtNombreEdificio.Text);
                r.showEdificios(dgvEdificio, ID_edificioGvColumn, NombreEdificioGvColumn);
                //Continues
            }
        }

        private void txtEdificioBusqueda_TextChanged(object sender, EventArgs e)
        {
            if (txtEdificioBusqueda.Text != "")
            {
                r.showEdificios(dgvEdificio, ID_edificioGvColumn, NombreEdificioGvColumn, txtEdificioBusqueda.Text);
            }
            else
            {
                r.showEdificios(dgvEdificio, ID_edificioGvColumn, NombreEdificioGvColumn);
            }
           
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtID_Edificio.Text = "";
            txtNombreEdificio.Text = "";
            txtEdificioBusqueda.Text = "";
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("Esta seguro de eliminar registro?", "...?", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                DBdelete d = new DBdelete();
                d.delete(EdificioID, "pr_deleteEdificio", "@ID_edificioPr");
                r.showEdificios(dgvEdificio, ID_edificioGvColumn, NombreEdificioGvColumn);
            }

        }

        private void dgvEdificio_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex != -1)
            {
                DataGridViewRow row = dgvEdificio.Rows[e.RowIndex];
                EdificioID = row.Cells["ID_edificioGvColumn"].Value.ToString();
                txtID_Edificio.Text = row.Cells["ID_edificioGvColumn"].Value.ToString();
                txtNombreEdificio.Text = row.Cells["NombreEdificioGvColumn"].Value.ToString();
                txtID_Edificio.Enabled = false;
            }
            
        }
    }
}
