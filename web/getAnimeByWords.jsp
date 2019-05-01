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
        <%@include file="internationalisationHeader.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=dataBundle.getString("search_title")%></title>
    </head>
    <body>
        <table>
            <tr>
                    
                    <th><%=dataBundle.getString("search_id")%></th>
                    <th><%=dataBundle.getString("search_name")%></th>
                    <th><%=dataBundle.getString("search_animator")%></th>
                    <th><%=dataBundle.getString("search_releasedate")%></th>
                    <th><%=dataBundle.getString("search_picture")%></th>
                </tr>
        </table>
        <a href="home.jsp"><%=dataBundle.getString("search_back")%></a>
        <%
           Object resultAnime = session.getAttribute("Animes");
           if(resultAnime != null){
               ArrayList<Anime> animes = (ArrayList<Anime>) resultAnime;
           
              
            

        %>
        
        <%=dataBundle.getString("search_text")%><%=animes.size()%> <%=dataBundle.getString("search_text1")%>
        
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
                 <td><a href="animeVideo.jsp?anime=<%=a.getAnimename()%>&aID=<%=a.getAnime_id()%>"><%=a.getAnimename()%></td>
                 <td><%=a.getAnimator()%></td>
                 <td><%=a.getReleasedate()%></td>
                 <td><img src="images/<%=a.getImageUrl() %>" alt="<%=a.getImageUrl() %>" height="260" width="200"></td>
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
