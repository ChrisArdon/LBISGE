using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace LBISGE
{
    class DBinsert
    {
        public void insertEdificio(string Id_edf, string nombre_edf)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("pr_insertEdificio", MainClass.con); //Uso del procedimiento almacenado
                cmd.CommandType = CommandType.StoredProcedure; //especificamos que el tipo de comando es un procedimiento almacenado
                //procedemos a llenar los parametros

                cmd.Parameters.AddWithValue("@ID_EdificioPr", Id_edf);
                cmd.Parameters.AddWithValue("@nombre_edificioPr", nombre_edf);

                MainClass.con.Open();
                cmd.ExecuteNonQuery();
                MainClass.con.Close();
                MainClass.ShowMSG(nombre_edf + " añadido al sistema correctamente", "Guardado...", "Success");
            }
            catch (Exception ex)
            {

                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }

        public void insertArea(string ID_area, string nombre_area)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("pr_insertArea", MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@IDareapr", ID_area);
                cmd.Parameters.AddWithValue("@nombreAreapr", nombre_area);

                MainClass.con.Open();
                cmd.ExecuteNonQuery();
                MainClass.con.Close();
                MainClass.ShowMSG(nombre_area + " añadido al sistema correctamente", "Guardado...", "Success");
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
    }
}
