<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ThreadCo.Cart" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
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
        }

        nav ul li a:hover {
            color: gray;
        }

        .cart-container {
            display: flex;
            justify-content: space-between;
            padding: 40px 80px;
        }

        .cart-left {
            width: 60%;
        }


        .cart-item {
            display: flex;
            border: 2px solid #ccc;
            padding: 20px;
            max-width: 760px;
            margin-bottom: 10px;
        }

        .cart-item img {
            width: 120px;
            height: auto;
            margin-right: 20px;
        }

        .cart-details {
            flex: 1;
        }

        .cart-details p {
            margin: 5px 0;
        }

        .cart-details .remove-item {
            padding-left: 270px;
            cursor: pointer;
               
        }

        .quantity {
            display: flex;
            align-items: center;
            margin-top: 10px;
        }

        .quantity input{
            width: 20px;
            text-align: center;
            margin: 0 5px;
        }

        .quantity button {
            padding: 5px 10px;
            cursor: pointer;
            background-color: lightgray;
            border: none;
        }

        .price-box, .total-box {
            border: none;
            background-color: transparent;
            outline: none;
        }

        .cart-comments textarea {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
        }

        .secure-note {
            margin-top: 20px;
            color: green;
        }

        .cart-right {
            width: 35%;
            border-left: 1px solid #ccc;
            padding-left: 40px;
        }

        .cart-right .total-box2{
            text-align:right;
            border:none;
            background-color: transparent;
            outline: none;
            margin-left:340px;
            padding-top: 0px;
            position: relative;
            top: -20px;
        }

        .cart-right .total-box3{
            text-align:right;
            border:none;
            background-color: transparent;
            outline: none;
            margin-left:340px;
            padding-top: 0px;
            position: relative;
            top: -20px;
         }

        .cart-right input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
        }

        .cart-right button {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            cursor: pointer;
        }

        .btn-primary {
            background-color: black;
            color: white;
            border: none;
            text-decoration: none;
            width: 100%;
            padding: 8px 75px;
            margin-bottom: 15px;
            margin: 10px 0;
            text-align:center;
            max-width: 300px;
        }

        .btn-primary:hover {
            background-color: dimgrey;
        }

        .btn-outline {
            background-color: dimgrey;
            color: white;
            border: none;
            text-decoration: none;
            width: 80%;
            padding: 8px 75px;
            margin-top: 0;
            max-width: 300px; /* Set a maximum width */
            margin: 10px 0;
            text-align: center;
        }

        .btn-outline:hover {
            background-color: black;
            color: white;
        }

        .footer {
            background-color: #111;
            color: white;
            padding: 40px 20px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .footer-column {
            flex: 1 1 200px;
            margin-left: 50px;
            margin-right: 50px;
        }

        .footer-column h4 {
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

        .newsletter input[type="email"],
        .newsletter input[type="submit"] {
            padding: 8px;
            border: none;
            border-radius: 3px;
        }

        .newsletter input[type="email"] {
            width: 70%;
            margin-right: 5px;
        }

        .newsletter input[type="submit"] {
            background-color: #fff;
            color: #000;
            cursor: pointer;
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
        .auto-style1 {
            width: 65%;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="Logo">
            <a href="Home.aspx"><img src="images/New_logo.png" alt="Logo" /></a>
            <div class="Topic"><h1>THREAD CO</h1></div>
            <div class="cart"><img src="images/cart_Logo.png" /></div>
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

        <h2 style="margin-left:75px; ">Your Cart</h2><br />

        <div class="cart-container" id="cartContainer">
            <div class="auto-style1">
                
                <div class="cart-item">
                    <img src="images/cartImage.png" alt="Product" />
                    <div class="cart-details">
                        <p><strong>Heavenly And Fab WW Dress</strong></p>
                        <p>&nbsp;</p>
                        <p>Off White Printed / UK 4</p>
                        <p><br/><br />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Price"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text="Quantity"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Text="Total Price"></asp:Label>
                            <span class="remove-item" id="removeItemBtn">×</span>
                        </p>

                        <div class="quantity">
                            <asp:TextBox ID="txtPrise" runat="server" Text="Rs.8200.00" CssClass="price-box" ReadOnly="True" Width="97px"></asp:TextBox>
                            <span style="width: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                            <button class="minusIcon">-</button>
                            <input id="quantityInput"  value="1" min="1" />
                            <button class="plusIcon">+</button>
                            <span style="margin-left: 20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span>
                                <asp:TextBox ID="txtTotalPrice" runat="server" CssClass="total-box" ReadOnly="True" Width="97px"></asp:TextBox>
                            </span>
                        &nbsp;&nbsp;
                            </span>
                        </div>
                    </div>
                </div>

                <div class="cart-comments">
                    <h4>Additional Comments</h4>
                    <textarea rows="4" placeholder="Special instruction for seller..."></textarea>
                </div>
                <p class="secure-note"><i class="fas fa-lock"></i> Secure Shopping Guarantee</p>
            </div>

            <div class="cart-right">
                <h3>Order Summary</h3>
                <hr />
                <p>Subtotal:<span><asp:TextBox ID="txtTotalPrice2" runat="server" CssClass="total-box2" ReadOnly="True" Width="97px"></asp:TextBox>
                    </span>&nbsp;</p>
                <p>Coupon Code:</p>
                <input type="text" placeholder="Enter Coupon Code" />
                <p style="font-size: 12px; color: gray;">Coupon code will be applied on the checkout page</p>
                <hr />
                <p><strong>Total:</strong> <span><asp:TextBox ID="txtFinalTotal" runat="server" CssClass="total-box3" ReadOnly="True" Width="97px"></asp:TextBox></span></p>
                <p style="font-size: 12px; color: gray;">Tax included and shipping calculated at checkout</p>

                <div style="display: flex; flex-direction: column; align-items: center;">
                    <a href="Payment.aspx" class="btn-primary">PROCEED TO CHECKOUT</a>
                    <a href="New_Arrivals.aspx" class="btn-outline">CONTINUE SHOPPING</a>
                </div>

            </div>
        </div>


        <!--hidden continuoue shopping button -->
        <div style="text-align:center; padding: 20px;">
           <button id="continueShoppingBtn" class="btn-outline" style="display:none;" onclick="location.href='WebForm1.aspx'">CONTINUE SHOPPING</button>
        </div>

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
            <div class="footer-column newsletter" style="margin-right:150px">
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
        document.addEventListener("DOMContentLoaded", function () {
            const minusBtn = document.querySelector(".minusIcon");
            const plusBtn = document.querySelector(".plusIcon");
            const quantityInput = document.getElementById("quantityInput");
            const priceBox = document.getElementById("<%= txtPrise.ClientID %>");
            const totalBox = document.getElementById("<%= txtTotalPrice.ClientID %>");
    const subtotalBox = document.getElementById("<%= txtTotalPrice2.ClientID %>");
            const finalTotalBox = document.getElementById("<%= txtFinalTotal.ClientID %>");
            const cartContainer = document.getElementById("cartContainer");
            const continueShoppingBtn = document.getElementById("continueShoppingBtn");
            const removeItemBtn = document.getElementById("removeItemBtn");

            function parsePrice(str) {
                return parseFloat(str.replace(/[^\d.]/g, '')) || 0;
            }

            function updateTotal() {
                const unitPrice = parsePrice(priceBox.value);
                const qty = parseInt(quantityInput.value) || 1;
                const total = unitPrice * qty * 10000;
                totalBox.value = "Rs." + total.toFixed(2);
                subtotalBox.value = "Rs." + total.toFixed(2);
                finalTotalBox.value = "Rs." + total.toFixed(2);
            }

            minusBtn.addEventListener("click", function (e) {
                e.preventDefault();
                let current = parseInt(quantityInput.value) || 1;
                if (current > 1) {
                    quantityInput.value = current - 1;
                    updateTotal();
                }
            });

            plusBtn.addEventListener("click", function (e) {
                e.preventDefault();
                let current = parseInt(quantityInput.value) || 1;
                quantityInput.value = current + 1;
                updateTotal();
            });

            quantityInput.addEventListener("input", function () {
                updateTotal();
            });

            removeItemBtn.addEventListener("click", function () {
                cartContainer.innerHTML = "<h2 style='text-align:center;'>Your cart is empty.</h2>";
                continueShoppingBtn.style.display = "inline-block";
            });

            updateTotal();
        });



    </script>


</body>
</html>
