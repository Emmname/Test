/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Daos.AnimeDao;
import Daos.GenreAnimeDao;
import Daos.GenreDao;
import Dtos.Anime;
import java.util.ArrayList;
import java.util.Scanner;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author D00188619
 */
public class SearchAnimeByGenreCommand implements Command {
    
     @Override
     public String execute(HttpServletRequest request, HttpServletResponse response) {
         String forwardToJsp="";
   
             String genreName = request.getParameter("genre_name");
         if((genreName != null)&&(!genreName.equals(""))){
             GenreDao gDao = new GenreDao("anime");
             GenreAnimeDao gaDao =new GenreAnimeDao("anime");
             AnimeDao aDao = new AnimeDao("anime");
             ArrayList<Integer> genreIds=new ArrayList<>();
             for(int i =0; i<=gDao.getNumberOfGenreIds(genreName);i++){                
                genreIds.add(gDao.getGenreId(genreName));
                ArrayList<Integer> animeIds = gaDao.getAnimeIdBygenreId(genreIds.get(i));
                ArrayList<Anime> animes = new ArrayList<>();
             if((animeIds != null && (!animeIds.isEmpty()))){
                 for(int animeId : animeIds){
                     
                     
                     Anime a = aDao.getAnimeById(animeId);
                     animes.add(a);
                    HttpSession session = request.getSession();
                    session.setAttribute("genre", animes);
                    forwardToJsp = "searchAnimeByGenre.jsp";

                 }
             } 
             else {
            //if don't get the bookName,Send the user to the error page and inform them of this
            HttpSession session = request.getSession();

            session.setAttribute("errorMessage", "can't get anime id ");
            forwardToJsp = "error.jsp";
        }
             }
   
         } 
         else {
            //if don't get the bookName,Send the user to the error page and inform them of this
            HttpSession session = request.getSession();

            session.setAttribute("errorMessage", "BookNotFound");
            forwardToJsp = "error.jsp";

        }

         return forwardToJsp;
         }
}