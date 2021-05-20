using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace LBISGE
{
    public partial class config : Form
    {
        
        public config()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string s;
            string path = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            if (isCB.Checked)
            {
                if (serverTextbox.Text != "" && databaseTxt.Text != "")
                {
                    s = "Data Source=" + serverTextbox.Text + ";Initial Catalog=" + databaseTxt.Text + "; Integrated Security=true;";
                    File.WriteAllText(path + "\\lconnect", s);
                    DialogResult dr = MessageBox.Show("Settings Saved Successfully...", "Information...", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if (dr == DialogResult.OK)
                    {
                        config conf = new config();
                        conf.Close();
                    }
                }
                else
                {
                    MessageBox.Show("Please give complete data to continue...");
                }
            }
            else // SQL AUTHENTICATION
            {
                if (serverTextbox.Text != "" && databaseTxt.Text != "" && userIdTxt.Text != "" && passwordTxt.Text != "")
                {
                    s = "Data Source=" + serverTextbox.Text + ";Initial Catalog=" + databaseTxt.Text + ";User ID=" + userIdTxt.Text + ";Password=" + passwordTxt.Text + ";";
                    File.WriteAllText(path + "\\lconnect", s);
                    DialogResult dr = MessageBox.Show("Settings Saved Successfully...", "Information...", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if (dr == DialogResult.OK)
                    {
                        config conf = new config();
                        conf.Close();
                    }
                }
                else
                {
                    MessageBox.Show("Please give complete data to continue...");
                }
            }
        }

        private void config_Load(object sender, EventArgs e)
        {

        }

        private void isCB_CheckedChanged(object sender, EventArgs e)
        {
            if (isCB.Checked)
            {
                userIdTxt.Enabled = false;
                passwordTxt.Enabled = false;
                userIdTxt.Text = "";
                passwordTxt.Text = "";
            }
            else
            {
                userIdTxt.Enabled = true;
                passwordTxt.Enabled = true;
            }
        }
    }
}
