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
import java.util.Random;
import javax.servlet.http.HttpSession;

/**
 *
 * @author omy
 */
public class randomAnimesCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String forwardToJsp = null;
        
        Random rand = new Random();
        //connect to the Anime Dao from the database
        AnimeDao ad = new AnimeDao("anime");
        
        //assign it into new arraylist,create new anime
        ArrayList<Anime> list = ad.getAllAnimes();
        Anime a1 = new Anime();
        if(!list.isEmpty()){
            int num = list.size();
            for(int i = 0; i<= num; i++){
                int randnum = rand.nextInt(num);
                a1 = list.get(randnum);
                list.remove(a1);                
            }
            HttpSession session = request.getSession();
            session.setAttribute("randomAnime", a1);
            
            
        }
        
        
        return forwardToJsp;
               
    }
    
}
