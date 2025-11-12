using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace ThreadCo
{
    public partial class Login : System.Web.UI.Page
    {
        DAL db = new DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        private void LoadData()
        { }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                return;
            }

            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

 
            string query = "INSERT INTO login (Email, Password) VALUES (@Email, @Password)";


            MySqlParameter[] parameters = new MySqlParameter[]
            {
                new MySqlParameter("@Email", email),
                new MySqlParameter("@Password", password) 
            };

            db.ExecuteQuery(query, parameters);

            LoadData();

            txtEmail.Text = "";
            txtPassword.Text = "";

            Response.Redirect("Home.aspx");
        }
        
    }
}