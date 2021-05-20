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
    class DBselect
    {
        public DataTable selectEdificio()
        {
            DataTable dt = new DataTable();
            try
            {
                //SQL QUERY to get all the data from the DB
                string sqlselectedificio = "SELECT * FROM Edificios";
                SqlCommand cmd = new SqlCommand(sqlselectedificio, MainClass.con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                //Adding the value from adapter to datatable dt
                adapter.Fill(dt);
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
            return dt;
        }
    }
}
