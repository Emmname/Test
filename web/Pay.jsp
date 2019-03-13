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
<%
                String sessionExpired = (String) session.getAttribute("sessionExpired");
                if(sessionExpired != null){
                    out.println("<b>" + sessionExpired + "</b>");
                    session.removeAttribute("sessionExpired");
                }
            %>
         
        <form action="Servlet" method="post" name="addOrder">
        <div class="">Visa  
            <input name="PaymentType"  size=30 type="text" />
        </div>
            
        <div >PayPal

        </div>
        
        <div>Google Wallet

        </div>
        
        <div >5 €/1 month
            <input name="AmountPaid"  size=30 type="text" />
        </div>
            
        <input type="submit"  value="Pay" />
        <input type="hidden" name ="action" value="addOrder" />
         </form>
</div>
        
    </body>
</html>
