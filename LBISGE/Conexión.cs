using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace LBISGE
{
    class Conexión
    {
        public static string MiServidor;
        // public static string usuario, clave, db;
        public static string db;
        public static string servidor;
        public static string tipoConexion;
        public static string conexionN;

        public static string cadena;
        
        //Funcion que tendra la cadena de conexion
        public static void conec()
        {
            servidor = MiServidor;
            db = "DBLBISGE";
            conexionN = "true";
            tipoConexion = "integrated security = yes"; ;
            // cadena = "server=" + servidor + ";uid=" + usuario + ";pwd=" + clave + ";database=" + db;
            cadena = "server=" + Conexión.MiServidor + ";database=" + db + ";" + tipoConexion;

        }

        public static void instanInstaladas()
        {

            Microsoft.Win32.RegistryKey baseKey = Microsoft.Win32.RegistryKey.OpenBaseKey(Microsoft.Win32.RegistryHive.LocalMachine, Microsoft.Win32.RegistryView.Registry64);
            Microsoft.Win32.RegistryKey key = baseKey.OpenSubKey(@"SOFTWARE\Microsoft\Microsoft SQL Server\Instance Names\SQL");


            foreach (string s in key.GetValueNames())
            {

                if (s == "MSSQLSERVER")
                {
                    MiServidor = "(local)";
                }
                else
                {
                    MiServidor = @"(local)\" + s;
                }

            }
        }
    
    }
}
