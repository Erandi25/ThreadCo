<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XS.aspx.cs" Inherits="ThreadCo.XS" %>

<!DOCTYPE html>
<html>
<head>
    <title>XS Collection</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .Logo {
            display: flex;
            align-items: center;
            padding: 10px;
            height: 120px;
            position: relative;
        }
        .Logo img {
            height: 100px;
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
        .cart img {
            width: 30px;
            margin-left: 1090px;
            height:auto;
            margin-bottom: 15px;
            cursor: pointer;
        }
        nav {
            background-color: black;
            width: 101%;
            height: 55px;
            margin-top: -50px;
            margin-left: -15px;
        }
        nav ul {
            display: flex;
            margin: 0;
            padding: 0;
            list-style: none;
            margin-left: 105px;
        }
        nav ul li a {
            display: block;
            padding: 20px 8px;
            color: white;
            text-decoration: none;
        }
        nav ul li a:hover {
            color: gray;
        }
        .products {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
            padding: 20px;
        }
        .product {
            background: white;
            border: 1px solid #ddd;
            padding: 20px;
            text-align: center;
            border-radius: 5px;
        }
        .product img {
            width: 50%;
            height: auto;
        }

        img:hover {
           transform: scale(2.2);
           transition: transform 0.3s ease;
         }

        .product h2, .product p {
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Logo -->
        <div class="Logo">
            <a href="Home.aspx">
                <img src="images/New_logo.png" alt="Thread Co Logo" />
            </a>
            <div class="Topic">
                <h1>THREAD CO </h1>
            </div>
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
                <li><a href="AboutUs.aspx">ABOUT US</a></li>
                <li><a href="ContactUs.aspx">CONTACT US</a></li>
            </ul>
        </nav>

    <div style="text-align: center; margin-top: 60px;">
        <h2>XS Collection</h2>
    </div>

        <!-- Products -->
        <div class="products">
            <asp:Repeater ID="RepeaterXXS" runat="server">
                <ItemTemplate>
                    <div class="product">
                        <a href="Products.aspx">
                            <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Name") %>' />
                        </a>
                        <h2><%# Eval("Name") %></h2>
                        <p><%# Eval("Description") %></p>
                        <p>Price: Rs.<%# Eval("Price", "{0:F2}") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
