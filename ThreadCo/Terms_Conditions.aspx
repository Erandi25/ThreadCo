<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Terms_Conditions.aspx.cs" Inherits="ThreadCo.Terms_Conditions" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Terms and Conditions | Tread Co</title>
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

        /* Terms Content */
        .terms-container {
            max-width: 1000px;
            margin: 5px auto;
            padding: 20px;
            font-family: Arial, sans-serif;
            line-height: 1.3;
            color: #333;
            text-align:justify;
        }

        .terms-container h2 {
            text-align: center;
            font-size: 30px;
            margin-bottom: 30px;
        }

        .terms-container h3 {
            margin-top: 30px;
            font-size: 20px;
            color: #000;
        }

        .terms-container p {
            margin-bottom: 15px;
        }

        .terms-container ul {
            margin-left: 20px;
            margin-bottom: 15px;
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
        .Logo .cart img {
            width: 30px;
            height: auto;
            margin-left: 1050px;
            margin-bottom: 15px;
            cursor: pointer;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
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

        <!-- Terms and Conditions Content -->
        <div class="terms-container">
            <h2>Terms and Conditions</h2>

            <h3>GENERAL CONSIDERATIONS AND SCOPE</h3>
            <p>Tread Co, operated by Tread Co Private Limited, maintains the internet portal www.TreadCo.com, an online fashion retail store. The products offered on this site are exclusively directed at end-users who are of legal age. Goods are sold in standard household quantities only.</p>
            <p>These Terms and Conditions apply to all contracts concluded via TreadCo.com, as well as to all general business relationships between Tread Co and its customers. We do not recognize any other terms and conditions unless expressly agreed upon in writing.</p>
            <p>If periods are stated in working days, these refer to all weekdays excluding Saturdays, Sundays, and public holidays.</p>

            <h3>USE OF TreadCo.com</h3>
            <p>During the registration process on TreadCo.com, customers are required to provide accurate and complete personal data. After registration, a confirmation email will be sent. Access to your account will be secured through a password, which you must keep confidential and not share with any third party.</p>
            <p>Within the password-protected area, you can view recent orders, manage personal details, and update newsletter subscriptions.</p>

            <h3>PRICES AND PAYMENT</h3>
            <p>Product prices listed at the time of order apply and are exclusive of applicable taxes. The final price, inclusive of all taxes, will be displayed in the shopping cart before checkout.</p>
            <p>Tread Co accepts major credit and debit cards, including Visa, Mastercard, and American Express. Your card will be charged once the order is confirmed and dispatched.</p>

            <h3>VOUCHERS</h3>
            <p>Vouchers are valid for the duration specified at the time of issue, up to a maximum of one year. They are non-transferable and cannot be redeemed for cash or applied to shipping costs. Vouchers cannot be extended or assigned to another customer.</p>

            <h3>DELIVERY</h3>
            <p>Orders will be delivered to the shipping address provided at checkout. It is your responsibility to ensure the address is accessible during working hours. Delivery times vary by product availability, and in the case of multiple items, the longer delivery time will apply.</p>
            <p>Tread Co does not assume sourcing risk in cases where items are described without actual availability. For details on returns, refer to our Delivery & Returns section.</p>

            <h3>SERVICE AND COMPLAINTS</h3>
            <p>Customer satisfaction is a priority at Tread Co. For any service inquiries or complaints, please contact our customer service team at:</p>
            <p>📧 Email: support@TreadCo.com<br />
               📞 Phone: 0712569841</p>

            <h3>DATA SECURITY</h3>
            <p>During registration and checkout, you will be required to provide personal information necessary to fulfill your orders. All personal data will be kept confidential and handled in accordance with applicable data protection laws. We use secure encryption methods through our payment gateway to ensure the safety of your data during online transactions.</p>

            <h3>IMAGE RIGHTS</h3>
            <p>All images and media on TreadCo.com are the property of Tread Co. Use or reproduction in any form is prohibited without express written permission from Tread Co.</p>

            <h3>DELIVERY & RETURNS</h3>
            <p>Tread Co usually delivers within 4–6 working days from the order date. For multiple-item orders with varied timelines, the longest delivery time applies.</p>
            <p>We accept returns within 14 days of delivery for store credit, provided the item is unused, in its original packaging, and with all tags intact. Manufacturing defects can also be returned within 14 days, subject to inspection.</p>

            <h4>Important Notes:</h4>
            <ul>
                <li>Refunds are issued as store credits to your Tread Co account.</li>
                <li>If a return pickup fails after 3 attempts or isn’t initiated within 2 weeks, the request is canceled.</li>
                <li>For self-shipped returns not dispatched within 2 weeks of initiation, the refund is canceled.</li>
                <li>Products damaged due to customer misuse will not be accepted.</li>
            </ul>

            <h4>Return Options</h4>
            <ul>
                <li><strong>Option 01: Return via Third-Party Courier</strong><br />Ship to: Tread Co, Galle Road, Colombo 7<br />Contact: 0712569841</li>
                <li><strong>Option 02: Return via Scheduled Pickup</strong><br />Email support@TreadCo.com with your order number and reason for return.</li>
                <li><strong>Option 03: Return via Post Office</strong><br />Tread Co, Galle Road, Colombo 7, P.O. Box 85, Colombo 7, Sri Lanka</li>
                <li><strong>Option 04: Return at Tread Co Store</strong><br />Visit our Colombo 7 store with your receipt and return form.</li>
            </ul>

            <h3>INTERNATIONAL SHIPPING</h3>
            <p>Tread Co is not responsible for any import duties, taxes, or other charges levied by the customs department or government of the destination country. These must be borne by the customer.</p>
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