using System;
using System.Web.UI;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace ThreadCo
{
    public partial class Register : Page
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
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtFirstName.Text) ||
                string.IsNullOrWhiteSpace(txtLastName.Text) ||
                string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                return;
            }

            string firstName = txtFirstName.Text.Trim();
            string lastName = txtLastName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            string query = "INSERT INTO register (FirstName, LastName, Email, Password) " +
                           "VALUES (@FirstName, @LastName, @Email, @Password)";

            MySqlParameter[] parameters = new MySqlParameter[]
            {
            new MySqlParameter("@FirstName", firstName),
            new MySqlParameter("@LastName", lastName),
            new MySqlParameter("@Email", email),
            new MySqlParameter("@Password", password)
            };

            db.ExecuteQuery(query, parameters);

            LoadData(); 

            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";

            Response.Redirect("Login.aspx");

        }

    }
}
