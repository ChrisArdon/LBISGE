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
                //show gv
            }
        }
    }
}
