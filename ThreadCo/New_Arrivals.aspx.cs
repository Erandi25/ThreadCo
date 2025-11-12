using System;
using System.Collections.Generic;
using System.Web.UI;

namespace ThreadCo
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
        public decimal Price { get; set; }
        public bool IsAvailable { get; set; }
    }

    public static class ProductRepository
    {
        public static List<Product> GetNewArrivals()
        {
            return new List<Product>
            {
         
                new Product { Id = 1, Name = "", Description = "Maya Button Down Frill Dress", ImageUrl = "images/floral-dress-1.jpg", Price = 4599, IsAvailable = true },
                new Product { Id = 2, Name = "", Description = "Nora Bodycon Strappy Dress", ImageUrl = "images/floral-dress-2.jpg", Price = 3999, IsAvailable = true },
                new Product { Id = 3, Name = "", Description = "Charming floral dress", ImageUrl = "images/floral-dress-3.jpg", Price = 4399, IsAvailable = true },
                new Product { Id = 4, Name = "", Description = "Tara Strappy Fril Detail Dress", ImageUrl = "images/floral-dress-4.jpg", Price = 4299, IsAvailable = true },
               
                new Product { Id = 5, Name = "", Description = "Everyday Glam WW Dress", ImageUrl = "images/floral-dress-5.jpg", Price = 4199M, IsAvailable = true },
                new Product { Id = 6, Name = "", Description = "Daily Sophisticated WW Dress", ImageUrl = "images/floral-dress-6.jpg", Price = 6399, IsAvailable = true },
                new Product { Id = 7, Name = "", Description = "Charming floral dress ", ImageUrl = "images/floral-dress-7.jpg", Price = 3999, IsAvailable = true },
                new Product { Id = 8, Name = "", Description = "Vibrant floral dress ", ImageUrl = "images/floral-dress-8.jpg", Price = 2799M, IsAvailable = true }
            };
        }
    }

    public partial class New_Arrivals : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var newArrivals = ProductRepository.GetNewArrivals();
                RepeaterProducts.DataSource = newArrivals;
                RepeaterProducts.DataBind();
            }
        }


    }
}