using System;
using System.Collections.Generic;
using System.Web.UI;

namespace ThreadCo
{
    // Product class
    public class Productss
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
        public decimal Price { get; set; }
        public bool IsAvailable { get; set; }
    }

    // Repository class
    public static class ItemsRepository
    {
        public static List<Product> GetXXSItems()
        {
            return new List<Product>
            {
                new Product
                {
                    Id = 1,
                    Name = "Petite Bloom Dress",
                    Description = "Charming dress in petite size",
                    ImageUrl = "images/dress-1.jpg",
                    Price = 1999,
                    IsAvailable = true
                },
                new Product
                {
                    Id = 2,
                    Name = "Mini Grace Frock",
                    Description = "Elegant floral frock for XXS collection",
                    ImageUrl = "images/dress-2.jpg",
                    Price = 4199,
                    IsAvailable = true
                }
            };
        }
    }

    // Code-behind for XXS.aspx
    public partial class XXS : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // FIXED: Changed ItemRepository to ItemsRepository
                var items = ItemsRepository.GetXXSItems();
                RepeaterXXS.DataSource = items;
                RepeaterXXS.DataBind();
            }
        }
    }
}