<%-- 
    Document   : newUpdate
    Created on : 26-Apr-2019, 11:19:27
    Author     : D00188619
--%>

<%@page import="Daos.AnimeDao"%>
<%@page import="Daos.GenreAnimeDao"%>
<%@page import="Daos.GenreDao"%>
<%@page import="Dtos.Anime"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The latest upload</title>
    </head>
    <body>
        <table>
            <tr>
                    
                    <th>Anime ID</th>
                    <th>Anime Name</th>
                    <th>Anime Animator</th>
                    <th>Anime Release Date</th>
                    <th>Anime Image</th>
                </tr>
        </table>
         <%

                     
           
           ArrayList<Anime> animes = new ArrayList<>();
           ArrayList<Integer> animeids = new ArrayList<>();
             AnimeDao aDao = new AnimeDao("anime");
            for(int i =0; i<aDao.getAllAnimes().size();i++){
                if(aDao.getAllAnimes().get(i).getAnime_id()>6){
                    animeids.add(i);
                }
            }
             
             

            for(int i =0; i<((aDao.getAllAnimes().size())-6);i++){
                if(animeids.get(i)>6){
                Anime a = aDao.getAnimeById(animeids.get(i));
                     animes.add(a);
             
             } 
   
                }
             
        
           
          Object resultAnime = session.getAttribute("genre");
            
              

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
                    <td><a href="animeInfo.jsp?anime=<%=a.getAnimename()%>&aID=<%=a.getAnime_id()%>"><%=a.getAnimename()%></td>
                    <td><%=a.getAnimator()%></td>
                    <td><%=a.getReleasedate()%></td>
                    <td><img src="images/<%=a.getImageUrl() %>" alt="<%=a.getImageUrl() %>" height="260" width="200"></td>
                              
                 
                </tr>
                
                <%
                    }
                }
            %>
    </body>
</html>
