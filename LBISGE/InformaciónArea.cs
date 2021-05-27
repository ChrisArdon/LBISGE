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

        }

        private void label7_Click(object sender, EventArgs e)
        {

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
        }
    }
}
