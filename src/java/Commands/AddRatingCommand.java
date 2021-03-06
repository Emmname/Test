/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Commands.Command;
import Daos.RatingDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author D00195567
 */
public class AddRatingCommand implements Command {
     public String execute(HttpServletRequest request, HttpServletResponse response) {
        String forwardToJsp = null;
        
        HttpSession session = request.getSession();
        int user_id=(int)session.getAttribute("ID");
        String ratingNumber=(String)(request.getParameter("rating"));
        int anime_id=(int)session.getAttribute("aID");
        
        int ratingNum=0;
        int userId=0;
        int animeId=0;
                    
        RatingDao ratDao = new RatingDao("anime");
        
        boolean numberSupplied=true;
       
        
        if(user_id !=-1 && ratingNumber !=null && anime_id!=-1 ){
            
            
            try{
                
                userId= (int) session.getAttribute("ID");
                animeId=(int) session.getAttribute("aID");
                ratingNum = Integer.parseInt(request.getParameter("rating"));
                
                if(userId==-1){
                    forwardToJsp="login.jsp";
                    session.setAttribute("errorMessage", "You must be logged in");
                }
                
                else if(ratingNum > 5 && ratingNum <0){
                        forwardToJsp="error.jsp";
                        session.setAttribute("errorMessage", "Number must be between 1-5 inclusive");
                    }
                    else if(!ratDao.checkRatingUser(userId, animeId)){
                        forwardToJsp="error.jsp";
                        session.setAttribute("errorMessage", "You have already added a rating to that anime");
                    }
            }
            catch(NumberFormatException e)
            {
                numberSupplied=false;
                forwardToJsp="error.jsp";
                session.setAttribute("errorMessage", "Text was supplied instead of a nummber when rating an anime");
            }
                
                int newId = ratDao.addRating(animeId, ratingNum, userId);
                if(newId==-1){
                    String errorMessage = "Rating could not be added";
                session.setAttribute("errorMessage", errorMessage);
                forwardToJsp = "error.jsp";
                }
                
            }
        
        
        else{
            String errorMessage = "One or more fields were missing.";
            session.setAttribute("errorMessage", errorMessage);
            forwardToJsp = "error.jsp";
        }
        return forwardToJsp;
    }   
}
