using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace LBISGE
{
    //Pull test
    class DBretrieval
    {
        public void showEdificios(DataGridView gv, DataGridViewColumn IDedificioGv, DataGridViewColumn NombreEdificioGv, string data = null)
        {
            try
            {
                SqlCommand cmd;
                if (data == null) //si el textbox de busqueda esta vacio, mostrar todos los datos
                {
                    cmd = new SqlCommand("pr_getEdificioData", MainClass.con);
                }
                else //mostrar los datos con la palabra clave en el buscador
                {
                    cmd = new SqlCommand("pr_getEdificioDataLIKE", MainClass.con);
                    cmd.Parameters.AddWithValue("@data", data);
                }
                //SqlCommand cmd = new SqlCommand("pr_getEdificioData", MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                IDedificioGv.DataPropertyName = dt.Columns["ID"].ToString();
                NombreEdificioGv.DataPropertyName = dt.Columns["Nombre"].ToString();

                gv.DataSource = dt;
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }

        public void searchEdificio(string search, DataGridView gv, DataGridViewColumn IDedificioGv, DataGridViewColumn NombreEdificioGv)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("pr_searchEdificio", MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@searchNombreEdificioPr", search);

                MainClass.con.Open();
                cmd.ExecuteNonQuery();
                //MainClass.con.Close();

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                //IDedificioGv.DataPropertyName = dt.Columns["ID"].ToString();
                NombreEdificioGv.DataPropertyName = dt.Columns["Nombre"].ToString();

                MainClass.con.Close();
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
        public void getEdificioList(string proceso, ComboBox cb, string displayMember, string valueMember)
        {
            try
            {
                cb.Items.Clear();
                cb.DataSource = null;
                cb.Items.Insert(0, "Seleccionar...");

                SqlCommand cmd = new SqlCommand(proceso, MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cb.DataSource = dt;
                cb.DisplayMember = displayMember; //nombre del edificio
                cb.ValueMember = valueMember; //ID del edificio
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }

        public void showArea(DataGridView gv, DataGridViewColumn IDareaGv, DataGridViewColumn NombreAreaGv, string data = null) 
        {
            try
            {
                SqlCommand cmd;
                if (data == null)
                {
                    cmd = new SqlCommand("pr_getAreaData", MainClass.con);
                }
                else
                {
                    cmd = new SqlCommand("pr_getAreaDataLIKE", MainClass.con);
                    cmd.Parameters.AddWithValue("@data", data);
                }
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                IDareaGv.DataPropertyName = dt.Columns["ID"].ToString();
                NombreAreaGv.DataPropertyName = dt.Columns["Nombre"].ToString();
                

                gv.DataSource = dt;
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
        //Uso en futuro formulario....
        public void getAreaList(string proceso, ComboBox cb, string displayMember, string valueMember) 
        {
            try
            {
                cb.Items.Clear();
                cb.DataSource = null;
                cb.Items.Insert(0, "Seleccionar...");

                SqlCommand cmd = new SqlCommand(proceso, MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cb.DataSource = dt;
                cb.DisplayMember = displayMember; //nombre del area
                cb.ValueMember = valueMember; //ID del area
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
        public void showSubsistema(DataGridView gv, DataGridViewColumn IDsubsistemaGv, DataGridViewColumn NombresubsistemaGv, string data = null)
        {
            try
            {
                SqlCommand cmd;
                if (data == null)
                {
                    cmd = new SqlCommand("pr_getSubsistemaData", MainClass.con);
                }
                else
                {
                    cmd = new SqlCommand("pr_getSubsistemaDataLIKE", MainClass.con);
                    cmd.Parameters.AddWithValue("@data", data);
                }
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                IDsubsistemaGv.DataPropertyName = dt.Columns["ID"].ToString();
                NombresubsistemaGv.DataPropertyName = dt.Columns["Nombre"].ToString();


                gv.DataSource = dt;
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
        public void getSubsistemaList(string proceso, ComboBox cb, string displayMember, string valueMember)
        {
            try
            {
                cb.Items.Clear();
                cb.DataSource = null;
                cb.Items.Insert(0, "Seleccionar...");

                SqlCommand cmd = new SqlCommand(proceso, MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cb.DataSource = dt;
                cb.DisplayMember = displayMember; //nombre del subsistema
                cb.ValueMember = valueMember; //ID del subsistema
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }

    }
}
