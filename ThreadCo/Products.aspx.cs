// Products.aspx.cs
using System;
using System.Linq;
using System.Web.UI;

namespace ThreadCo
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    int productId;
                    if (int.TryParse(Request.QueryString["id"], out productId))
                    {
                        DisplayProduct(productId);
                    }
                    else
                    {
                        Response.Redirect("Collection.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Collection.aspx");
                }
            }
        }
        private void DisplayProduct(int productId)
        {
            var product = ItemRepository.GetItemById(productId);

            if (product != null)
            {
                productTitle.InnerText = product.Name;
                price.InnerText = $"Rs. {product.Price:0.00}";
                productImage.Src = product.ImageUrl;
                material.InnerText = product.Material;
                weight.InnerText = product.Weight;
                productDescription.InnerHtml = product.FullDescription;

                // Calculate installment price (price / 3)
                decimal installment = product.Price / 3;
                installmentPrice.InnerText = $"Rs. {installment:0.00}";

                // Generate SKU based on product ID
                sku.InnerText = $"THREAD{product.Id.ToString().PadLeft(8, '0')}";
            }
            else
            {
                // Product not found, redirect to collection page
                Response.Redirect("Collection.aspx");
            }
        }

    }
}