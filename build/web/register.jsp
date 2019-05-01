<%-- 
    Document   : register
    Created on : 4-Feb-2019, 20:18:33
    Author     : ruihu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dtos.User"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="internationalisationHeader.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../src/java/css/login.css" rel="stylesheet" type="text/css"/>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title><%=dataBundle.getString("r_title")%></title>
    </head>
    <body>
            <div class="container">
        <div class="row">
		<div class="col-md-5 mx-auto">
		<div id="first">

		<div class="logo mb-3">
		<div class="col-md-12 text-center">
         <h1><%=dataBundle.getString("r_register")%></h1>
         
                    </div>
                </div>
             <form action="Servlet" method="post" name="register">
                 <div class="form-group">
                    
                    <label for="exampleInputUsername"><%=dataBundle.getString("r_username")%></label>
                        <input name="Username" required size=20 class="form-control" id="username" type="text" placeholder="<%=dataBundle.getString("r_username1")%>" /> </td> 
                </div>
                 <div class="form-group">
                        <label for="exampleInputPassword"><%=dataBundle.getString("r_password")%></label>
                        <input name="Password" required size=10  class="form-control" id="password"  type="password" placeholder="<%=dataBundle.getString("r_password1")%>"/> </td> 
                   </div>
                 <div class="form-group">
                        <label for="exampleInputPassword"><%=dataBundle.getString("r_re-enter")%></label>
                        <input name="Password2" required size=10  class="form-control" id="password"  type="password" placeholder="<%=dataBundle.getString("r_password2")%>"/> </td> 
                   </div>
                    <div class="form-group">                  
                    <label for="exampleInputEmail1"><%=dataBundle.getString("r_email")%></label>
                        <input name="Email" required size=20 class="form-control" id="email" type="email" placeholder="<%=dataBundle.getString("r_email1")%>" /> </td> 
                </div>
                  
                <div class="col-md-12 text-center ">
                    <button type="submit"  class=" btn btn-block mybtn btn-primary tx-tfm" ><%=dataBundle.getString("r_register1")%></button>
                 </div>
                <div class="form-group">
                   <p class="text-center"><a href="login.jsp" id="signup" ><%=dataBundle.getString("r_backlog")%></a></p>
                </div>
 
                
                 <input type="hidden" name ="action" value="register" />
        </form>           
            </div>
            </div>
          </div>
	</div>

    
       
    </body>
</html>
