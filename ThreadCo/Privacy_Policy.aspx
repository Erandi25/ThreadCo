<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Privacy_Policy.aspx.cs" Inherits="ThreadCo.Privacy_Policy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Privacy And Policy</title>
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

        .Logo .cart img{
            width:30px;
            height:auto;
            margin-left:1050px;
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

        .content img{
            width:100%;
            height:auto;
            opacity: 0.3;

        }

        .content h2{
            margin-top:-400px;
            text-align:center;
            font-size:30px
        }

        .content p {
            font-size: 16px;
            line-height: 1.8;
            margin-bottom: 20px;
            color: #333;
            text-align:center;
            font-weight:bold;
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

      
        <div style="height:0px"></div>

        <div class="container" style="max-width: 1000px; margin: 25px auto; padding: 2px;font-size:17px; text-align:justify; font-family: Arial, sans-serif;">
    <h2 style="text-align: center;">Privacy Policy</h2>

        <p>TreadCo.com respects the privacy of our users and prioritizes the safety and security of their personal data. We are committed to handling all information provided to us with the utmost care, integrity, and in compliance with applicable data protection laws. This commitment also extends to our collaboration with partners and third parties. However, Tread Co is not liable for any breaches or misuse of data by third-party sites or advertisers not directly under our control.We collect, store, and process personal data only as required to fulfill our contractual obligations and to provide you with our services. This may include data related to your purchases, account details, and preferences. For example, information about the items you place in your shopping cart may be used by Tread Co Private Limited for internal marketing purposes and product recommendations.Tread Co may use anonymized data for internal research, service improvement, and marketing analysis. Additionally, we may collect and process address and order data to send promotional content, discounts, or newsletters, in accordance with your communication preferences.</p>

        <p>Personal data may include your name, billing and shipping address, email address, and phone number. We use this data to manage your orders, improve our services, and provide customer support.We use technical and organizational security measures to safeguard your information from loss, destruction, unauthorized access, or disclosure. Despite our efforts and regular reviews of security protocols, complete protection from all threats cannot be guaranteed.This website uses Google Analytics (www.google.com) and other analytical tools to help us understand user behavior and improve your experience on TreadCo.com. Data collected via these tools may be used to tailor offers and services to your interests but will never be sold or disclosed to unauthorized third parties.</p>

        <p>You may request access to your personal data, correction of inaccuracies, or deletion of your information at any time, subject to legal obligations. Please contact our support team at <strong>support@TreadCo.com</strong> for any privacy-related inquiries.Tread Co reserves the right to modify this privacy policy as needed to reflect updates in our practices or legal requirements. Any changes will be posted on this page, and continued use of the site signifies acceptance of the revised terms.</p>


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

