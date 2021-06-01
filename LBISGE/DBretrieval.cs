﻿using System;
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
        private static string tipoArea=null;
        public static string getAreaType(string Area) //Funcion que obtiene el tipo del area segun el nombre del area seleccionado
        {
            try
            {
                SqlCommand cmd = new SqlCommand("st_getAreaType", MainClass.con); //Se crea un comando sql
                cmd.CommandType = CommandType.StoredProcedure; //Se especifica que el comando es tipo Procedimiento almacenado
                cmd.Parameters.AddWithValue("@NombreAreaPr", Area); //Se especifica que se va a pasar un parametro con valor
                MainClass.con.Open();
                SqlDataReader dr = cmd.ExecuteReader(); //Se crea un Data reader para un manejo de datos mas facil (el SqlDataReader lee linea por linea lo cual nos interesa)
                if (dr.HasRows) //Si el SqlDataReader encuentra informacion
                {
                    while (dr.Read())//Loop que para hasta que halla leido toda la informacion del procedimiento almacenado o comando sql
                    {
                        tipoArea = dr["Tipo"].ToString(); //sintaxis para seleccionar la columna que se va a leer en la base de datos
                    }
                }
                else
                {
                    //MainClass.ShowMSG("Data NO Found", "NOoo", "Error"); 
                }
                MainClass.con.Close();
            }
            catch (Exception)
            {
                MainClass.con.Close();
                MainClass.ShowMSG("No se pudo encontrar el tipo de area", "Error", "Error");
             
            }
            return tipoArea; //No olvidemos retornar la variable, ya que la funcion al ser un string es necesario retornar algo
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

        public void showInformacionArea(DataGridView gv, DataGridViewColumn Edificio, DataGridViewColumn area, DataGridViewColumn tipoarea, DataGridViewColumn personas, DataGridViewColumn subsistema,
            DataGridViewColumn item, DataGridViewColumn descripcion, DataGridViewColumn cantidad, DataGridViewColumn capacidad, DataGridViewColumn horas, DataGridViewColumn dias, DataGridViewColumn consumo, string data=null)
        {
            try
            {
                SqlCommand cmd;
                if (data == null)
                {
                    cmd = new SqlCommand("pr_getInformacionAreaData", MainClass.con);
                }
                else
                {
                    cmd = new SqlCommand("busqueda..", MainClass.con);
                    cmd.Parameters.AddWithValue("@data", data);
                }
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Edificio.DataPropertyName = dt.Columns["Edificio"].ToString();
                area.DataPropertyName = dt.Columns["Area"].ToString();
                tipoarea.DataPropertyName = dt.Columns["Tipo"].ToString();
                personas.DataPropertyName = dt.Columns["Personas"].ToString();
                subsistema.DataPropertyName = dt.Columns["Subsistema"].ToString();
                item.DataPropertyName = dt.Columns["Item"].ToString();
                descripcion.DataPropertyName = dt.Columns["Descripcion"].ToString();
                cantidad.DataPropertyName = dt.Columns["Equipos"].ToString();
                capacidad.DataPropertyName = dt.Columns["Capacidad"].ToString();
                horas.DataPropertyName = dt.Columns["Horas"].ToString();
                dias.DataPropertyName = dt.Columns["Dias"].ToString();
                consumo.DataPropertyName = dt.Columns["Consumo"].ToString();



                gv.DataSource = dt;
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }

    }
}
