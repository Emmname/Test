<%-- 
    Document   : searchAnimeByGenre
    Created on : 2019-2-11, 20:14:48
    Author     : user
--%>

<%@page import="Daos.GenreAnimeDao"%>
<%@page import="Daos.GenreDao"%>
<%@page import="Daos.AnimeDao"%>
<%@page import="Dtos.Anime"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search By Genre</title>
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
//           int genreId;
//           String genreName = request.getParameter("genre_name");
//           GenreDao gDao = new GenreDao("anime");
//           AnimeDao aDao = new AnimeDao("anime");
//           GenreAnimeDao gaDao = new GenreAnimeDao("anime");
//           genreId=gDao.getGenreId(genreName);
//           gaDao.getAnimeIdBygenreId(genreId);
//           aDao.getAnimeById(genreId);
           
           
           
           ArrayList<Anime> animes = new ArrayList<>();
           String genreName = request.getParameter("genre_name");
         if((genreName != null)&&(!genreName.equals(""))){
             GenreDao gDao = new GenreDao("anime");
             GenreAnimeDao gaDao =new GenreAnimeDao("anime");
             AnimeDao aDao = new AnimeDao("anime");
             ArrayList<Integer> genreIds=new ArrayList<>();
             for(int i =0; i<gDao.getNumberOfGenreIds(genreName);i++){                
                genreIds.add(gDao.getGenreId(genreName));
                ArrayList<Integer> animeIds = gaDao.getAnimeIdBygenreId(genreIds.get(i));
                
             if((animeIds != null && (!animeIds.isEmpty()))){
                 for(int animeId : animeIds){
                     
                     
                     Anime a = aDao.getAnimeById(animeId);
                     animes.add(a);

                 }
             }
             }
         }
           
          Object resultAnime = session.getAttribute("genre");
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
                    <td><img src="Images/<%=a.getImageUrl() %>" alt="<%=a.getImageUrl() %>" height="260" width="200"></td>
                </tr>
                
                <%
                    }
                }
            %>
             </table>
             
       
    </body>
</html>
