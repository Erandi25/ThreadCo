<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ThreadCo.Products" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Details</title>
    <style>
        /* Logo section */
        .Logo {
            display: flex;
            align-items: center;
            padding: 10px;
            position: relative;
            height: 120px;
        }

        .Logo img {
            height: 80px;
            width: auto;
            margin-top: -50px;
        }

        .Topic h1 {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            margin-top: -50px;
            font-size: 36px;
            font-weight: bold;
            font-family: 'Georgia', serif;
            letter-spacing: 4px;
            color: black;
        }

        .Logo .cart img {
            width:30px;
            height:auto;
            margin-left:1320px;
            margin-bottom:15px;
            cursor:pointer;
        }

        /* Navigation bar */
        nav {
            background-color: black;
            width: 101%;
            height: 55px;
            overflow: hidden;
            margin-top: -50px;
            margin-left:-15px;
        }

        nav ul {
            display: flex;
            padding: 0;
            margin: 0;
            list-style: none;
            margin-left: 105px;
        }

        nav ul li a {
            display: block;
            padding: 20px 8px;
            text-decoration: none;
            color: white;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
        }

        nav ul li a:hover {
            color: gray;
        }

        .product-container {
            display: flex;
            gap: 20px;
            max-width: 1200px;
            margin: 40px auto;
            font-family: Arial, sans-serif;
        }

        .product-image {
            flex: 1;
        }

        .product-image img {
            width: 95%;
            border-radius: 8px;
        }
        .product-image:hover{
            transform: scale(1.1);
            transition: transform 0.3s ease;
        }

        .product-details {
            flex: 1;
            margin-top:180px;
        }

        .product-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .price {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .details {
            margin-bottom: 20px;
            font-size: 16px;
        }

        .installments {
            color: #888;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .label {
            font-weight: bold;
        }

        .select-wrapper {
            margin-bottom: 10px;
        }

        select {
            padding: 10px;
            width: 100%;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .size-guide {
            margin-bottom: 20px;
            font-size: 14px;
        }

        .quantity-add {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        .quantity-add input {
            width: 50px;
            text-align: center;
            font-size: 16px;
            padding: 5px;
        }

        .add-to-cart {
            padding: 10px 20px;
            background-color: #bbb;
            border: none;
            font-size: 16px;
            color: white;
            cursor: pointer;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-decoration:none;
        }

        .add-to-cart:hover {
            background-color: #888;
        }

        .sku, .categories {
            font-size: 13px;
            color: #555;
        }

        .categories a {
            color: #444;
            text-decoration: none;
        }

        .categories a:hover {
            text-decoration: underline;
        }

        /* Footer styling */
        .footer {
            background-color: #111;
            color: white;
            padding: 40px 20px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            font-family: Arial, sans-serif;
            margin-left:-15px;
        }

        .footer-column {
            flex: 1 1 200px;
            margin-left:50px;
            margin-right:50px;
        }

        .footer-column h4 {
            color: #fff;
            margin-bottom: 15px;
            font-size: 16px;
        }

        .footer-column ul {
            list-style: none;
            padding: 0;
        }

        .footer-column ul li {
            margin-bottom: 10px;
        }

        .footer-column ul li a {
            color: #ccc;
            text-decoration: none;
            font-size: 14px;
        }

        .footer-column ul li a:hover {
            color: #fff;
        }

        .newsletter input[type="email"] {
            padding: 8px;
            width: 70%;
            border: none;
            border-radius: 3px;
            margin-right: 5px;
        }

        .newsletter input[type="submit"] {
            padding: 8px 12px;
            background-color: #fff;
            color: #000;
            border: none;
            cursor: pointer;
            border-radius: 3px;
        }

        .social-icons {
            margin-top: 15px;
        }

        .social-icons i {
            font-size: 20px;
            color: #fff;
            margin-right: 10px;
            cursor: pointer;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Logo -->
        <div class="Logo">
            <a href="Home.aspx">
                <img src="images/New_logo.png" alt="Thread Co Logo" />
            </a>
            <div class="Topic">
                <h1>THREAD CO</h1>
            </div>
            
            <!-- Add to cart -->
            <div class="cart">
                <a href="Cart.aspx">
                    <img src="images/cart_Logo.png" />
                </a>
            </div>
        </div>

        <!-- Navigation -->
        <nav>
            <ul>
                <li><a href="Collection.aspx">COLLECTION</a></li>
                <li><a href="Trends.aspx">TRENDS</a></li>
                <li><a href="New_Arrivals.aspx">NEW ARRIVALS</a></li>
                <li><a href="ContactUs.aspx">CONTACT US</a></li>
                <li><a href="AboutUs.aspx">ABOUT US</a></li>
            </ul>
        </nav>

        <div style="height:30px"></div>
       
        <div class="product-container">
            <div class="product-image">
                <img id="productImage" runat="server" src="" alt="Product Image" />
            </div>

            <div class="product-details">
                <div id="productTitle" runat="server" class="product-title"></div>
                <div id="price" runat="server" class="price"></div>

                <div class="details">
                    <div><span class="label">Material:</span> <span id="material" runat="server"></span></div>
                    <div><span class="label">Weight:</span> <span id="weight" runat="server"></span></div>
                </div>

                <div class="installments">
                    or 3 installments of <strong id="installmentPrice" runat="server"></strong> with <em>intpay</em>
                </div>

                <div class="select-wrapper">
                    <label for="size"><strong>Size</strong></label><br />
                    <select id="size">
                        <option>Choose an option</option>
                        <option>Small</option>
                        <option>Medium</option>
                        <option>Large</option>
                    </select>
                </div>

                <div class="size-guide">
                    <a href="#">Size Guide</a>
                </div>

                <div class="quantity-add">
                    <input type="number" value="1" min="1" />
                    <a href="Cart.aspx" class="add-to-cart" type="button">Add to Cart</a>
                </div>

                <div class="sku"><strong>SKU:</strong> <span id="sku" runat="server"></span></div>
                <div class="categories">
                    <div id="productDescription" runat="server"></div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            <div class="footer-column" style="margin-left: 150px">
                <h4>SHOP</h4>
                <ul>
                    <li><a href="Home.aspx">Home</a></li>
                    <li><a href="New_Arrivals.aspx">New Arrivals</a></li>
                    <li><a href="Collection.aspx">View Collections</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h4>INFORMATION</h4>
                <ul>
                    <li><a href="AboutUs.aspx">About Us</a></li>
                    <li><a href="ContactUs.aspx">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h4>TERMS OF USE</h4>
                <ul>
                    <li><a href="Terms_Conditions.aspx">Terms & Conditions</a></li>
                    <li><a href="Privacy_Policy.aspx">Privacy Policy</a></li>
                    <li><a href="#">Shipping & Returns</a></li>
                </ul>
            </div>
            <div class="footer-column newsletter" style="margin-left: 150px">
                <h4>NEWSLETTER SIGN UP</h4>
                <p>Sign up for exclusive updates, new arrivals & insider-only discounts</p>
                <form>
                    <input type="email" placeholder="Enter your email address" /><br />
                    <br />
                    <input type="submit" value="SUBMIT" />
                </form>
                <div class="social-icons">
                    <i class="fab fa-facebook-f"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-instagram"></i>
                </div>
            </div>
        </div>
        <p align="center">&copy; <%: DateTime.Now.Year %> - My ASP.NET Application</p>
    </form>
</body>
</html>