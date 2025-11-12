// ItemRepository.cs
using System;
using System.Collections.Generic;
using System.Linq;

namespace ThreadCo
{
    public static class ItemRepository
    {
        public static List<Item> GetTrends()
        {
            return new List<Item>
            {
                new Item {
                    Id = 1,
                    Name = "Oasis Muse Linen Dress",
                    Description = "Elegant linen dress for summer",
                    ShortDescription = "Elegant linen dress for summer",
                    FullDescription = "Elevate your everyday elegance with our Oasis Muse Linen Dress. Crafted from 100% premium linen, this dress offers breathability and comfort. The midi length adds a touch of class, making it suitable for both casual outings and evening occasions.",
                    ImageUrl = "images/dress-1.jpg",
                    Price = 4599,
                    IsAvailable = true,
                    Material = "100% Linen",
                    Weight = "350g",
                    Category = "Trends"
                },
                new Item {
                    Id = 2,
                    Name = "Coastal Breeze Linen Dress",
                    Description = "Lightweight beach-ready dress",
                    ShortDescription = "Lightweight beach-ready dress",
                    FullDescription = "Our Coastal Breeze Linen Dress is perfect for seaside escapes. The relaxed fit and breathable fabric keep you cool even on the hottest days. Features side pockets for convenience and a flattering silhouette.",
                    ImageUrl = "images/dress-2.jpg",
                    Price = 2999,
                    IsAvailable = true,
                    Material = "100% Linen",
                    Weight = "320g",
                    Category = "Trends"
                },
                new Item {
                    Id = 3,
                    Name = "Sunray Linen Mazi Dress",
                    Description = "Vibrant printed summer dress",
                    ShortDescription = "Vibrant printed summer dress",
                    FullDescription = "The Sunray Linen Mazi Dress features a bold floral print that captures the essence of summer. Made from lightweight linen with a comfortable fit that flatters all body types. Perfect for garden parties or brunch dates.",
                    ImageUrl = "images/dress-3.jpg",
                    Price = 3199,
                    IsAvailable = true,
                    Material = "100% Linen",
                    Weight = "380g",
                    Category = "Trends"
                },
                new Item {
                    Id = 4,
                    Name = "Emilia One Shoulder Dress",
                    Description = "Statement one-shoulder design",
                    ShortDescription = "Statement one-shoulder design",
                    FullDescription = "Make a statement with our Emilia One Shoulder Printed Dress. The unique asymmetrical neckline adds drama while the flowing skirt provides movement and elegance. Perfect for special occasions.",
                    ImageUrl = "images/dress-7.jpg",
                    Price = 42.99M,
                    IsAvailable = true,
                    Material = "Polyester blend",
                    Weight = "400g",
                    Category = "Trends"
                },
                new Item {
                    Id = 5,
                    Name = "Vibrant Floral Maxi Dress",
                    Description = "Colorful floral pattern dress",
                    ShortDescription = "Colorful floral pattern dress",
                    FullDescription = "Our Vibrant Floral Maxi Dress features a stunning floral print that transitions beautifully from day to night. The flowing maxi length and lightweight fabric make it perfect for warm weather occasions.",
                    ImageUrl = "images/floral-dress-8.jpg",
                    Price = 4799,
                    IsAvailable = true,
                    Material = "Polyester/Cotton blend",
                    Weight = "420g",
                    Category = "Trends"
                },
                new Item {
                    Id = 6,
                    Name = "Radiant Reflection Dress",
                    Description = "Shimmering evening dress",
                    ShortDescription = "Shimmering evening dress",
                    FullDescription = "The Radiant Reflection Dress catches the light beautifully with its subtle shimmer fabric. The wrap design flatters all figures, and the adjustable tie waist ensures a perfect fit for any body type.",
                    ImageUrl = "images/dress-6.jpg",
                    Price = 1799,
                    IsAvailable = true,
                    Material = "Silk blend",
                    Weight = "370g",
                    Category = "Trends"
                },
                new Item {
                    Id = 7,
                    Name = "Nora Bodycon Dress",
                    Description = "Fitted strappy dress",
                    ShortDescription = "Fitted strappy dress",
                    FullDescription = "The Nora Bodycon Strappy Dress is perfect for nights out. The body-hugging silhouette and delicate straps create a sexy yet sophisticated look. Lined for opacity and comfort.",
                    ImageUrl = "images/floral-dress-2.jpg",
                    Price = 3349M,
                    IsAvailable = true,
                    Material = "Polyester/Spandex blend",
                    Weight = "350g",
                    Category = "Trends"
                },
                new Item {
                    Id = 8,
                    Name = "Serene Drape Linen Dress",
                    Description = "Flowy bohemian style dress",
                    ShortDescription = "Flowy bohemian style dress",
                    FullDescription = "The Serene Drape Linen Dress features beautiful draping that creates effortless elegance. The relaxed fit and breathable linen make it ideal for warm days, while the unique design ensures you stand out.",
                    ImageUrl = "images/dress-8.jpg",
                    Price = 3799,
                    IsAvailable = true,
                    Material = "100% Linen",
                    Weight = "390g",
                    Category = "Trends"
                }
            };
        }

