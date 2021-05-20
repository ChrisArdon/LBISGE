using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace LBISGE
{
    class MainClass
    {
        //Conexion SQL
        private static string path = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
        private static string s = File.ReadAllText(path + "\\lconnect");
        public static SqlConnection con = new SqlConnection(s); 
        //Fin conexxion SQL
        public static DialogResult ShowMSG(string msg, string heading, string type)//Generador de ventanas de mensaje
        {
            if (type == "Success")
            {
                return MessageBox.Show(msg, heading, MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                return MessageBox.Show(msg, heading, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        //public static showWindow(Form openWin, Form clsWin, Form MDIwin)
        //{
        //    clsWin.Close();
        //    openWin.MdiParent = MDIwin;
        //    openWin.WindowState = FormWindowState.Maximized;
        //    openWin.Show();
        //}
        //public static showWindow(Form openWin, Form MDIwin)
        //{
        //    openWin.MdiParent = MDIwin;
        //    openWin.WindowState = FormWindowState.Maximized;
        //    openWin.Show();
        //}
    }
}
