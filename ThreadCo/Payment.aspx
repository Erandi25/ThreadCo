<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="ThreadCo.Payment" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e7e2d4;
            margin: 0;
          
            
            justify-content: center;
            align-items: center;
        }

        .main-container {
            display: flex;
            max-width: auto;
            margin: auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            align-content:center;
            justify-content: center;
            align-items: center;

        }
       

       
        .h2 {
            margin-top: 50px;
        }

        .right-column {
            width: 50%;
            padding: 20px;
            background-color: #f7f5f0;
            margin: 30px 55px;
            justify-content:space-between;
        }

        .product {
            display: flex;
            margin-bottom: 50px;
        }

        .product img {
            width: 80px;
            height: auto;
            margin-right: 15px;
             margin-top:22px;
           
        }

        .product-details {
            font-size: 14px;
            margin-top:50px;

        }

        .product-details strong {
            display: block;
            font-size: 16px;

        }
        .container{
            display:flex;
            flex-direction: column;
            width: 100%;
            
        }
        .summary {
            margin-bottom: 30px; 
            justify-content: flex-end;
            height: 20%;
        }
       
        .summary strong {
            font-size: 16px;
        }

        .border-separator {
            border-top: 2px solid #000; /* First border */
            margin: 10px 0; /* Space above and below the border */
            margin-top: -20px;
        }

           
      

        .paymentinfo {
            height: 80%;
        }

        .input-box {
            width: 96%;
            padding: 8px;
            margin: 8px 0;
        }
        .input-box_button {
            background-color: #B8B8B8;
            padding: 8px;
            text-align: center;
            width: 100%;
            border: none;
            cursor: pointer;
             margin-bottom:10px;
        }

        .black-button {
            background-color: black;
            color: white;
            margin-left: 160px;
            width: 50%;
            border: none;
            cursor: pointer;
            border-radius: 10px;
            padding: 14px;
            font-size:16px;
            font-weight:bold
           
        }
            .black-button:hover {
                background-color: #333;
            }

        .section-title {
            font-size: 16px;
            font-weight: bold;
            margin-top: 20px;
            margin: 10px 10px;
        }

        .payment-row {
            display: flex;
            gap: 4%;
        }

        .payment-row .input-box {
            width: 68%;
          
        }
        .payment-methods {
            display: flex;
            gap: 20px;
            margin: 10px 0;
        }

        .payment-option {
            display: flex;
            align-items: center;
            cursor: pointer;
            border: 1px solid #ccc;
            padding: 15px;
            border-radius: 8px;
            transition: border-color 0.3s;
        }

            .payment-option:hover {
                border-color: #000;
            }

            .payment-option input[type="radio"] {
                display: none;
            }

            .payment-option img {
                height: 30px;
                width: auto;
            }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-container">
            

            <!-- Right Column -->
            <div class="right-column">
                <div class ="container">
               <div class="summary">
                    <p>Total Amount: $274.97</p>
                    <p>Shipping Fee: NIL</p>
                    <p>Taxes: $8.2</p>
                    <p><strong>TOTAL: $283.17</strong></p>
                </div>

                    <div class="border-separator"></div>

              <div class ="paymentinfo" >
                <div class="section-title">Apply Coupon</div>
                <asp:TextBox ID="txtCoupon" runat="server" CssClass="input-box" placeholder="Enter coupon here"></asp:TextBox>
                <asp:Button ID="btnApply" runat="server" Text="Apply" CssClass="input-box_button" OnClick="btnApply_Click" />

                <div class="section-title">Select Payment Method</div>
                <div class="payment-methods">
                    <label class="payment-option">
                        <input type="radio" name="payment" value="Card" checked =""/>
                        <img src="/images/Credit_card.png" alt="Credit/Debit Card" />
                    </label>
                    <label class="payment-option">
                        <input type="radio" name="payment" value="PayPal" />
                        <img src="/images/Paypal-Logo.jpg" alt="PayPal" />
                    </label>
                </div>

                <div class="section-title">Payment Details</div>
                <asp:TextBox ID="txtCardName" runat="server" CssClass="input-box" placeholder="Name on Card"></asp:TextBox>
                <asp:TextBox ID="txtCardNumber" runat="server" CssClass="input-box" placeholder="Card Number"></asp:TextBox>

                <div class="payment-row">
                    <asp:TextBox ID="txtExpiration" runat="server" CssClass="input-box" placeholder="MM/YY"></asp:TextBox>
                    <asp:TextBox ID="txtCVV" runat="server" CssClass="input-box" placeholder="CVV"></asp:TextBox>
                </div>
                  <br/>
                <small>By clicking "Pay" I agree to company terms of service.</small>
                  <br /><br/>
                <asp:Button ID="btnPay" runat="server" Text="Pay $283.17" CssClass="black-button" OnClick="btnPay_Click" />
                </div>
              </div>
           </div>
        </div>
    </form>
</body>
</html>
