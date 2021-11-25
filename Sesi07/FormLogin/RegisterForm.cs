using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FormLogin
{
    public partial class RegisterForm : Form
    {
        private Config config;

        public RegisterForm()
        {
            InitializeComponent();
            config = new Config();
            if (!config.connectToDb()) MessageBox.Show("Connection Error");
        }

        private void brRegisterListener(object sender, EventArgs e)
        {

        }

        private void tvTitle_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btRegisterNowListener(object sender, EventArgs e)
        {
            if (inputUsername.Text == null || inputPassword.Text == null || inputName.Text == null)
            {
                MessageBox.Show($"Input tidak boleh kosong");
                return;
            }

            if (config.createNewAccount(inputUsername.Text, inputPassword.Text, inputName.Text))
            {
                MessageBox.Show($"Akun {inputUsername.Text} berhasil dibuat");
            }
            else
            {
                MessageBox.Show("Akun sudah terbuat cari username lain");
            }
            inputUsername.Text = "";
            inputPassword.Text = "";
            inputName.Text = "";

        }
    }
}
