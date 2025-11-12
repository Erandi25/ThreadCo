using System;
using System.Web.UI;

namespace ThreadCo
{
    public partial class Payment : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initial setup can be done here if necessary
            }
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            // Accessing txtPromo using 'this' to avoid context issues
            

        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            // Handle payment processing here
            // Validate inputs, call payment API, etc.
            Response.Write("<script>alert('Payment successful!');</script>");
        }
    }
}