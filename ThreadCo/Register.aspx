<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ThreadCo.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: darkgray;
        }

        .container {
            display: flex;
            height: 100vh;
        }

        .form-container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 10px rgba(0.1, 0, 0, 0.5);
            width: 1000px;
            text-align: left;
            margin-left: 150px;
            margin-top: 30px;
            margin-bottom: 50px;
        }

        .left-panel {
            flex: 1;
            padding: 60px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            background-color: #fff;
        }

        .left-panel h2 {
            font-size: 32px;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .input-group {
            width: 100%;
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            margin-bottom: 6px;
            font-size: 14px;
        }

        .input-group input {
            width: 100%;
            padding: 12px 16px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
        }

        .name-row {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            gap: 60px;
            width: 100%;
            margin-bottom: 20px;
        }

        .name-row .input-group {
            flex: 1;
        }

        .options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            font-size: 13px;
            margin-bottom: 20px;
        }

        .options input[type="checkbox"] {
            margin-right: 5px;
        }

        .options a {
            text-decoration: none;
            color: #007bff;
             
        }
        

        .btn-signin {
            width: 100%;
            padding: 14px;
            background-color: #3b49df;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 10px;
            margin-bottom: 15px;
            cursor: pointer;
            text-decoration:none;
            text-align: center;
            
        }

        .btn-signin:hover {
            background-color: darkblue;
        }

        .btn-google {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            background-color: white;
            font-size: 14px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            cursor: pointer;
        }

        .btn-google img {
            width: 20px;
            height: 20px;
        }

        .bottom-text {
            font-size: 13px;
            margin-top: 20px;
        }

        .bottom-text a {
            color: blue;
            text-decoration: none;
        }

        .right-panel {
            flex: 1;
            background: url('images/RegisterGirlImage.JFIF') no-repeat center center;
            background-size: cover;
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .right-panel {
                height: 300px;
            }

            .name-row {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
   <form id="form1" class="form-container" runat="server">
    <div class="container">
        <!-- Left Panel: Sign In Form -->
        <div class="left-panel">
            <h2>CREATE ACCOUNT</h2>

            <div class="name-row">
                <div class="input-group">
                    <label for="txtFirstName">First Name</label>
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="Enter your first name" />
                </div>

                <div class="input-group">
                    <label for="txtLastName">Last Name</label>
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Enter your last name" />
                </div>
            </div>

            <div class="input-group">
                <label for="txtEmail">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email" />
            </div>

            <div class="input-group">
                <label for="txtPassword">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password" />
            </div>
           
            <asp:Button ID="btnAdd" runat="server" CssClass="btn-signin" Text="Create Account" OnClick="btnAdd_Click" />
               
            <div class="bottom-text">
                Already have an account? <a href="Login.aspx">Login</a>
            </div>
            <br /><br />
            <br /><br />

            <button class="btn-google" type="button">
                <img src="images/googleLogo.png" alt="Google" />
                Sign in with Google
            </button>
        </div>

        <!-- Right Panel: Image -->
        <div class="right-panel"></div>
    </div>
</form>
</body>
</html>
