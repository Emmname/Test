/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Daos.UserDao;
import Dtos.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author omy
 */
public class resetPasswordCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String forwardToJsp = null;

        //get email address as parameter
        String email = request.getParameter("emailAddress");
        //when email is valid
        if (email != null && email.equals("")) {
            //get user by given email
            UserDao uDao = new UserDao("anime");
            User user1 = uDao.getUserByEmail(email);
            
            if(user1 != null){
                
            }
        }
        return forwardToJsp;
    }
    
    

}
