namespace FormLogin
{
    partial class RegisterForm
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.tvTitle = new System.Windows.Forms.Label();
            this.tvUsername = new System.Windows.Forms.Label();
            this.tvPassword = new System.Windows.Forms.Label();
            this.btLogin = new System.Windows.Forms.Button();
            this.inputPassword = new System.Windows.Forms.TextBox();
            this.inputUsername = new System.Windows.Forms.TextBox();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.tvTitle);
            this.panel1.Controls.Add(this.tvUsername);
            this.panel1.Controls.Add(this.tvPassword);
            this.panel1.Controls.Add(this.btLogin);
            this.panel1.Controls.Add(this.inputPassword);
            this.panel1.Controls.Add(this.inputUsername);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(467, 222);
            this.panel1.TabIndex = 9;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // tvTitle
            // 
            this.tvTitle.AutoSize = true;
            this.tvTitle.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F);
            this.tvTitle.Location = new System.Drawing.Point(12, 9);
            this.tvTitle.Name = "tvTitle";
            this.tvTitle.Size = new System.Drawing.Size(441, 31);
            this.tvTitle.TabIndex = 10;
            this.tvTitle.Text = "Pendaftaran Kartawan OCBC NISP";
            this.tvTitle.Click += new System.EventHandler(this.tvTitle_Click);
            // 
            // tvUsername
            // 
            this.tvUsername.AutoSize = true;
            this.tvUsername.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.tvUsername.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tvUsername.Location = new System.Drawing.Point(42, 58);
            this.tvUsername.Name = "tvUsername";
            this.tvUsername.Size = new System.Drawing.Size(83, 20);
            this.tvUsername.TabIndex = 9;
            this.tvUsername.Text = "Username";
            // 
            // tvPassword
            // 
            this.tvPassword.AutoSize = true;
            this.tvPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tvPassword.Location = new System.Drawing.Point(42, 108);
            this.tvPassword.Name = "tvPassword";
            this.tvPassword.Size = new System.Drawing.Size(78, 20);
            this.tvPassword.TabIndex = 8;
            this.tvPassword.Text = "Password";
            // 
            // btLogin
            // 
            this.btLogin.BackColor = System.Drawing.SystemColors.MenuHighlight;
            this.btLogin.FlatAppearance.BorderSize = 0;
            this.btLogin.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btLogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btLogin.Location = new System.Drawing.Point(46, 161);
            this.btLogin.Name = "btLogin";
            this.btLogin.Size = new System.Drawing.Size(367, 38);
            this.btLogin.TabIndex = 6;
            this.btLogin.Text = "RegisterNow";
            this.btLogin.UseVisualStyleBackColor = false;
            this.btLogin.Click += new System.EventHandler(this.btRegisterNowListener);
            // 
            // inputPassword
            // 
            this.inputPassword.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.inputPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.inputPassword.Location = new System.Drawing.Point(46, 131);
            this.inputPassword.Name = "inputPassword";
            this.inputPassword.PasswordChar = '*';
            this.inputPassword.Size = new System.Drawing.Size(367, 24);
            this.inputPassword.TabIndex = 5;
            // 
            // inputUsername
            // 
            this.inputUsername.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.inputUsername.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.inputUsername.Location = new System.Drawing.Point(46, 81);
            this.inputUsername.Name = "inputUsername";
            this.inputUsername.Size = new System.Drawing.Size(367, 24);
            this.inputUsername.TabIndex = 1;
            // 
            // RegisterForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(467, 222);
            this.Controls.Add(this.panel1);
            this.Name = "RegisterForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Form1";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label tvTitle;
        private System.Windows.Forms.Label tvUsername;
        private System.Windows.Forms.Label tvPassword;
        private System.Windows.Forms.Button btLogin;
        private System.Windows.Forms.TextBox inputPassword;
        private System.Windows.Forms.TextBox inputUsername;
    }
}