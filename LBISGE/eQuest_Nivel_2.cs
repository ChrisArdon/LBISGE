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
    public partial class eQuest_Nivel_2 : Form
    {
        DBretrieval r = new DBretrieval();
        public eQuest_Nivel_2()
        {
            InitializeComponent();
        }

        private void BtnAgregar_Click(object sender, EventArgs e)
        {
            List<string> listaNombreA = new List<string>(); //Creamos una lista que va capturar los tipos de area de las filas seleccionadas
            foreach (DataGridViewRow row in dgv1.Rows)
            {
                if (Convert.ToBoolean(row.Cells[CheckDgv.Name].Value) == true) //si el checkbox esta seleccionado 
                {
                    listaNombreA.Add(row.Cells[1].Value.ToString()); //se añade a la lista la celda que contiene el nombre de area (en este caso la celda 1)

                }

            }
            string[] tiposAreaEnDgv = listaNombreA.ToArray(); //Luego al finalizar el foreach convertimos la lista a un array
            concatenarArray(tiposAreaEnDgv); //mandamos el array al metodo que va a realizar la concatenacion
        }

        public void concatenarArray(string[] arr)
        {
            string str = "";
            for (int i = 0; i < arr.Length; i++)
            {
                str += arr[i] + ",";
            }

            r.showeQuestFinal(dgvfinal, str);
            //MessageBox.Show(str);
        }

        string nombreArea = "Nombre";

        private void eQuest_Nivel_2_Load(object sender, EventArgs e)
        {
            //Mostramos datos eQuest Nivel 2
            r.showArea_eQuestN2(dgv1);
        }

        private void dgv1_ColumnHeaderMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            nombreArea = dgv1.Columns[e.ColumnIndex].DataPropertyName.Trim(); 
        }

        private void FiltrarDatosDatagridview(DataGridView datagrid, string nombreArea, TextBox txtNombreAreaSearch)
        {
            ///Al texto recibido si contiene un asterisco (*) lo reemplazo de la cadena
            ///para que no provoque una excepción.
            string cadena = txtNombreAreaSearch.Text.Trim().Replace("*", "");
            string filtro = string.Format("convert([{0}], System.String) LIKE '{1}%'", nombreArea, cadena);

            ///A la vista del DataGridView con la propiedad RowFilter
            ///se le asigna la cadena del filtro para mostrarla en el DataGridView
            (datagrid.DataSource as DataTable).DefaultView.RowFilter = filtro;
        }

        private void txtNombreAreaSearch_TextChanged(object sender, EventArgs e)
        {
            FiltrarDatosDatagridview(dgv1, nombreArea, txtNombreAreaSearch);
        }
    }
}
