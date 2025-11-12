// Collection.aspx.cs
using System;
using System.Web.UI;

namespace ThreadCo
{
    public partial class Collection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }

        private void LoadProducts()
        {
            rptProducts.DataSource = ItemRepository.GetCollection();
            rptProducts.DataBind();
        }
    }
}