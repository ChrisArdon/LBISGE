
namespace LBISGE
{
    partial class config
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.databaseTxt = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.userIdTxt = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.passwordTxt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.isCB = new System.Windows.Forms.CheckBox();
            this.saveBtn = new System.Windows.Forms.Button();
            this.serverTextbox = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(107, 49);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Server";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // databaseTxt
            // 
            this.databaseTxt.Location = new System.Drawing.Point(110, 109);
            this.databaseTxt.Name = "databaseTxt";
            this.databaseTxt.Size = new System.Drawing.Size(166, 22);
            this.databaseTxt.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(107, 92);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(67, 17);
            this.label2.TabIndex = 2;
            this.label2.Text = "Database";
            // 
            // userIdTxt
            // 
            this.userIdTxt.Location = new System.Drawing.Point(110, 147);
            this.userIdTxt.Name = "userIdTxt";
            this.userIdTxt.Size = new System.Drawing.Size(166, 22);
            this.userIdTxt.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(107, 130);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(48, 17);
            this.label3.TabIndex = 4;
            this.label3.Text = "User ID";
            // 
            // passwordTxt
            // 
            this.passwordTxt.Location = new System.Drawing.Point(110, 187);
            this.passwordTxt.Name = "passwordTxt";
            this.passwordTxt.Size = new System.Drawing.Size(166, 22);
            this.passwordTxt.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(107, 170);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(63, 17);
            this.label4.TabIndex = 6;
            this.label4.Text = "Password";
            // 
            // isCB
            // 
            this.isCB.AutoSize = true;
            this.isCB.Location = new System.Drawing.Point(110, 214);
            this.isCB.Name = "isCB";
            this.isCB.Size = new System.Drawing.Size(140, 21);
            this.isCB.TabIndex = 8;
            this.isCB.Text = "Integrated security";
            this.isCB.UseVisualStyleBackColor = true;
            this.isCB.CheckedChanged += new System.EventHandler(this.isCB_CheckedChanged);
            // 
            // saveBtn
            // 
            this.saveBtn.Location = new System.Drawing.Point(110, 238);
            this.saveBtn.Name = "saveBtn";
            this.saveBtn.Size = new System.Drawing.Size(75, 23);
            this.saveBtn.TabIndex = 9;
            this.saveBtn.Text = "Save";
            this.saveBtn.UseVisualStyleBackColor = true;
            this.saveBtn.Click += new System.EventHandler(this.button1_Click);
            // 
            // serverTextbox
            // 
            this.serverTextbox.Location = new System.Drawing.Point(110, 68);
            this.serverTextbox.Name = "serverTextbox";
            this.serverTextbox.Size = new System.Drawing.Size(166, 22);
            this.serverTextbox.TabIndex = 11;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.serverTextbox);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.saveBtn);
            this.groupBox1.Controls.Add(this.databaseTxt);
            this.groupBox1.Controls.Add(this.isCB);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.passwordTxt);
            this.groupBox1.Controls.Add(this.userIdTxt);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Font = new System.Drawing.Font("Century Gothic", 9F);
            this.groupBox1.ForeColor = System.Drawing.Color.Black;
            this.groupBox1.Location = new System.Drawing.Point(31, 49);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(418, 333);
            this.groupBox1.TabIndex = 12;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Configuración de parametros de conexión para base de datos";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(495, 49);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(298, 333);
            this.groupBox2.TabIndex = 13;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "DESARROLLADO POR";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(21, 203);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(260, 51);
            this.label7.TabIndex = 2;
            this.label7.Text = "Wilber Adonay Cruz Cruz.\r\nIngenieria en Ciencias de la Computación.\r\nCorreo: wilb" +
    "ercruz2@hotmail.com";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(21, 137);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(260, 51);
            this.label6.TabIndex = 1;
            this.label6.Text = "Christian Rodrigo Ardón Rivas.\r\nIngenieria en Ciencias de la Computación.\r\nCorreo" +
    ": rockrisbl@gmail.com";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(21, 72);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(260, 51);
            this.label5.TabIndex = 0;
            this.label5.Text = "Jorge Alberto Torres Lima.\r\nIngenieria en Ciencias de la Computación.\r\nCorreo: jo" +
    "rge2604lima@gmail.com";
            // 
            // config
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(830, 509);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "config";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "config";
            this.Load += new System.EventHandler(this.config_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox databaseTxt;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox userIdTxt;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox passwordTxt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.CheckBox isCB;
        private System.Windows.Forms.Button saveBtn;
        private System.Windows.Forms.TextBox serverTextbox;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
    }
}