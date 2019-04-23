<%-- 
    Document   : addMessage
    Created on : 2019-4-15, 21:44:27
    Author     : D00188619
--%>

<%@page import="Daos.AnimeDao"%>
<%@page import="Dtos.Anime"%>
<%@page import="Dtos.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comment</title>
    </head>
    <body>
          <%
            User user = (User) session.getAttribute("loggedInUser");
            
                        session=request.getSession();
                        int animeID=Integer.parseInt(request.getParameter("aID"));
                        session.setAttribute("aID", animeID);
                        String animeName=request.getParameter("anime");
                        AnimeDao aDao = new AnimeDao("anime");
                        Anime anime= aDao.getAnimeById(animeID);
                    
                    
        %>
      <form action="Servlet" method="post">
          
                        Commenter：<input type = "hidden" vlaue="" name = "wholeft"/>
                        Comment Title：<input type = "text" name = "title"/>
                        Comment Context：<input type = "text" name = "context"/>

                <button type = "submit" value = "comment">
                <input type="hidden" name="action" value="addMessage"  />
                </button> 
                <input type = "reset" value = "reset"/>

    </body>
</html>
