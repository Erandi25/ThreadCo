using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace ThreadCo
{
    public class DAL
    {
        private string connString = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;
        public DataTable GetData(string query)
        {
            DataTable dt = new DataTable();
            using (MySqlConnection conn = new MySqlConnection(connString))
            {
                MySqlCommand cmd = new MySqlCommand(query, conn);
                conn.Open();
                dt.Load(cmd.ExecuteReader());
            }
            return dt;
        }

        public int ExecuteQuery(string query, MySqlParameter[] parameters)
        {
            using (MySqlConnection conn = new MySqlConnection(connString))
            {
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    if (parameters != null)
                    {
                        cmd.Parameters.AddRange(parameters);
                    }

                    conn.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }

        
        
    }
}