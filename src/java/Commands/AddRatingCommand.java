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
        
        String user_id=request.getParameter("user_id");
        String ratingNumber=request.getParameter("ratingNumber");
        String anime_id=request.getParameter("anime_id");
        
        int animeId=0;
        int ratingNum=0;
        int userId=0;
        
        boolean numberSupplied=true;
       
        
        if(user_id !=null && ratingNumber !=null && anime_id!=null ){
            try{
                userId=Integer.parseInt(user_id);
                ratingNum = Integer.parseInt(ratingNumber);
                animeId=Integer.parseInt(anime_id);
                    if(ratingNum > 5 && ratingNum <0){
                        forwardToJsp="error.jsp";
                        HttpSession session = request.getSession();
                        session.setAttribute("errorMessage", "Number must be between 1-5 inclusive");
                    }
            }
            catch(NumberFormatException e)
            {
                numberSupplied=false;
                forwardToJsp="error.jsp";
                HttpSession session = request.getSession();
                session.setAttribute("errorMessage", "Text was supplied instead of a nummber when rating an anime");
            }
                RatingDao ratDao = new RatingDao("anime");
                int newId = ratDao.addRating(animeId, ratingNum, userId);
                if(newId==1){
                    String errorMessage = "Rating could not be added";
                 HttpSession session = request.getSession();
                session.setAttribute("errorMessage", errorMessage);
                forwardToJsp = "error.jsp";
                }
                
                
                
                
            }
        
        else{
            String errorMessage = "One or more fields were missing.";
             HttpSession session = request.getSession();
            session.setAttribute("errorMessage", errorMessage);
            forwardToJsp = "error.jsp";
        }
        return forwardToJsp;
    }   
}
