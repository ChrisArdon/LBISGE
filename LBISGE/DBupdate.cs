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
        public void updateArea(string ID_area, string nombre_area, string TipoArea, string Largo, string Ancho, string CalcArea)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("pr_updateArea", MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@IDareapr", ID_area);
                cmd.Parameters.AddWithValue("@nombreAreapr", nombre_area);
                cmd.Parameters.AddWithValue("@TipoAreapr", TipoArea);
                cmd.Parameters.AddWithValue("@Largopr", Largo);
                cmd.Parameters.AddWithValue("@Anchopr", Ancho);
                cmd.Parameters.AddWithValue("@CalcAreapr", CalcArea);

                MainClass.con.Open();
                cmd.ExecuteNonQuery();
                MainClass.con.Close();
                MainClass.ShowMSG(nombre_area + " a sido modificada correctamente", "Modificado...", "Success");
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
        public void updateSubsistema(string ID_subsistema, string nombre_subsistema)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("pr_updateSubsistema", MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@IDsubsistemaPr", ID_subsistema);
                cmd.Parameters.AddWithValue("@NombreSubsistemaPr", nombre_subsistema);

                MainClass.con.Open();
                cmd.ExecuteNonQuery();
                MainClass.con.Close();
                MainClass.ShowMSG("Subsistema modificado correctamente", "Modificado...", "Success");
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
        public void updateInformacionArea(string Item, string descripcion, string personas, string tipoarea, string equipos, string capacidad, string horas, string dias, string consumo, string IDedificio,
            string IDarea, string IDsubsistema)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("pr_updateInformacionArea", MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Item", Item);
                cmd.Parameters.AddWithValue("@DescripcionPr", descripcion);
                cmd.Parameters.AddWithValue("@CantidadPersonasPr", personas);
                cmd.Parameters.AddWithValue("@TipoAreaPr", tipoarea);
                cmd.Parameters.AddWithValue("@CantidadEquiposPr", equipos);
                cmd.Parameters.AddWithValue("@CapacidadPr", capacidad);
                cmd.Parameters.AddWithValue("@HorasDeUsoPr", horas);
                cmd.Parameters.AddWithValue("@DiasPr", dias);
                cmd.Parameters.AddWithValue("@ConsumoPr", consumo);
                cmd.Parameters.AddWithValue("@ID_edificioPr", IDedificio);
                cmd.Parameters.AddWithValue("@ID_areaPr", IDarea);
                cmd.Parameters.AddWithValue("@ID_subsistemaPr", IDsubsistema);
                MainClass.con.Open();
                cmd.ExecuteNonQuery();
                MainClass.con.Close();
                MainClass.ShowMSG("Modificado correctamente", "Modificado...", "Success");
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
    }
}
