/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Daos.FavouriteDao;
import Daos.RatingDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author D00195567
 */
public class AddFavouriteCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
         String forwardToJsp = null;
        
        String user_id=request.getParameter("user_id");
        String anime_id=request.getParameter("anime_id");
        
        int animeId=0;
        int userId=0;
        
        FavouriteDao fDao = new FavouriteDao("anime");
       
        
        if(user_id !=null && anime_id!=null ){
        
                HttpSession session = request.getSession();
                userId= (int) session.getAttribute("ID");
                animeId=Integer.parseInt(anime_id);
                
                if(userId==-1){
                    forwardToJsp="login.jsp";
                    session.setAttribute("errorMessage", "You must be logged in");
                }
            
           
                int newId = fDao.addFavourite(userId,animeId);
                if(newId==-1){
                String errorMessage = "Rating could not be added";
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
