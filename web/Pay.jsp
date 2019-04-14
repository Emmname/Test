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
        
    </body>
</html>
