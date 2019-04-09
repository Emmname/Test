<%-- 
    Document   : Pay
    Created on : 2019-3-6, 23:54:22
    Author     : user
--%>

<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/vipchoose.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Pay</h1>

        <div class="container">
        <h1>Choose your starter!</h1>

         <input type="hidden" name="<%%>"
         
        <form action="Servlet" method="post" name="">
        <div class="">
            <label>Visa</label>
            <input name="paymentType" value="" class="form-control" id="email" type="hide" />
        </div>
            
        <div >
            <label >PayPal</label>
        </div>
        
        <div>
           <label >Google Wallet</label>
        </div>
        
        <div class="pokeball">
            <label>5 €/1 month</label>
        </div>
            
        <input type="hidden" name ="action" value="" />
         </form>
</div>
         <script>
            paypal.Buttons({
              createOrder: function(data, actions) {
                return actions.order.create({
                  purchase_units: [{
                    amount: {
                      value: '0.01'
                    }
                  }]
                });
              },
               onApprove: function(data, actions) {
                    return actions.order.capture().then(function(details) {
                      alert('Transaction completed by ' + details.payer.name.given_name);
                      return fetch('/paypal-transaction-complete', {
                        method: 'post',
                        headers: {
                          'content-type': 'application/json'
                        },
                        body: JSON.stringify({
                          orderID: data.orderID
                            })
                        });
                    });
                  }
            }).render('#paypal-button-container');
          </script>
         <script src="https://www.paypal.com/sdk/js?client-id=ARNsp7-1SHJUIf00GYwLBTxIE_1SeKGm1YbgavuslUZUWV2l7w8BKSwwF7v1CV9ESLIPc8j6R2H1i1e3"></script>
        <script src="https://www.paypal.com/sdk/js?client-id=ARNsp7-1SHJUIf00GYwLBTxIE_1SeKGm1YbgavuslUZUWV2l7w8BKSwwF7v1CV9ESLIPc8j6R2H1i1e3"></script>
        <script>paypal.Buttons().render('body');</script>
    </body>
</html>
