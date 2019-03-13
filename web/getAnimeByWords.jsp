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
           Object resultAnime = session.getAttribute("Animes");
           if(resultAnime != null){
               ArrayList<Anime> animes = (ArrayList<Anime>) resultAnime;
           
              
            

        %>
        
        There were <%=animes.size()%> Animes found in the database containing that name.
        
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
             <%
                session.removeAttribute("animes");
        }  else
        {
        %>
        
        <p>Search Problem</p>
         
<%
         }

        %>
        
       
    </body>
</html>
