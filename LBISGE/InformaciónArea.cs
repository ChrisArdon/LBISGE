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
    public partial class InformaciónArea : Form
    {
        DBretrieval r = new DBretrieval();
        string Item;
        public InformaciónArea()
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

        private void textBox4_TextChanged(object sender, EventArgs e)
        {
            Calc_Consumo();
            //Eliminamos errorProvider
            if (txtDias.Text.Trim() != "")
            { errorProvider1.SetError(txtDias, ""); }
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }
        public void Calc_Consumo()
        {
            if (txtCantidad.Text == "" || txtCapacidad.Text == "" || txtHorasUso.Text == "" || txtDias.Text == "")
            { }
            else
            {
                Double Consumo, cantidad, capacidad, horas, dias;
                cantidad = Convert.ToDouble(txtCantidad.Text);
                capacidad = Convert.ToDouble(txtCapacidad.Text);
                horas = Convert.ToDouble(txtHorasUso.Text);
                dias = Convert.ToDouble(txtDias.Text);
                //Realizamos el calculo del consumo
                Consumo = (cantidad * capacidad * horas * dias) / 1000;
                txtConsumo.Text = Consumo.ToString();
            }
        }
        private void InformaciónArea_Load(object sender, EventArgs e)
        {
            // Mensajes de descripción en cada uno de los botones
            toolTip1.SetToolTip(this.btnGuardar, "Guardar");
            toolTip1.SetToolTip(this.btnLimpiar, "Limpiar Campos");
            toolTip1.SetToolTip(this.btnEliminar, "Eliminar");
            toolTip1.SetToolTip(this.btnModificar, "Actualizar");

            r.getEdificioList("st_getEdificioList", cbEdificio, "NombreEdificio", "IDedificio");
            r.getAreaList("st_getAreaList", cbArea, "NombreArea", "IDarea");
            r.getSubsistemaList("st_getSubsistemaList", cbSubsistema, "NombreSubsistema", "IDsubsistema");

            Limpiar();

            r.showInformacionArea(dgvInformacionArea, EdificioColumn, AreaColumn, TipoAreaColumn, CantidadPersonasColumn, SubsistemaColumn, ItemColum, DescripcionColumn, CantidadColumn,
                CapacidadColumn, HorasColumn, DiasColumn, ConsumoColumn, IDedificioColumn, IDareaColumn, IDsubsistemaColumn);


            //TipoAreatxt.Text = DBretrieval.getAreaType(cbArea.Text);
        }

        private void txtConsumo_TextChanged(object sender, EventArgs e)
        {
            Calc_Consumo();
        }

        private void txtCantidad_TextChanged(object sender, EventArgs e)
        {
            Calc_Consumo();
            //Eliminamos errorProvider
            if (txtCantidad.Text.Trim() != "")
            { errorProvider1.SetError(txtCantidad, ""); }
        }

        private void txtCapacidad_TextChanged(object sender, EventArgs e)
        {
            Calc_Consumo();
            //Eliminamos errorProvider
            if (txtCapacidad.Text.Trim() != "")
            { errorProvider1.SetError(txtCapacidad, ""); }
        }

        private void txtHorasUso_TextChanged(object sender, EventArgs e)
        {
            Calc_Consumo();
            //Eliminamos errorProvider
            if (txtHorasUso.Text.Trim() != "")
            { errorProvider1.SetError(txtHorasUso, ""); }
        }

        private void cbArea_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbArea.Text != "")
            {
                TipoAreatxt.Text = DBretrieval.getAreaType(cbArea.Text);
                CantidadPersonas.Text = DBretrieval.getAreaType1(cbArea.Text);
            }
            else
            { }    
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (cbEdificio.Text == "" || cbArea.Text == "" ||  cbSubsistema.Text == "" || txtDescripcion.Text == "" || txtCantidad.Text == "" || txtCapacidad.Text == "" || txtHorasUso.Text == "" || txtDias.Text == "")
            {
                //Validación de campos
                errorProvider1.SetError(cbEdificio, "¡Rellenar Campo!");
                errorProvider1.SetError(cbArea, "¡Rellenar Campo!");
                errorProvider1.SetError(cbSubsistema, "¡Rellenar Campo!");
                errorProvider1.SetError(txtDescripcion, "¡Rellenar Campo!");
                errorProvider1.SetError(txtCantidad, "¡Rellenar Campo!");
                errorProvider1.SetError(txtCapacidad, "¡Rellenar Campo!");
                errorProvider1.SetError(txtHorasUso, "¡Rellenar Campo!");
                errorProvider1.SetError(txtDias, "¡Rellenar Campo!");
                
            }
            else
            {

                DBinsert i = new DBinsert();
                i.insertInformacionArea(txtDescripcion.Text, CantidadPersonas.Text, TipoAreatxt.Text, txtCantidad.Text, txtCapacidad.Text, txtHorasUso.Text, txtDias.Text, txtConsumo.Text, cbEdificio.SelectedValue.ToString(), cbArea.SelectedValue.ToString(), cbSubsistema.SelectedValue.ToString());
                r.showInformacionArea(dgvInformacionArea, EdificioColumn, AreaColumn, TipoAreaColumn, CantidadPersonasColumn, SubsistemaColumn, ItemColum, DescripcionColumn, CantidadColumn,
                    CapacidadColumn, HorasColumn, DiasColumn, ConsumoColumn, IDedificioColumn, IDareaColumn, IDsubsistemaColumn);
                Limpiar();
            }
        }

        private void dgvInformacionArea_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex != -1)
            {
                DataGridViewRow row = dgvInformacionArea.Rows[e.RowIndex];
                Item = row.Cells["ItemColum"].Value.ToString();
                cbEdificio.SelectedValue = row.Cells["IDedificioColumn"].Value.ToString();
                cbArea.SelectedValue = row.Cells["IDareaColumn"].Value.ToString();
                TipoAreatxt.Text = row.Cells["TipoAreaColumn"].Value.ToString();
                CantidadPersonas.Text = row.Cells["CantidadPersonasColumn"].Value.ToString();
                cbSubsistema.SelectedValue = row.Cells["IDsubsistemaColumn"].Value.ToString();
                txtID_Area.Text = row.Cells["ItemColum"].Value.ToString();
                txtDescripcion.Text = row.Cells["DescripcionColumn"].Value.ToString();
                txtCantidad.Text = row.Cells["CantidadColumn"].Value.ToString();
                txtCapacidad.Text = row.Cells["CapacidadColumn"].Value.ToString();
                txtHorasUso.Text = row.Cells["HorasColumn"].Value.ToString();
                txtDias.Text = row.Cells["DiasColumn"].Value.ToString();
                txtConsumo.Text = row.Cells["ConsumoColumn"].Value.ToString();
                btnGuardar.Visible = false;
            }
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            if (txtID_Area.Text == "")
            { errorProvider1.SetError(txtID_Area, "¡Seleccione Area a Modificar!"); }
            else
            {
                try
                {
                    DialogResult dr = MessageBox.Show("Esta seguro que quiere modificiar el registro?", "Modificar", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (dr == DialogResult.Yes)
                    {
                        DBupdate u = new DBupdate();
                        u.updateInformacionArea(Item, txtDescripcion.Text, CantidadPersonas.Text, TipoAreatxt.Text, txtCantidad.Text, txtCapacidad.Text, txtHorasUso.Text, txtDias.Text, txtConsumo.Text,
                            cbEdificio.SelectedValue.ToString(), cbArea.SelectedValue.ToString(), cbSubsistema.SelectedValue.ToString());
                        r.showInformacionArea(dgvInformacionArea, EdificioColumn, AreaColumn, TipoAreaColumn, CantidadPersonasColumn, SubsistemaColumn, ItemColum, DescripcionColumn, CantidadColumn,
                            CapacidadColumn, HorasColumn, DiasColumn, ConsumoColumn, IDedificioColumn, IDareaColumn, IDsubsistemaColumn);
                        Limpiar();
                    }
                }
                catch (Exception ex)
                { MessageBox.Show(ex.ToString()); }

            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtID_Area.Text == "")
            { errorProvider1.SetError(txtID_Area, "¡Seleccione Area a Eliminar!"); }
            else
            {
                try
                {
            DialogResult dr = MessageBox.Show("Esta seguro que quiere ELIMINAR el registro?", "Modificar", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                DBdelete d = new DBdelete();
                d.delete(Item, "pr_deleteInformacionArea", "@Item");
                r.showInformacionArea(dgvInformacionArea, EdificioColumn, AreaColumn, TipoAreaColumn, CantidadPersonasColumn, SubsistemaColumn, ItemColum, DescripcionColumn, CantidadColumn,
                    CapacidadColumn, HorasColumn, DiasColumn, ConsumoColumn, IDedificioColumn, IDareaColumn, IDsubsistemaColumn);

                Limpiar();
            }
                }
                catch (Exception ex)
                { MessageBox.Show(ex.ToString()); }
            }
        }

        public void Limpiar()
        {
            cbEdificio.SelectedIndex = -1;
            cbArea.SelectedIndex = -1;
            cbSubsistema.SelectedIndex = -1;
            TipoAreatxt.Text = "";
            CantidadPersonas.Text = "";
            txtID_Area.Text = "";
            txtDescripcion.Text = "";
            txtCantidad.Text = "";
            txtCapacidad.Text = "";
            txtHorasUso.Text = "";
            txtDias.Text = "";
            txtConsumo.Text = "";
            btnGuardar.Visible = true;
            errorProvider1.Clear();
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void txtEdificioBusqueda_TextChanged(object sender, EventArgs e)
        {
            if (txtEdificioBusqueda.Text != "")
            {
                r.showInformacionArea(dgvInformacionArea, EdificioColumn, AreaColumn, TipoAreaColumn, CantidadPersonasColumn, SubsistemaColumn, ItemColum, DescripcionColumn, CantidadColumn,
                    CapacidadColumn, HorasColumn, DiasColumn, ConsumoColumn, IDedificioColumn, IDareaColumn, IDsubsistemaColumn, txtEdificioBusqueda.Text);
            }
            else
            {
                r.showInformacionArea(dgvInformacionArea, EdificioColumn, AreaColumn, TipoAreaColumn, CantidadPersonasColumn, SubsistemaColumn, ItemColum, DescripcionColumn, CantidadColumn,
                    CapacidadColumn, HorasColumn, DiasColumn, ConsumoColumn, IDedificioColumn, IDareaColumn, IDsubsistemaColumn);
            }
        }

        private void cbEdificio_TextChanged(object sender, EventArgs e)
        {
            //Eliminamos errorProvider
            if (cbEdificio.Text.Trim() != "")
            { errorProvider1.SetError(cbEdificio, ""); }
        }

        private void cbArea_TextChanged(object sender, EventArgs e)
        {
            //Eliminamos errorProvider
            if (cbArea.Text.Trim() != "")
            { errorProvider1.SetError(cbArea, ""); }
        }

        private void cbSubsistema_TextChanged(object sender, EventArgs e)
        {
            //Eliminamos errorProvider
            if (cbSubsistema.Text.Trim() != "")
            { errorProvider1.SetError(cbSubsistema, ""); }
        }

        private void txtDescripcion_TextChanged(object sender, EventArgs e)
        {
            //Eliminamos errorProvider
            if (txtDescripcion.Text.Trim() != "")
            { errorProvider1.SetError(txtDescripcion, ""); }
        }

        private void txtCantidad_KeyPress(object sender, KeyPressEventArgs e)
        {
            //Validación de campos para que solo acepte numero y no letras
            if (char.IsDigit(e.KeyChar))
            { e.Handled = false; }
            else if (char.IsControl(e.KeyChar))
            { e.Handled = false; }
            else if (char.IsPunctuation(e.KeyChar))
            { e.Handled = false; }
            else
            {
                e.Handled = true;
                MessageBox.Show("Introducir solo numero", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtCapacidad_KeyPress(object sender, KeyPressEventArgs e)
        {
            //Validación de campos para que solo acepte numero y no letras
            if (char.IsDigit(e.KeyChar))
            { e.Handled = false; }
            else if (char.IsControl(e.KeyChar))
            { e.Handled = false; }
            else if (char.IsPunctuation(e.KeyChar))
            { e.Handled = false; }
            else
            {
                e.Handled = true;
                MessageBox.Show("Introducir solo numero", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtHorasUso_KeyPress(object sender, KeyPressEventArgs e)
        {
            //Validación de campos para que solo acepte numero y no letras
            if (char.IsDigit(e.KeyChar))
            { e.Handled = false; }
            else if (char.IsControl(e.KeyChar))
            { e.Handled = false; }
            else if (char.IsPunctuation(e.KeyChar))
            { e.Handled = false; }
            else
            {
                e.Handled = true;
                MessageBox.Show("Introducir solo numero", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtDias_KeyPress(object sender, KeyPressEventArgs e)
        {
            //Validación de campos para que solo acepte numero y no letras
            if (char.IsDigit(e.KeyChar))
            { e.Handled = false; }
            else if (char.IsControl(e.KeyChar))
            { e.Handled = false; }
            else if (char.IsPunctuation(e.KeyChar))
            { e.Handled = false; }
            else
            {
                e.Handled = true;
                MessageBox.Show("Introducir solo numero", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void dgvInformacionArea_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
