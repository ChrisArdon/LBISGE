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
            //Mostramos los datos en el datagridView
            r.showEdificios(dgvEdificio, ID_edificioGvColumn, NombreEdificioGvColumn);
        }

        //Creamos la función que limpiara los textbox, habilitara textbox de ID y boton guardar
        public void Limpiar()
        {
            txtID_Edificio.Text = "";
            txtNombreEdificio.Text = "";
            txtEdificioBusqueda.Text = "";
            btnGuardar.Visible = true;
            txtID_Edificio.Enabled = true;
            errorProvider1.Clear();

        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            
            //Validacion de los campos para que no queden vacios

            if (txtID_Edificio.Text == "" || txtNombreEdificio.Text == "")
            {
                errorProvider1.SetError(txtID_Edificio, "¡Rellenar Campo!");
                errorProvider1.SetError(txtNombreEdificio, "¡Rellenar Campo!");
            }
            else
            {
                try
                {
                    //Insertamos los datos
                    DBinsert i = new DBinsert();
                    i.insertEdificio(txtID_Edificio.Text, txtNombreEdificio.Text);
                    //Actualizamos datos en el datagrid
                    r.showEdificios(dgvEdificio, ID_edificioGvColumn, NombreEdificioGvColumn);
                    Limpiar();
                }
                catch (Exception ex)
                {  MessageBox.Show(ex.ToString()); }
            }
            
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
           
            if (txtID_Edificio.Text == "")
            { errorProvider1.SetError(txtID_Edificio, "¡Seleccione Edificio a Modificar!"); }
            else
            {
                try
                {
                    DBupdate u = new DBupdate();
                    //Actualizamos los datos
                    u.updateEdificio(txtID_Edificio.Text, txtNombreEdificio.Text);
                    //Mostramos el datagrid con los datos actualizados.
                    r.showEdificios(dgvEdificio, ID_edificioGvColumn, NombreEdificioGvColumn);
                    //Hacemos uso de la función limpiar para dejar los cambos vacíos.
                    Limpiar();
                    //Habilitamos el textbox que contiene el ID y el boton de guardar.
                    txtID_Edificio.Enabled = true;
                    btnGuardar.Visible = true;
                }
                catch (Exception ex)
                { MessageBox.Show(ex.ToString()); }
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
            Limpiar();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtID_Edificio.Text == "")
            { errorProvider1.SetError(txtID_Edificio, "¡Seleccione Edificio a Modificar!"); }
            else
            {
                try
                {
                    DBdelete d = new DBdelete();
                    //Eliminamos los datos
                    d.delete(EdificioID, "pr_deleteEdificio", "@ID_edificioPr");
                    //Mostramos el datagrid con los datos actualizados
                    r.showEdificios(dgvEdificio, ID_edificioGvColumn, NombreEdificioGvColumn);
                    //Hacemos uso de la función limpiar para dejar los cambos vacíos.
                    Limpiar();
                    //Habilitamos el textbox que contiene el ID y el boton de guardar
                    txtID_Edificio.Enabled = true;
                    btnGuardar.Visible = true;
                }
                catch (Exception ex)
                { MessageBox.Show(ex.ToString()); }
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

        private void txtID_Edificio_TextChanged(object sender, EventArgs e)
        {
            if (txtID_Edificio.Text.Trim() != "")
            { errorProvider1.SetError(txtID_Edificio, ""); }
        }

        private void txtNombreEdificio_TextChanged(object sender, EventArgs e)
        {
            if (txtNombreEdificio.Text.Trim() != "")
            { errorProvider1.SetError(txtNombreEdificio, ""); }
        }
    }
}
