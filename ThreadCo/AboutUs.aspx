<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="ThreadCo.AboutUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
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

        .content img{
            width:101%;
            height:500px;
            opacity: 0.3;
            margin-left:-15px;
            

        }

        .content h2{
            margin-top:-450px;
            text-align:center;
        }

        .content p {
            font-size: 16px;
            line-height: 1.8;
            margin-bottom: 20px;
            color: black;
            text-align:center;
            justify-content:start;
            font-weight:bold;
            
        }

        /* Footer styling */
        .footer {
            background-color: black;
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

        

        <div class="content">
              <div style="height:10px"></div> 
            <img src="images\about.jpg" />
            <h2>ABOUT US </h2>
          <p>
              Hello! We are Thread Co,a proudly Sri Lankan fashion and lifestyle brand 
              dedicated to redefining everyday style with a touch of elegance and 
              authenticity.
          </p>
          <p>
              Since our inception, Thread Co has grown into a trusted name in the local 
              fashion industry, offering a unique blend of contemporary trends and timeless <br />
              craftsmanship.  Our mission is to provide fashion-forward individuals with 
              stylish, high-quality apparel and accessories that complement their dynamic 
              lifestyles.<br /><br />
              At Thread Co, we believe in creating seamless shopping experiences, integrating 
              both physical and digital platforms to connect with our customers effortlessly.<br />
              With a strong commitment to innovation, customer satisfaction, and industry 
              expertise, we continuously evolve to meet the ever-changing demands of Sri Lanka’s <br />
              fashion-conscious market.
          </p>
          <p>
              Beyond fashion, we are passionate about empowering local talent. By collaborating
              with small and medium-scale entrepreneurs, we proudly support Sri Lanka’s thriving <br />
              creative community,ensuring that our collections not only reflect global trends
              but also celebrate local artistry.<br />
              Looking ahead, Thread Co is eager to expand its presence by forging meaningful 
              partnerships with international brands, bringing Sri Lankans closer to world-class <br />
              fashion and lifestyle experiences.Join us as we continue to shape the future
              of Sri Lankan fashion, one stylish step at a time.
         </p>
       </div>
      
        <div style="height:30px"></div>

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
