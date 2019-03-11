<%-- 
    Document   : getAnimeByWords
    Created on : 2019-3-11, 21:17:36
    Author     : user
--%>

<%@page import="Daos.AnimeDao"%>
<%@page import="Dtos.Anime"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                    
                    <th>search_id</th>
                    <th>search_name</th>
                    <th>search_animator</th>
                    <th>search_releasedate</th>
                    <th>search_image</th>
                </tr>
        </table>
        <a href="home.jsp">Go home</a>
        <%
            ArrayList<Anime> animes = new ArrayList<>();
            String SearchWords = "";
            AnimeDao aDao = new AnimeDao("anime");
            
            for(int i =0; i<aDao.getAnimebyWords().size();i++){
                 animes = aDao.getAnimebyWords();
              
            }

        %>
        
        <%
        if(animes.size() >0)
        
        {
        %>
        <table>
            <%
            for(Anime a: animes)
            {
            
            
            %>
            
            <tr>
                    
                 <td><%=a.getAnime_id()%></td>
                 <td><%=a.getAnimename()%></td>
                 <td><%=a.getAnimator()%></td>
                 <td><%=a.getReleasedate()%></td>
                 <td><img src="Images/<%=a.getImageUrl() %>" alt="<%=a.getImageUrl() %>" height="260" width="200"></td>
            </tr>
                 <%
                    }
                }
            %>
             </table>
    </body>
</html>