        public static List<Item> GetCollection()
        {
            return new List<Item>
            {
                new Item {
                    Id = 101,
                    Name = "Linen Frock",
                    ImageUrl = "images/frock1.jpg",
                    Price = 3000,
                    ShortDescription = "Elegant linen frock with floral pattern",
                    Description = "Elegant linen frock with floral pattern",
                    FullDescription = "This elegant linen frock features a beautiful floral pattern and is perfect for summer outings. Made from 100% premium linen for maximum comfort and breathability.",
                    Material = "100% Linen",
                    Weight = "350g",
                    Category = "Collection"
                },
                new Item {
                    Id = 102,
                    Name = "Casual Linen Dress",
                    ImageUrl = "images/frock2.jpg",
                    Price = 3500,
                    ShortDescription = "Casual everyday linen dress",
                    Description = "Casual everyday linen dress",
                    FullDescription = "Our casual linen dress is perfect for everyday wear. The relaxed fit and breathable fabric make it ideal for warm weather. Features side pockets for convenience.",
                    Material = "100% Linen",
                    Weight = "320g",
                    Category = "Collection"
                },
                new Item {
                    Id = 103,
                    Name = "Summer Maxi Frock",
                    ImageUrl = "images/frock3.jpg",
                    Price = 4099,
                    ShortDescription = "Flowy maxi dress for summer",
                    Description = "Flowy maxi dress for summer",
                    FullDescription = "The Summer Maxi Frock features a flowing silhouette that moves beautifully. The lightweight fabric and vibrant colors make it perfect for beach vacations or garden parties.",
                    Material = "Linen/Cotton blend",
                    Weight = "420g",
                    Category = "Collection"
                },
                new Item {
                    Id = 104,
                    Name = "Bohemian Frock",
                    ImageUrl = "images/frock4.jpg",
                    Price = 4599,
                    ShortDescription = "Boho-style embroidered frock",
                    Description = "Boho-style embroidered frock",
                    FullDescription = "Our Bohemian Frock features intricate embroidery and a relaxed fit that embodies the free-spirited boho style. Perfect for music festivals or casual outings.",
                    Material = "Cotton/Viscose blend",
                    Weight = "380g",
                    Category = "Collection"
                },
                new Item {
                    Id = 105,
                    Name = "Wrap Linen Dress",
                    ImageUrl = "images/frock5.jpg",
                    Price = 3079,
                    ShortDescription = "Flattering wrap-style dress",
                    Description = "Flattering wrap-style dress",
                    FullDescription = "The Wrap Linen Dress features a universally flattering wrap design that accentuates your waist. The adjustable tie ensures a perfect fit for all body types.",
                    Material = "100% Linen",
                    Weight = "360g",
                    Category = "Collection"
                },
                new Item {
                    Id = 106,
                    Name = "Off-Shoulder Frock",
                    ImageUrl = "images/frock6.jpg",
                    Price = 3099,
                    ShortDescription = "Romantic off-shoulder design",
                    Description = "Romantic off-shoulder design",
                    FullDescription = "This romantic Off-Shoulder Frock features delicate ruffles and a feminine silhouette. The elasticated off-shoulder neckline ensures a comfortable fit.",
                    Material = "Cotton/Linen blend",
                    Weight = "370g",
                    Category = "Collection"
                },
                new Item {
                    Id = 107,
                    Name = "Button-Down Frock",
                    ImageUrl = "images/frock7.jpg",
                    Price = 3099,
                    ShortDescription = "Classic button-down dress",
                    Description = "Classic button-down dress",
                    FullDescription = "The Button-Down Frock offers a classic, timeless design with a modern fit. The front button details and tailored silhouette make it perfect for both casual and dressy occasions.",
                    Material = "100% Cotton",
                    Weight = "400g",
                    Category = "Collection"
                }
            };
        }

        public static Item GetItemById(int id)
        {
            // Search in both collections
            var allItems = new List<Item>();
            allItems.AddRange(GetTrends());
            allItems.AddRange(GetCollection());

            return allItems.FirstOrDefault(p => p.Id == id);
        }
    }

    public class Item
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string ShortDescription { get; set; }
        public string ImageUrl { get; set; }
        public decimal Price { get; set; }
        public bool IsAvailable { get; set; }
        public string Material { get; set; }
        public string Weight { get; set; }
        public string FullDescription { get; set; }
        public string Category { get; set; }
    }
}