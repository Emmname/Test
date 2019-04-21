<%-- 
    Document   : Pay
    Created on : 2019-4-21, 23:54:22
    Author     : user
--%>

<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/pay.css" rel="stylesheet"/>
        <title>Upgrade</title>
    </head>
    <body>

        <div class="container">
        <h1>Choose Payment</h1>
<%
                String sessionExpired = (String) session.getAttribute("sessionExpired");
                if(sessionExpired != null){
                    out.println("<b>" + sessionExpired + "</b>");
                    session.removeAttribute("sessionExpired");
                }
            %>
         
        <form action="Servlet" method="post" name="addOrder">
                  <div class="sub-body">
  <header class="header">
    <h1 class="price"> Choose Payment</h1>
  </header>

  <div class="pay-select">
    <div class="pay-select__item pay-select--card is-active">
      <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/346994/Card%20Icon.svg" alt="" />
      <p>Debit/Credit Card</p>
    </div>

    <div class="separator"></div>

    <div class="pay-select__item pay-select--paypal">
      <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/346994/Pp%20Icon.svg" alt="" />
      <p>PayPal</p>
    </div>
  </div>

  <div class="select-body">
    <div class="select-body__content select-body--card is-active">
      <form action="/" method="post" id="cardForm">
        <label class="form__label" for="card-number">Card Number</label>
        <div class="card-input" id="card-number"></div>

        <label class="form__label" for="expiration-month">Expiration Date</label>
        <div class="date__container">
          <div class="card-input" id="expiration-month"></div>

          <div class="card-input" id="expiration-year"></div>
        </div>

        <label class="form__label" for="cvv">CVV</label>
        <div class="card-input" id="cvv"></div>

        <label class="form__label" for="cvv">Billing Zip Code</label>
        <div class="card-input" id="postal-code"></div>
        
        <input type="submit" value="Subscribe" id="submit" />
      </form>
    </div>
    
    <div class="select-body__content select-body--paypal">
      <script src="https://www.paypalobjects.com/api/button.js?"
     data-merchant="braintree"
     data-id="paypal-button"
     data-button="subscribe"
     data-color="gold"
     data-size="medium"
     data-shape="pill"
     data-button_type="submit"
     data-button_disabled="false"
 ></script>
    </div>
    
    
  </div>
</div>

<!-- Load the required client component. -->
<script src="https://js.braintreegateway.com/web/3.43.0/js/client.min.js"></script>

<!-- Load Hosted Fields component. -->
<script src="https://js.braintreegateway.com/web/3.43.0/js/hosted-fields.min.js"></script>
           <select>
                    <option value="Visa" name="PaymentType"  >Visa</option>
                    <option value="PayPal" name="PaymentType"  >Pay Pal</option>
                    <option value="GooglePay" name="PaymentType"  >Google Pay</option>
           </select>
            
            <div>
                Card Number
                <input name="CardNumber" size="24" type="text" required/>
            </div>
            
            <div>
                Cvc
                <input name="cvc" size="10" type="text" required/>
            </div>
        
        <div >€5 for 1 month
            <input name="AmountPaid"  size=30 type="text" required/>
        </div>
        <input type="submit"  value="Pay" />
        <input type="hidden" name ="action" value="addOrder" />
        </div>
         </form>
       
         <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/346994/Card%20Icon.svg" alt="" />
          <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/346994/Pp%20Icon.svg" alt="" />
          <script src="js/pay.js" type="text/javascript"></script>
    </body>
</html>
