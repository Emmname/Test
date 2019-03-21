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
        <title>Upgrade</title>
    </head>
    <body>
        <h1>Pay</h1>
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

        
    </body>
</html>
