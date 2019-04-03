/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Daos.AnimeDao;
import Dtos.Anime;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class GetAnimebyWordsCommand implements Command {
    @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {
       String forwardToJsp= "";
       
       String animeName = request.getParameter("anime_name");
       if((animeName != null)&&(!animeName.equals(""))){
           AnimeDao aDao = new AnimeDao("anime");
           
           HttpSession session = request.getSession();
           
           ArrayList<Anime> a = aDao.getAnimebyWords(animeName);
           session.setAttribute("Animes", a);
       
            forwardToJsp = "getAnimeByWords.jsp";
       } else {
           
            HttpSession session = request.getSession();
            session.setAttribute("errorMsg", "AnimeNotFound");
            forwardToJsp = "error.jsp";

        }
       return forwardToJsp;
   }}
