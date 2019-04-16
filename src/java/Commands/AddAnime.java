/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Daos.AnimeDao;

import java.sql.Date;
import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author D00188619
 */
public class AddAnime implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String forwardToJsp = null;

        String animeName = request.getParameter("anime_name");
       
         java.sql.Date today = java.sql.Date.valueOf(LocalDate.now()); 
         Date releaseDate = java.sql.Date.valueOf(request.getParameter("release_date"));
        String animator = request.getParameter("animator");
        String imageUrl = request.getParameter("imageUrl");
        
        if(animeName != null && !animeName.equals("") &&animator != null &&!animator.equals("")){
            AnimeDao aDao = new AnimeDao("anime");
            aDao.addAnime(animeName, releaseDate, animator, imageUrl);
            HttpSession session = request.getSession();
            forwardToJsp = "addAnime.jsp";
            
        }else {
            forwardToJsp = "error.jsp";
            HttpSession session = request.getSession();
            session.setAttribute("errorMessage", "Notvaliddata");
        }
         return forwardToJsp;
}}
