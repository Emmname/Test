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
        HttpSession session = request.getSession();
         String forwardToJsp = "mostPopularAnime.jsp";
        
        int user_id=(int) session.getAttribute("ID");
        String anime_id=request.getParameter("Heart");
        
        
        
        int animeId=Integer.parseInt(anime_id);
        int userId=0;
        
        FavouriteDao fDao = new FavouriteDao("anime");
       
        if(user_id !=-1 && !anime_id.equals("") ){
                
                
                if(userId==-1){
                    forwardToJsp="login.jsp";
                    session.setAttribute("errorMessage", "You must be logged in");
                }
            
                 if(!fDao.checkExist(userId, animeId)){
                    
                String errorMessage = "This anime is already inside your favourites";
                session.setAttribute("errorMessage", errorMessage);
                forwardToJsp = "error.jsp";
                }
                else{
                int newId = fDao.addFavourite(userId,animeId);
                if(newId==-1){
                String errorMessage = "There was a problem adding this to your favourites";
                session.setAttribute("errorMessage", errorMessage);
                forwardToJsp = "error.jsp";
                }
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
