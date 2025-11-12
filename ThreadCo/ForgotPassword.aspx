<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="ThreadCo.ForgotPassword" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Forgot Password</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
   <style>
        body {
            margin: 70px;
            
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: darkgray;
        }

       .container {
           display: flex;
           margin-left: 30px;
           margin-top: 60px;
           margin-bottom: 60px;
           margin-right:40px;
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
            margin-bottom: 40px;
            text-align: center; 
            width: 100%; 
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
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
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
        }

        .btn-signin:hover {
            background-color: blue;
            
        }

        .right-panel {
            flex: 1;
            background: url('images/FPw.png') no-repeat center center;
            background-size: cover;
           
        }
      

        .form-container {
            background-color: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 10px 10px rgb(0.1,0, 0, 0.5);
        }

        .text-danger {
            color: red;
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }
            .right-panel {
                height: 300px;
            }
        }
        
       
    </style>
</head>
<body>

   
    <form id="form1" class="form-container" runat="server">
        <div class="container">
            <!-- Left Panel: Forgot Password Form -->
            <div class="left-panel">
                <h2>Forgot Password</h2>
                <asp:Label ID="StatusLabel" runat="server" CssClass="text-danger" />
                <div class="input-group">
                    <label for="txtEmail"></label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Enter your email" />
                </div>
               
                    <asp:Button ID="btnSubmit" runat="server" Text="Reset Password" CssClass="btn-signin" OnClick="SubmitButton_Click" />
               
                <div class="text">
                    <a href="Login.aspx">Back to Login</a>
                </div>
            </div>

            <!-- Right Panel: Image -->
            <div class="right-panel"></div>
        </div>
    </form>
 

   
</body>
 </html>