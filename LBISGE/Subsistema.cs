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

        //Creamos la función que limpiara los textbox, habilitara textbox de ID y boton guardar
        public void Limpiar()
        {
            txtID_Subsistema.Text = "";
            txtSubsistema.Text = "";
            txtSubsistemaBusqueda.Text = "";
            btnGuardar.Visible = true;
            txtID_Subsistema.Enabled = true;
            MainClass.con.Close();
            errorProvider1.Clear();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (txtID_Subsistema.Text == "" || txtSubsistema.Text == "")
            {
                errorProvider1.SetError(txtID_Subsistema, "¡Rellenar campo!");
                errorProvider1.SetError(txtSubsistema, "¡Rellenar Campo!");
            }
            else
            {
                try
                {
                    //Insertamos los datos 
                    DBinsert i = new DBinsert();
                    i.insertSubsistema(txtID_Subsistema.Text, txtSubsistema.Text);
                    //Mostramos el datagrid con los datos actualizados
                    r.showSubsistema(dgvSubsistema, IDsubsistemaColumn, NombreSubsistemaColumn);
                    //Hacemos uso de la función limpiar para dejar los cambos vacíos.
                    Limpiar();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error" + ex.ToString(), "ERROR");
                    MainClass.con.Close();
                }
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
             if (txtID_Subsistema.Text == "")
            { errorProvider1.SetError(txtID_Subsistema, "¡Seleccione Subsistema a Modificar!"); }
            else
            {
                try
                {
                    //Actualizamos los datos
                    DBupdate u = new DBupdate();
                    u.updateSubsistema(txtID_Subsistema.Text, txtSubsistema.Text);
                    //Mostramos el datagrid con los datos actualizados
                    r.showSubsistema(dgvSubsistema, IDsubsistemaColumn, NombreSubsistemaColumn);
                    //Hacemos uso de la función limpiar para dejar los cambos vacíos.
                    Limpiar();
                    //Habilitamos el textbox que contiene el ID y el boton de guardar
                    txtID_Subsistema.Enabled = true;
                    btnGuardar.Visible = true;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error" + ex.ToString(), "ERROR");
                    MainClass.con.Close();
                }
            }
            
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtID_Subsistema.Text == "")
            { errorProvider1.SetError(txtID_Subsistema, "¡Seleccione Subsistema a Eliminar!");  }              
            else
            {
                try
                {
                    //Elimanos los datos
                    DBdelete d = new DBdelete();
                    d.delete(subsistemaID, "pr_deleteSubsistema", "@IDsubsistemaPr");
                    //Mostramos el datagrid con los datos actualizados
                    r.showSubsistema(dgvSubsistema, IDsubsistemaColumn, NombreSubsistemaColumn);
                    //Hacemos uso de la función limpiar para dejar los cambos vacíos.
                    Limpiar();
                    //Habilitamos el textbox que contiene el ID y el boton de guardar
                    txtID_Subsistema.Enabled = true;
                    btnGuardar.Visible = true;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error" + ex.ToString(), "ERROR");
                    MainClass.con.Close();
                }
            }
            
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            //Hacemos uso de la función limpiar para dejar los cambos vacíos.
            Limpiar();
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

        private void txtID_Subsistema_TextChanged(object sender, EventArgs e)
        {
            //Eliminamos errorProvider
            if (txtID_Subsistema.Text.Trim() != "")
            { errorProvider1.SetError(txtID_Subsistema, ""); }
        }

        private void txtSubsistema_TextChanged(object sender, EventArgs e)
        {
            //Eliminamos erroProvider
            if (txtSubsistema.Text.Trim() != "")
            { errorProvider1.SetError(txtSubsistema, ""); }
        }
    }
}
