using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace LBISGE
{
    public partial class Area : Form
    {
        DBretrieval r = new DBretrieval();
        string AreaID;
        public Area()
        { InitializeComponent();  }

        private void btnMenu_Click(object sender, EventArgs e)
        {
            new Menu().Show();
            this.Hide();
        }

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }

        //Creamos la función que limpiara los textbox, habilitara textbox de ID y boton guardar
        public void Limpiar()
        {
            IDareaTxt.Text = "";
            nombreAreaTxt.Text = "";
            txtAreaBusqueda.Text = "";
            txt_LargoArea.Text = "";
            TipoArea.Text = "";
            txt_AnchoArea.Text = "";
            txt_AreaT.Text = "";
            btnGuardar.Visible = true;
            IDareaTxt.Enabled = true;
            errorProvider1.Clear();
            MainClass.con.Close();
        }
        public void area()
        {
            if (txt_AnchoArea.Text == "" || txt_LargoArea.Text == "")
            { }
            else
            {
                Double area, ancho, largo;
                ancho = Convert.ToDouble(txt_AnchoArea.Text);
                largo = Convert.ToDouble(txt_LargoArea.Text);
                //Realizamos el calculo del area en metros y lo convertimos a pies cuadrados para mostrar el resultado
                area = (ancho * largo) * 10.7639104;
                txt_AreaT.Text = area.ToString();
            }        
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
            
    
            //label5.Text = this.edificioCb.GetItemText(this.edificioCb.SelectedItem);
            //label5.Text = this.edificioCb.SelectedItem.ToString();

           
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (IDareaTxt.Text == "" || nombreAreaTxt.Text == "" || TipoArea.Text == "" || txt_LargoArea.Text == "" || txt_AnchoArea.Text == "")
            {
                //Validación de campos
                errorProvider1.SetError(IDareaTxt, "¡Rellenar Campo!");
                errorProvider1.SetError(nombreAreaTxt, "¡Rellenar Campo!");
                errorProvider1.SetError(TipoArea, "¡Rellenar Campo!");
                errorProvider1.SetError(txt_LargoArea, "¡Rellenar Campo!");
                errorProvider1.SetError(txt_AnchoArea, "¡Rellenar Campo!");
            }
            else
            {
                //Insertamos datos a la DB
                DBinsert i = new DBinsert();
                i.insertArea(IDareaTxt.Text, nombreAreaTxt.Text, TipoArea.Text, txt_LargoArea.Text, txt_AnchoArea.Text, txt_AreaT.Text);
                //Mostramos los datos en el dataGridView
               r.showArea(dgvArea, IDareaColumn, NombreAreaColumn);
                //Limpiamos campos luego del ingreso de datos
                Limpiar();
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
            if (IDareaTxt.Text == "")
            { errorProvider1.SetError(IDareaTxt, "¡Seleccione Area a Modificar!"); }
            else
            {
                try
                {
                    //Actualizamos los datos
                    DBupdate u = new DBupdate();
                    u.updateArea(IDareaTxt.Text, nombreAreaTxt.Text, TipoArea.Text, txt_LargoArea.Text, txt_AnchoArea.Text, txt_AreaT.Text);
                //Mostramos el datagrid con los datos actualizados
                r.showArea(dgvArea, IDareaColumn, NombreAreaColumn);
                //Hacemos uso de la función limpiar para dejar los cambos vacíos.
                Limpiar();
                //Habilitamos el textbox que contiene el ID y el boton de guardar
                IDareaTxt.Enabled = true;
                btnGuardar.Visible = true;

                }
                catch (Exception ex)
                { MessageBox.Show(ex.ToString()); } 
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
                TipoArea.Text = row.Cells[2].Value.ToString();
                txt_LargoArea.Text = row.Cells[3].Value.ToString();
                txt_AnchoArea.Text = row.Cells[4].Value.ToString();
                IDareaTxt.Enabled = false;
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if (txtAreaBusqueda.Text != "")
            {
                r.showArea(dgvArea, IDareaColumn, NombreAreaColumn, txtAreaBusqueda.Text);
            }
            else
            {
                r.showArea(dgvArea, IDareaColumn, NombreAreaColumn);
            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {

            if (IDareaTxt.Text == "")
            { errorProvider1.SetError(IDareaTxt, "¡Seleccione Area a Eliminar!"); }
            else
            {
                try
                {

                    DBdelete d = new DBdelete();
                    d.delete(AreaID, "pr_deleteArea", "@IDareaPr");
                    //Actualizamos los datos en el datagridView
                    r.showArea(dgvArea, IDareaColumn, NombreAreaColumn);
                    //Hacemos uso de la función limpiar para dejar los cambos vacíos.
                    Limpiar();
                    //Habilitamos el textbox que contiene el ID y el boton de guardar
                    IDareaTxt.Enabled = true;
                    btnGuardar.Visible = true;

                }
                catch (Exception ex)
                { MessageBox.Show(ex.ToString()); }
            }

        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void txt_AreaT_TextChanged(object sender, EventArgs e)
        {
            //txt_AreaT.Text = "2";

            //Realizamos el calculo del area y lo mostramos en el textBox
            area();
            
        }

        private void IDareaTxt_TextChanged(object sender, EventArgs e)
        {
            //Eliminamos errorProvider
            if (IDareaTxt.Text.Trim() != "")
            { errorProvider1.SetError(IDareaTxt, ""); }
        }

        private void nombreAreaTxt_TextChanged(object sender, EventArgs e)
        {
            //Eliminamos errorProvider
            if (nombreAreaTxt.Text.Trim() != "")
            { errorProvider1.SetError(nombreAreaTxt, ""); }
        }

        private void TipoArea_TextChanged(object sender, EventArgs e)
        {
            //Eliminamos errorProvider
            if (TipoArea.Text.Trim() != "")
            { errorProvider1.SetError(TipoArea, ""); }
        }

        private void txt_LargoArea_TextChanged(object sender, EventArgs e)
        {
            //Capturamos el dato de el largo para el calculo de area mediante la funcion area()
            area();
            //Eliminamos errorProvider
            if (txt_LargoArea.Text.Trim() != "")
            { errorProvider1.SetError(txt_LargoArea, ""); }
        }

        private void txt_AnchoArea_TextChanged(object sender, EventArgs e)
        {
            //Capturamos el dato del ancho para el calculo de area mediante la funcion area()
            area();
            //Eliminamos errorProvider
            if (txt_AnchoArea.Text.Trim() != "")
            { errorProvider1.SetError(txt_AnchoArea, ""); }
        }
    }
}
