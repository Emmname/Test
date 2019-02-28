<%-- 
    Document   : mostPopularAnime
    Created on : 21-Feb-2019, 09:45:25
    Author     : D00195567
--%>

<%@page import="Daos.AnimeDao"%>
<%@page import="Daos.RatingDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dtos.Anime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Most popular Animes</title>
    </head>
    <body>
        <table>
            <tr>
                    
                    <th>Anime id</th>
                    <th>Name</th>
                    <th>Animator</th>
                    <th>Release Date</th>
                    <th>Rating</th>
                        
                </tr>
                
                
                <%
                ArrayList<Anime> animes = new ArrayList<>();
                AnimeDao aDao = new AnimeDao("anime");
                for(int i=0; i<aDao.getAllAnimesDescByRating().size();i++){
                if((aDao.getAllAnimesDescByRating().get(i) != null )){
                 animes.add(aDao.getAllAnimesDescByRating().get(i));
                }
        
             
                    
         
                }
          Object resultAnime = session.getAttribute("animeRatings");
            if(resultAnime != null){}
              

        %>
        
        
        <%
            if(animes.size() > 0)
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
                    
                  
                </tr>
                
                <%
                    }
                }
            %>
             </table>
        </table>
    </body>
</html>
