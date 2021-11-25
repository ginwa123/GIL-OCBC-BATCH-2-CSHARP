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
        private string databaseName = "cuman_coba";

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


        public bool login(string username, string password)
        {

            string query = $"SELECT TOP(1) * FROM users " +
                           $"WHERE username='{username}' AND password='{password}'";
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            object result = command.ExecuteScalar();
            connection.Close();
            if (result != null) return true;
            else return false;
        }

        public bool createNewAccount(string username, string password)
        {
            SqlCommand command;
            string query = "";

            // check user apakah sudah terdaftar ???
            query = $"SELECT TOP(1) * FROM users " +
                    $"WHERE username='{username}'";
            connection.Open();
            command = new SqlCommand(query, connection);
            object result = command.ExecuteScalar();
            connection.Close();
            if (result != null) return false;

            // create new account
            connection.Open();
            query = $"INSERT INTO users (username, password)" +
                           $"VALUES ('{username}', '{password}')";
            command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();
            connection.Close();
            return true;
        }
    }
}
