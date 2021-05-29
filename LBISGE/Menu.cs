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
    public partial class Menu : Form
    {
        public Menu()
        {
            InitializeComponent();
        }


        private void AbrirFormInPanel(object FormHijo)
        {
            if (this.PanelContenedor.Controls.Count > 0)
                this.PanelContenedor.Controls.RemoveAt(0);
            Form fh = FormHijo as Form;
            fh.TopLevel = false;
            fh.Dock = DockStyle.Fill;
            this.PanelContenedor.Controls.Add(fh);
            this.PanelContenedor.Tag = fh;
            fh.Show();
        }

        private void btnTipoArea_Click(object sender, EventArgs e)
        {
            //Mostramos formulario de tipo de area
            AbrirFormInPanel(new Area());
            if (PanelMenu.Width == 173)
                PanelMenu.Width = 50;
        }

        private void btnSubsistema_Click(object sender, EventArgs e)
        {
            //Mostramos formulario de subsistema
            AbrirFormInPanel(new Subsistema());
            if (PanelMenu.Width == 173)
                PanelMenu.Width = 50;
        }

        private void btnInfoArea_Click(object sender, EventArgs e)
        {
            //Mostramos formulario Información Area en panel 
           
            AbrirFormInPanel(new InformaciónArea());
            if (PanelMenu.Width == 173)
                PanelMenu.Width = 50;
        }

        private void btnEdificio_Click(object sender, EventArgs e)
        {
            //Mostramos formulario Edificio Panel          
            AbrirFormInPanel(new Edificio());
            if (PanelMenu.Width == 173)
                PanelMenu.Width = 50;
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            //Salimos de la aplicación
            Application.Exit();
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            //Salir de Aplicación
            Application.Exit();
        }

        private void BtnMaximizar_Click(object sender, EventArgs e)
        {

        }

        private void BtnMinimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void btnResumen_Click(object sender, EventArgs e)
        {
            //Mostramos formulario Resumenes Panel          
            AbrirFormInPanel(new Resumenes());
            if (PanelMenu.Width == 173)
                PanelMenu.Width = 50;
        }

        private void PanelContenedor_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //Mostramos formulario Configuracion Panel          
            AbrirFormInPanel(new config());
            if (PanelMenu.Width == 173)
                PanelMenu.Width = 50;
            
        }
    }
}
