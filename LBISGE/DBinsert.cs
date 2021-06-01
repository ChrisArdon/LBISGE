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

        public void insertArea(string ID_area, string nombre_area, string TipoArea, string Largo, string Ancho, string CalcArea)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("pr_insertArea", MainClass.con);
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
                MainClass.ShowMSG(nombre_area + " añadido al sistema correctamente", "Guardado...", "Success");
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
        public void insertSubsistema(string ID_subsistema, string nombre_subsistema)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("pr_insertSubsistema", MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@IDsubsistemaPr", ID_subsistema);
                cmd.Parameters.AddWithValue("@NombreSubsistemaPr", nombre_subsistema);

                MainClass.con.Open();
                cmd.ExecuteNonQuery();
                MainClass.con.Close();
                MainClass.ShowMSG("Subsistema añadido correctamente", "Guardado...", "Success");
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
        public void insertInformacionArea(string descr, string cantidadPersonas, string tipoArea, string cantidadEquipos, string capacidad, string horas, string dias, string consumo, string IDedificio, string IDarea, string IDsubsistema)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("pr_insertInformacionArea", MainClass.con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DescripcionPr", descr);
                cmd.Parameters.AddWithValue("@CantidadPersonasPr", cantidadPersonas);
                cmd.Parameters.AddWithValue("@TipoAreaPr", tipoArea);
                cmd.Parameters.AddWithValue("@CantidadEquiposPr", cantidadEquipos);
                cmd.Parameters.AddWithValue("@CapacidadPr", capacidad);
                cmd.Parameters.AddWithValue("@HorasDeUsoPr", horas);
                cmd.Parameters.AddWithValue("@DiasPr", dias);
                cmd.Parameters.AddWithValue("@ConsumoPr", consumo);
                //cmd.Parameters.AddWithValue("@ImagenPr", "path");
                cmd.Parameters.AddWithValue("@ID_edificioPr", IDedificio);
                cmd.Parameters.AddWithValue("@ID_areaPr", IDarea);
                cmd.Parameters.AddWithValue("@ID_subsistemaPr", IDsubsistema);

                MainClass.con.Open();
                cmd.ExecuteNonQuery();
                MainClass.con.Close();
                MainClass.ShowMSG("Informacion añadida correctamente", "Guardado...", "Success");
            }
            catch (Exception ex)
            {
                MainClass.con.Close();
                MainClass.ShowMSG(ex.Message, "Error...", "Error");
            }
        }
    }
}
