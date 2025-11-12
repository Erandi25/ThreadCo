using System;
using System.Collections.Generic;

namespace ThreadCo
{
    // Correct Product class name
    public class Productsss
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
        public decimal Price { get; set; }
        public bool IsAvailable { get; set; }
    }

    // Correct Repository name and method
    public static class ItemssRepository
    {
        public static List<Product> GetXSItemss()
        {
            return new List<Product>
            {
                new Product
                {
                    Id = 1,
                    Name = "Petite Bloom Dress",
                    Description = "Charming dress in petite size",
                    ImageUrl = "images/dress-8.jpg",
                    Price = 2999,
                    IsAvailable = true
                },
                new Product
                {
                    Id = 2,
                    Name = "Mini Grace Frock",
                    Description = "Elegant floral frock for XS collection",
                    ImageUrl = "images/dress-7.jpg",
                    Price = 3499,
                    IsAvailable = true
                }
            };
        }
    }

    public partial class XS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var items = ItemssRepository.GetXSItemss();
                RepeaterXXS.DataSource = items;
                RepeaterXXS.DataBind();
            }
        }
    }
}