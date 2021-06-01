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

            //TipoAreatxt.Text = DBretrieval.getAreaType(cbArea.Text);
        }

        private void txtConsumo_TextChanged(object sender, EventArgs e)
        {
            Calc_Consumo();
        }

        private void txtCantidad_TextChanged(object sender, EventArgs e)
        {
            Calc_Consumo();
        }

        private void txtCapacidad_TextChanged(object sender, EventArgs e)
        {
            Calc_Consumo();
        }

        private void txtHorasUso_TextChanged(object sender, EventArgs e)
        {
            Calc_Consumo();
        }

        private void cbArea_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbArea.Text != "")
            {
                TipoAreatxt.Text = DBretrieval.getAreaType(cbArea.Text);
            }
            else
            { }    
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            DBinsert i = new DBinsert();
            i.insertInformacionArea(txtDescripcion.Text, CantidadPersonas.Text, TipoAreatxt.Text, txtCantidad.Text, txtCapacidad.Text, txtHorasUso.Text, txtDias.Text, txtConsumo.Text, cbEdificio.SelectedValue.ToString(), cbArea.SelectedValue.ToString(), cbSubsistema.SelectedValue.ToString());
        }
    }
}
