<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Collection.aspx.cs" Inherits="ThreadCo.Collection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Collection - Thread Co</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <style>
        .Logo {
            display: flex;
            align-items: center;
            padding: 10px;
            position: relative;
            height: 120px;
        }
        .Logo img {
            height: 100px;
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
            width: 30px;
            height: auto;
            margin-left: 1320px;
            margin-bottom: 15px;
            cursor: pointer;
        }
        nav {
            background-color: black;
            width: 101%;
            height: 55px;
            overflow: hidden;
            margin-top: -50px;
            margin-left: -15px;
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
        .footer {
            background-color: #111;
            color: white;
            padding: 40px 20px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            font-family: Arial, sans-serif;
            margin-left: -15px;
        }
        .footer-column {
            flex: 1 1 200px;
            margin-left: 50px;
            margin-right: 50px;
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
        .main-content {
            display: flex;
            padding: 40px 100px;
        }
        .sidebar {
            width: 250px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        .sidebar h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
        }
        .sidebar ul li {
            margin: 10px 0;
            font-size: 18px;
        }
        .product-grid {
            flex: 1;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 30px;
            padding-left: 40px;
        }
        .product-card {
            border: 1px solid #eee;
            padding: 15px;
            text-align: center;
            border-radius: 8px;
            background: white;
            transition: transform 0.3s ease;
        }
        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        .product-card img {
            width: 100%;
            height: auto;
            transition: transform 0.3s ease;
        }
        .product-card img:hover {
            transform: scale(1.1);
        }
        .product-card h3 {
            font-size: 16px;
            margin: 10px 0 5px 0;
        }
        .product-card p {
            color: #333;
            margin: 5px 0;
        }
        .product-card .price {
            font-weight: bold;
            color: #000;
        }
        .view-toggle {
            display: flex;
            align-items: center;
        }
        .view-toggle i {
            font-size: 18px;
            margin-left: 10px;
            cursor: pointer;
            color: #666;
        }
        .view-toggle i.active {
            color: #000;
        }
        .view-details
        {
            text-decoration:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="Logo">
            <a href="Home.aspx">
                <img src="images/New_logo.png" alt="Thread Co Logo" />
            </a>
            <div class="Topic">
                <h1>THREAD CO</h1>
            </div>
            <div class="cart">
                <a href="Cart.aspx">
                    <img src="images/cart_Logo.png" />
                </a>
            </div>
        </div>
        <nav>
            <ul>
                  <li><a href="Collection.aspx">COLLECTION</a></li>
                  <li><a href="Trends.aspx">TRENDS</a></li>
                  <li><a href="New_Arrivals.aspx">NEW ARRIVALS</a></li>
                  <li><a href="ContactUs.aspx">CONTACT US</a></li>
                  <li><a href="AboutUs.aspx">ABOUT US</a></li>
            </ul>
        </nav>

        <!-- Breadcrumb + View Toggle -->
        <div style="padding: 20px 100px 0 100px;">
            <div style="display: flex; justify-content: space-between; align-items: center;">
                <h1 style="margin: 0;">All Products</h1>
                <div class="view-toggle">
                    <i class="fas fa-th-large active" id="gridView"></i>
                    <i class="fas fa-list" id="listView"></i>
                </div>
            </div>
        </div>

        <div class="main-content">
            <div class="sidebar">
                <h2>Products</h2>
                <ul>
                    <li>Frocks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="(7)"></asp:Label></li>
                    <li>T-Shirts&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="(0)"></asp:Label></li>
                    <li>Blouses&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="(0)"></asp:Label></li>
                    <li>Pants&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="(0)"></asp:Label></li>
                    <li>Trousers&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Text="(0)"></asp:Label></li>
                </ul>
            </div>
            <div class="product-grid">
                <asp:Repeater ID="rptProducts" runat="server">
                    <ItemTemplate>
                        <div class="product-card">
                            <a href='Products.aspx?id=<%# Eval("Id") %>'>
                                <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Name") %>' />
                            </a>
                            <h3><%# Eval("Name") %></h3>
                            <p class="price">Rs <%# Eval("Price", "{0:N2}") %></p>
                            <p><%# Eval("ShortDescription") %></p>
                            <a href='Products.aspx?id=<%# Eval("Id") %>' class="view-details">View Details</a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            <div class="footer-column" style="margin-left:150px">
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
            <div class="footer-column newsletter" style="margin-left:150px">
                <h4>NEWSLETTER SIGN UP</h4>
                <p>Sign up for exclusive updates, new arrivals & insider-only discounts</p>
                <form>
                    <input type="email" placeholder="Enter your email address" /><br /><br />
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

    <script>
        // Toggle between grid and list view
        document.getElementById('gridView').addEventListener('click', function() {
            document.querySelector('.product-grid').style.gridTemplateColumns = 'repeat(auto-fill, minmax(200px, 1fr))';
            document.getElementById('gridView').classList.add('active');
            document.getElementById('listView').classList.remove('active');
        });

        document.getElementById('listView').addEventListener('click', function() {
            document.querySelector('.product-grid').style.gridTemplateColumns = '1fr';
            document.getElementById('listView').classList.add('active');
            document.getElementById('gridView').classList.remove('active');
        });
    </script>
</body>
</html>