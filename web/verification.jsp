<%-- 
    Document   : home
    Created on : 27-Jan-2019, 23:00:31
    Author     : Jordan
--%>
<%@page import="Daos.UserDao"%>
<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="internationalisationHeader.jsp" %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- page content -->
        <meta name="Description" content="Anime Steaming Online">
        <meta name="Author" content="Emmine Anime">
        <title><%=dataBundle.getString("ver_title")%></title>

        <!-- Bootstrap ,CSS & Fonts -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,700,900" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body id="page-top" lang="en">
        <jsp:include page="view/header.jsp" />      

        <!-- container -->
        <section id="about" class="mz-module">
            <div class="container light-bg">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title"> 
                            <form action="Servlet" method="post" name="mailSender">
                                <table>
                                    <tr>
                                        <th><%=dataBundle.getString("ver_email")%></th>
                                        <th> <input type="text"size="40" name=""> </th>
                                        <th> <button type="submit" class=" btn"><%=dataBundle.getString("ver_send")%></button></th>                                   
                                    </tr>
                                    <tr>
                                        <th> <%=dataBundle.getString("ver_reset")%></th>
                                        <th> <a href="contactUs.jsp"> <%=dataBundle.getString("ver_contact")%></a> </th>
                                        <th></th>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>	
            </div>
        </section>
        <!-- /.container -->

        <jsp:include page="view/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/SmoothScroll.js"></script>
        <script src="js/theme-scripts.js"></script>
        <script src="js/navbar.js" type="text/javascript"></script>
        <script src="js/jquery.min.js"></script>
    </body>
</html>
