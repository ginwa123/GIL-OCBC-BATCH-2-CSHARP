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
    public partial class formLogin : Form
    {
        Config config;
        public formLogin()
        {
            InitializeComponent();
            config = new Config();
            if (!config.connectToDb()) MessageBox.Show("Connection Error");
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged_1(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void tvPassword_Click(object sender, EventArgs e)
        {

        }

        private void tvUsername_Click(object sender, EventArgs e)
        {

        }

        private void inputUsername_TextChanged(object sender, EventArgs e)
        {

        }

        private void btLoginListener(object sender, EventArgs e)
        {
            var result = config.login(inputUsername.Text, inputPassword.Text);
            MessageBox.Show(result);

        }

        private void btRegisterListener(object sender, EventArgs e)
        {
            RegisterForm regForm = new RegisterForm();
            regForm.ShowDialog();
        }
    }
}
