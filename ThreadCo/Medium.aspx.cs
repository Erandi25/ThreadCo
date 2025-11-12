using System;
using System.Collections.Generic;
using System.Web.UI;

namespace ThreadCo
{
    // Product class
    public class Productssss
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
        public decimal Price { get; set; }
        public bool IsAvailable { get; set; }
    }

    // Repository class
    public static class ItemsssRepository
    {
        public static List<Product> GetMediumItems()
        {
            return new List<Product>
            {
                new Product
                {
                    Id = 1,
                    Name = "Petite Bloom Dress",
                    Description = "Charming dress in petite size",
                    ImageUrl = "images/frock7.jpg",
                    Price = 2999,
                    IsAvailable = true
                },
                new Product
                {
                    Id = 2,
                    Name = "Mini Grace Frock",
                    Description = "Elegant floral frock for Medium collection",
                    ImageUrl = "images/floral-dress-8.jpg",
                    Price = 3499,
                    IsAvailable = true
                }
            };
        }
    }
    public partial class Medium : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var items = ItemsssRepository.GetMediumItems();
                RepeaterXXS.DataSource = items;
                RepeaterXXS.DataBind();
            }
        }
    }
}