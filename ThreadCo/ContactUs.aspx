<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ThreadCo.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Reused styles from Original_nav_code */

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
            color: #001F3F;
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

        .contact-section {
            margin-top: 10px;
            padding: 20px;
            display: flex;
            gap: 40px;
        }

        .contact-form {
            flex: 1;
        }

        .contact-form h1 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .contact-form label {
            font-weight: bold;
        }

        .contact-form input[type="text"],
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
        }

        .checkbox-container {
            margin-bottom: 15px;
        }

        .submit-btn {
            background-color: black;
            color: white;
            padding: 10px 20px;
            border: none;
            font-weight: bold;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: gray;
        }

        .contact-image img {
            width: 750px;
            max-width: 100%;
            height: auto;
        }

        .footer {
            background-color: black;
            color: white;
            padding: 40px 20px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
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

        .newsletter button {
            padding: 8px 12px;
            background-color: white;
            color: gray;
            border: none;
            cursor: pointer;
            border-radius: 3px;
            font-weight: bold;
        }

        .newsletter button:hover {
            color: white;
            background-color: black;
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
</head>
<body>
   <form id="form1" runat="server">
    <!-- Header / Logo -->
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

    <!-- Navigation Bar -->
    <nav>
        <ul>
            <li><a href="Collection.aspx">COLLECTION</a></li>
            <li><a href="Trends.aspx">TRENDS</a></li>
            <li><a href="New_Arrivals.aspx">NEW ARRIVALS</a></li>
            <li><a href="ContactUs.aspx">CONTACT US</a></li>
            <li><a href="AboutUs.aspx">ABOUT US</a></li>
        </ul>
    </nav>

    <!-- Contact Form Section -->
    <main>
        <div class="contact-section">
            <div class="contact-form">
                <h1>Get in touch</h1>

                <label for="name">Name</label><br />
                <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name" Width="657px"></asp:TextBox><br />

                <label for="email">Email</label><br />
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email" Width="655px"></asp:TextBox><br />

                <label for="content">Content</label><br />
                <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" Rows="5" placeholder="Enter your message" Width="657px"></asp:TextBox><br />

                <div class="checkbox-container">
                    <asp:CheckBox ID="chkNewsletter" runat="server" />
                    <label for="newsletter">I would like to receive the newsletter.</label>
                </div>

                <asp:Label ID="SuccessLabel" runat="server" Visible="false"></asp:Label><br />
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="submit-btn" OnClick="SubmitButton_Click" />
            </div>

            <div class="contact-image">
                <img src="images/contactUsImage.jpg" alt="Contact Us" />
            </div>
        </div>
    </main>

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
            <asp:TextBox ID="txtNewsletterEmail" runat="server" placeholder="Enter your email address" /><br />
            <asp:Button ID="btnNewsletterSubmit" runat="server" Text="SUBMIT" OnClick="NewsletterSubmit_Click" CssClass="submit-btn" />
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
