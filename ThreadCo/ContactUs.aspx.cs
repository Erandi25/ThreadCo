using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace ThreadCo
{
    public partial class ContactUs : System.Web.UI.Page
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

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtName.Text) ||
                string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(txtContent.Text))
            {
                return;
            }

            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string content = txtContent.Text.Trim();
            bool subscribeToNewsletter = chkNewsletter.Checked; // Ensure this is included

            // Update the query to include SubscribeToNewsletter
            string query = "INSERT INTO contact (Name, Email, Content, SubscribeToNewsletter) " +
                           "VALUES (@Name, @Email, @Content, @SubscribeToNewsletter)";

            MySqlParameter[] parameters = new MySqlParameter[]
            {
                new MySqlParameter("@Name", name),
                new MySqlParameter("@Email", email),
                new MySqlParameter("@Content", content),
                new MySqlParameter("@SubscribeToNewsletter", subscribeToNewsletter ? 1 : 0) // Convert to int
            };

            db.ExecuteQuery(query, parameters);

            SuccessLabel.Text = "Your message has been sent successfully!";
            SuccessLabel.Visible = true;

            txtName.Text = "";
            txtEmail.Text = "";
            txtContent.Text = "";
            chkNewsletter.Checked = false;
        }

        protected void NewsletterSubmit_Click(object sender, EventArgs e)
        {
            string newsletterEmail = txtNewsletterEmail.Text.Trim();

            if (string.IsNullOrWhiteSpace(newsletterEmail))
            {
                return;
            }

            string query = "INSERT INTO newsletter_subscribers (Email) VALUES (@Email)";

            MySqlParameter[] parameters = new MySqlParameter[]
            {
        new MySqlParameter("@Email", newsletterEmail)
            };

            db.ExecuteQuery(query, parameters);


            SuccessLabel.Text = "Thank you for subscribing to our newsletter!";
            SuccessLabel.Visible = true;

            txtNewsletterEmail.Text = "";
        }
    }
}