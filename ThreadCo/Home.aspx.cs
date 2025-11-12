using System;
using System.Web.UI;

namespace ThreadCo
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtSearch.Focus();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchTerm = txtSearch.Text.Trim();
            if (!string.IsNullOrEmpty(searchTerm))
            {
                Response.Redirect($"Trends.aspx?search={Server.UrlEncode(searchTerm)}");
            }
        }
    }
}