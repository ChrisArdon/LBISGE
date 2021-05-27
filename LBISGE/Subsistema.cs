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
    public partial class Subsistema : Form
    {
        DBretrieval r = new DBretrieval();
        string subsistemaID;
        public Subsistema()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void btnMenu_Click(object sender, EventArgs e)
        {
            new Menu().Show();
            this.Hide();
        }

        private void Subsistema_Load(object sender, EventArgs e)
        {
            // Mensajes de descripción en cada uno de los botones
            toolTip1.SetToolTip(this.btnGuardar, "Guardar");
            toolTip1.SetToolTip(this.btnLimpiar, "Limpiar Campos");
            toolTip1.SetToolTip(this.btnEliminar, "Eliminar");
            toolTip1.SetToolTip(this.btnModificar, "Actualizar");

            r.showSubsistema(dgvSubsistema, IDsubsistemaColumn, NombreSubsistemaColumn);
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (txtID_Subsistema.Text == "") { IDsubsistemaErrorLbl.Visible = true; } else { IDsubsistemaErrorLbl.Visible = false; }
            if (txtID_Subsistema.Text == "") { nombreSubsistemaErrorLbl.Visible = true; } else { nombreSubsistemaErrorLbl.Visible = false; }

            if (IDsubsistemaErrorLbl.Visible || nombreSubsistemaErrorLbl.Visible)
            {
                MainClass.ShowMSG("Campos con * son obligatorios", "stop", "Error");
            }
            else
            {
                DBinsert i = new DBinsert();
                i.insertSubsistema(txtID_Subsistema.Text, txtSubsistema.Text);
                r.showSubsistema(dgvSubsistema, IDsubsistemaColumn, NombreSubsistemaColumn);
            }
        }

        private void dgvSubsistema_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex != -1)
            {
                DataGridViewRow row = dgvSubsistema.Rows[e.RowIndex];
                subsistemaID = row.Cells["IDsubsistemaColumn"].Value.ToString();
                txtID_Subsistema.Text = row.Cells["IDsubsistemaColumn"].Value.ToString();
                txtSubsistema.Text = row.Cells["NombreSubsistemaColumn"].Value.ToString();
                txtID_Subsistema.Enabled = false;
            }
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtID_Subsistema.Text == "") { IDsubsistemaErrorLbl.Visible = true; } else { IDsubsistemaErrorLbl.Visible = false; }
            if (txtID_Subsistema.Text == "") { nombreSubsistemaErrorLbl.Visible = true; } else { nombreSubsistemaErrorLbl.Visible = false; }

            if (IDsubsistemaErrorLbl.Visible || nombreSubsistemaErrorLbl.Visible)
            {
                MainClass.ShowMSG("Campos con * son obligatorios", "stop", "Error");
            }
            else
            {
                DBupdate u = new DBupdate();
                u.updateSubsistema(txtID_Subsistema.Text, txtSubsistema.Text);
                r.showSubsistema(dgvSubsistema, IDsubsistemaColumn, NombreSubsistemaColumn);
            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show("Esta seguro de eliminar registro?", "...?", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                DBdelete d = new DBdelete();
                d.delete(subsistemaID, "pr_deleteSubsistema", "@IDsubsistemaPr");
                r.showSubsistema(dgvSubsistema, IDsubsistemaColumn, NombreSubsistemaColumn);
            }
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtID_Subsistema.Text = "";
            txtSubsistema.Text = "";
            txtID_Subsistema.Enabled = true;
        }

        private void txtSubsistemaBusqueda_TextChanged(object sender, EventArgs e)
        {
            if (txtSubsistemaBusqueda.Text != "")
            {
                r.showSubsistema(dgvSubsistema, IDsubsistemaColumn, NombreSubsistemaColumn, txtSubsistemaBusqueda.Text);
            }
            else
            {
                r.showSubsistema(dgvSubsistema, IDsubsistemaColumn, NombreSubsistemaColumn);
            }
        }
    }
}
