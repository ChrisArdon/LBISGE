using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace LBISGE
{
    class DBupdate
    {
        public void updateEdificio(string Id_edf, string nombre_edf)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("pr_updateEdificio", MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ID_EdificioPr", Id_edf);
                cmd.Parameters.AddWithValue("@nombre_edificioPr", nombre_edf);

                MainClass.con.Open();
                cmd.ExecuteNonQuery();
                MainClass.con.Close();
                MainClass.ShowMSG(nombre_edf + " a sido modificado correctamente", "Modificado...", "Success");
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
    }
}
