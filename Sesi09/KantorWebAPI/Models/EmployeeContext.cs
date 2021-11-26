using MySql.Data.MySqlClient;
using System.Collections.Generic;

namespace KantorWebAPI.Models
{
    public class EmployeeContext
    {
        public string connectionString { get; set; }

        public EmployeeContext(string connectionString)
        {
            this.connectionString = connectionString;
        }

        private MySqlConnection GetConnection()
        {
            return new MySqlConnection(connectionString);
        }

        public List<EmployeeItem> InsertEmployee(EmployeeItem data)
        {
            using (var conn = GetConnection())
            {
                // insert
                conn.Open();
                var query = $"INSERT INTO employee (nama, jenis_kelamin, alamat) " +
                            $"VALUES('{data.nama}', '{data.jenisKelamin}', '{data.alamat}')";
                var command = new MySqlCommand(query, conn);
                command.ExecuteNonQuery();
                var Id = command.LastInsertedId;
                conn.Close();
                return GetEmployee(Id.ToString());
            }
        }

        public bool DeleteEmployee(string Id)
        {
            using (var conn = GetConnection())
            {
                var a = GetEmployee(Id);
                if (a.Count != 0)
                {
                    conn.Open();
                    var query = $"DELETE FROM employee WHERE id='{Id}'";
                    var command = new MySqlCommand(query, conn);
                    command.ExecuteNonQuery();
                    conn.Close();
                    return true;
                }
                return false;
            }

        }

        public List<EmployeeItem> UpdateEmployee(string id, EmployeeItem employeeItem)
        {

            using (var conn = GetConnection())
            {
                conn.Open();
                var query = $"UPDATE employee SET nama='{employeeItem.nama}', " +
                            $"jenis_kelamin='{employeeItem.jenisKelamin}', " +
                            $"alamat='{employeeItem.alamat}' " +
                            $"WHERE id='{id}'";
                var command = new MySqlCommand(query, conn);
                command.ExecuteNonQuery();
                conn.Close();
                return GetEmployee(id);

            }
        }

        public List<EmployeeItem> GetEmployee(string id)
        {
            var list = new List<EmployeeItem>();

            using (var connection = GetConnection())
            {
                connection.Open();
                var query = $"SELECT * FROM employee WHERE id=" + id;
                var command = new MySqlCommand(query, connection);
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var model = new EmployeeItem()
                        {
                            id = reader.GetInt32("id"),
                            nama = reader.GetString("nama"),
                            jenisKelamin = reader.GetString("jenis_kelamin"),
                            alamat = reader.GetString("alamat")
                        };
                        list.Add(model);
                    }
                    reader.Close();
                }
                connection.Close();
            }

            return list;
        }

        public List<EmployeeItem> getAllEmployee()
        {
            var list = new List<EmployeeItem>();

            using (var connection = GetConnection())
            {
                connection.Open();
                var query = "SELECT * FROM employee";
                var command = new MySqlCommand(query, connection);
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var model = new EmployeeItem()
                        {
                            id = reader.GetInt32("id"),
                            nama = reader.GetString("nama"),
                            jenisKelamin = reader.GetString("jenis_kelamin"),
                            alamat = reader.GetString("alamat")
                        };
                        list.Add(model);
                    }
                    reader.Close();
                }
                connection.Close();

            }
            return list;
        }
    }
}
