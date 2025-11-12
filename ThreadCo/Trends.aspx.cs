// Trends.aspx.cs
using System;
using System.Web.UI;

namespace ThreadCo
{
    public partial class Trends : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RepeaterProducts.DataSource = ItemRepository.GetTrends();
                RepeaterProducts.DataBind();
            }
        }
    }
}