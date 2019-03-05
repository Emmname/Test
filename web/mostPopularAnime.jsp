<%-- 
    Document   : mostPopularAnime
    Created on : 21-Feb-2019, 09:45:25
    Author     : D00195567
--%>

<%@page import="Dtos.Rating"%>
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
                    
                    <th>ID</th>
                    <th>Name</th>
                    <th>Animator</th>
                    <th>Release Date</th>
                    <th>Rating</th>
                        
                </tr>
                
                
                <%
                ArrayList<Anime> animes = new ArrayList<>();
                AnimeDao aDao = new AnimeDao("anime");
                RatingDao rDao = new RatingDao("anime");
                double rating=0;
                double first=0;
                double second=0;
                double third=0;
                double fourth=0;
                double fifth=0;
                for(int i=0; i<aDao.getAllAnimes().size();i++){
                    rating=rDao.getAverageRating(aDao.getAllAnimes().get(i).getAnime_id());
                   
                    if(rating>first){
                        
                        animes.add(aDao.getAllAnimes().get(i));
                        first=rating;
                    }
                    else if(rating>second){
                        animes.add(aDao.getAllAnimes().get(i));
                        second=rating;
                    }
                    else if(rating>third){
                        animes.add(aDao.getAllAnimes().get(i));
                        third=rating;
                    }
                    else if(rating>fourth){
                        animes.add(aDao.getAllAnimes().get(i));
                        fourth=rating;
                    }
                    else if(rating>fifth){
                        animes.add(aDao.getAllAnimes().get(i));
                        fifth=rating;
                    }
                    
                }
          Rating resultAnime = (Rating)session.getAttribute("animeRatings");
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
                    <td><%=rDao.getAverageRating(a.getAnime_id())%></td>
                    
                  
                </tr>
                
                <%
                    }
                }
            %>
             </table>
        
    </body>
</html>
