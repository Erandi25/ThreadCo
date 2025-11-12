<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New_Arrivals.aspx.cs" Inherits="ThreadCo.New_Arrivals" %>

<!DOCTYPE html>
<html>
<head>
    <title>New Arrivals</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* Logo section */
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
            margin-left: 1090px;
            margin-bottom: 15px;
            cursor: pointer;
        }

        /* Navigation bar */
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

        /* Content styling */
        .content img {
            width: 100%;
            height: auto;
            opacity: 0.3;
        }

        .content h2 {
            margin-top: -400px;
            text-align: center;
          
        }

        .content p {
            font-size: 16px;
            line-height: 1.8;
            margin-bottom: 20px;
            color: #333;
            text-align: center;
            font-weight: bold;
        }

        .filters-container {
            display: flex; 
            margin: 20px; 
        }

        .filters {
            flex: 1; 
            width: 250px; 
            margin-right: 20px;
            
        }

        .size-filter, .availability-filter {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 6px;
            padding: 15px;
            margin-bottom: 30px; 
            margin-top: 120px;
            column-width: auto;
            text-decoration:none;
        }

        .size-filter h3, .availability-filter h3 {
            margin: 0 0 10px;
            font-size: 15px;
            font-weight: bold;
        }

        .size-options {
            display: grid;
            grid-template-columns: repeat(2,1fr);
            gap: 10px; 
            text-decoration:none;
        }

        .size-button {
            background-color: #f4f4f4;
            border: 1px solid #ccc;
            border-radius: 3px;
            padding: 10px 15px;
            cursor: pointer;
            font-size: 11px;
            transition: background-color 0.3s;
            text-decoration:none;

        }

        .size-button:hover {
            background-color: #e0e0e0; 
        }

       

        .availability-options {
            display: flex;
            flex-direction: column;
            margin-top: 5px;
        }

        .availability-options label {
            margin-bottom: 5px; 
            font-size: 12px;
            cursor: pointer;
        }

        .availability-options input[type="checkbox"] {
            margin-right: 8px; 
            cursor: pointer;
        }

        .new-arrivals-section {
            text-align: center; 
            margin: 20px 10px; 
        }

        .new-arrivals-heading {
            text-align: left;
            font-size: 25px; 
            font-weight: bold;
            color: #333; 
            margin-top: -35px;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
        }


        .products {
            flex: 3; 
            display: grid;
            grid-template-columns: repeat(4, 1fr); 
            gap: 20px; 
            padding: 20px 40px;
            margin-top: 20px;
        }

        .product {
            background: white;
            border: 1px solid #ddd;
            margin: 0;
            padding: 10px;
            text-align: center;
            border-radius: 5px;
            font-size: 13px;
        }

        .product img {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
        }
        img:hover {
            transform: scale(2.2);
            transition: transform 0.3s ease;
        }
                         
                button {
                  position: relative;
                  display: inline-block;
                  cursor: pointer;
                  outline: none;
                  border: 0;
                  vertical-align: middle;
                  font-family: inherit;
                  font-size: 7px;
                }

                a.Add_to_cart {
                    display: inline-block;
                    text-decoration: none; /* Removes underline */
                    font-weight: 600;
                    color: #2c2f33;
                    text-transform: uppercase;
                    padding: 0.5em 0.75em;
                    background: #f6f8fa;
                    border: 2px solid #ccd6dd;
                    border-radius: 0.75em;
                    transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), background 150ms cubic-bezier(0, 0, 0.58, 1);
                    position: relative;
                    font-size: 8px;
                    height:15px;
                    align-content :center;
                }

            a.Add_to_cart::before {
                position: absolute;
                content: '';
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: #e9ebee;
                border-radius: inherit;
                box-shadow: 0 0 0 2px #ccd6dd, 0 0.625em 0 0 #ffffff;
                transform: translate3d(0, 0.75em, -1em);
                transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), box-shadow 150ms cubic-bezier(0, 0, 0.58, 1);
                z-index: -1;
            }

            a.Add_to_cart:hover {
                background: #dce0e3;
                transform: translate(0, 0.25em);
                text-decoration: none;
            }

                a.Add_to_cart:hover::before {
                    box-shadow: 0 0 0 2px #ccd6dd, 0 0.5em 0 0 #ffffff;
                    transform: translate3d(0, 0.5em, -1em);
                }

            a.Add_to_cart:active {
                background: #dce0e3;
                transform: translate(0, 0.75em);
            }

                a.Add_to_cart:active::before {
                    box-shadow: 0 0 0 2px #ccd6dd, 0 0 #ffffff;
                    transform: translate3d(0, 0, -1em);
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

        <div style="height:50px"></div>

        <div class="filters-container">
            <div class="filters">
                <div class="size-filter">
                    <h3>SIZE</h3>
                    <div class="size-options">
                        <a href="XXS.aspx" class="size-button">XXS</a>
                        <a href="XS.aspx" class="size-button">XS</a>
                        <button class="size-button">S</button>
                        <a href="Medium.aspx" class="size-button">M</a>
                        <button class="size-button">L</button>
                        <button class="size-button">XL</button>
                        <button class="size-button">XXL</button>
                       
                    </div>
                </div>

                <div class="availability-filter">
                    <h3>AVAILABILITY</h3>
                    <div class="availability-options">
                        <label>
                            <input type="checkbox" name="availability" value="in-stock">
                            In Stock (1058)
                        </label>
                        <label>
                            <input type="checkbox" name="availability" value="out-of-stock">
                            Out Of Stock (952)
                        </label>
                    </div>
                </div>
            </div>

         <div class="new-arrivals-section">
              <h2 class="new-arrivals-heading">New Arrivals</h2>
             <hr>
                <div class="products">
                    <asp:Repeater ID="RepeaterProducts" runat="server">
                        <ItemTemplate>
                            <div class="product">
                                <a href="Products.aspx">
                                <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Name") %>' />
                                    <h2 class="productTitle"><%# Eval("Name") %></h2>
                                </a>
                                <p><%# Eval("Description") %></p>
                                <p class="cost">Price: Rs.<%# Eval("Price", "{0:F2}") %></p>
                                <a href="Cart.aspx" class="Add_to_cart">Add to Cart</a>

                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
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