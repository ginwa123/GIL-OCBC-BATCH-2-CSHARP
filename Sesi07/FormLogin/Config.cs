using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FormLogin
{
    internal class Config
    {
        private SqlConnection connection;
        private string server = "localhost";
        private string databaseName = "userdata";

        public bool connectToDb()
        {
            try
            {
                string connectionString = $"SERVER={this.server};" +
                                          $"DATABASE={this.databaseName};" +
                                          $"Trusted_Connection=True;";
                connection = new SqlConnection(connectionString);

                connection.Open();
                connection.Close();
                return true;
            }
            catch (Exception e)
            {
                Console.Error.WriteLine(e.Message);
                return false;
            }


        }


        public string login(string username, string password)
        {

            string query = $"SELECT TOP(1) names FROM user_info " +
                           $"WHERE username='{username}' AND password='{password}'";
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            var reader = command.ExecuteReader();

            string result = "";
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    result = $"Selamat datang {reader.GetString(0)}";
                }

            }
            else result = "User tidak ditemukan";
            connection.Close();
            reader.Close();
            return result;
        }

        public bool createNewAccount(string username, string password, string names)
        {
            SqlCommand command;
            string query = "";

            // check user apakah sudah terdaftar ???
            query = $"SELECT TOP(1) * FROM user_info " +
                    $"WHERE username='{username}'";
            connection.Open();
            command = new SqlCommand(query, connection);
            object result = command.ExecuteScalar();
            connection.Close();
            if (result != null) return false;

            // create new account
            connection.Open();
            query = $"INSERT INTO user_info (username, password, names)" +
                           $"VALUES ('{username}', '{password}', '{names}')";
            command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();
            connection.Close();
            return true;
        }
    }
}
