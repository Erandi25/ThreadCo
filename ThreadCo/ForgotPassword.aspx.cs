using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThreadCo
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string userEmail = txtEmail.Text;

            if (IsValidEmail(userEmail))
            {
                // Here you would typically look up the user in your database
                // and generate a password reset token.

                // For demonstration, we'll just simulate sending an email.
                SendResetEmail(userEmail);
                StatusLabel.Text = "Reset link sent to your email.";
            }
            else
            {
                StatusLabel.Text = "Please enter a valid email address.";
            }
        }

        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        private void SendResetEmail(string email)
        {
            // Configure your SMTP client
            var smtpClient = new SmtpClient("smtp.your-email.com")
            {
                Port = 587,
                Credentials = new NetworkCredential("your-email@domain.com", "your-email-password"),
                EnableSsl = true,
            };

            smtpClient.Send("your-email@domain.com", email, "Password Reset", "Click here to reset your password.");
        }
    }
}
