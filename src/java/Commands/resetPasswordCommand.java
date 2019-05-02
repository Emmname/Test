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
import javax.servlet.http.HttpSession;

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
        String oldpass = request.getParameter("Password");
        String newpass = request.getParameter("newpass");
        
        //when email is valid
        if (email != null && email.equals("")) {
            if(oldpass.length()>8){
                UserDao uDao = new UserDao("anime");
                int returnedValue = uDao.updateUserPassword(email, oldpass, newpass);
                if(returnedValue != -1){
                    HttpSession session = request.getSession();
                    session.setAttribute("successMessage", "UpdatePasswordSuccessfully");
                    forwardToJsp = "login.jsp";
                }else{
                String errorMessage = "Please insert coorect email address or passwords.";
                HttpSession session = request.getSession();
                session.setAttribute("errorMessage", errorMessage);
                forwardToJsp = "error.jsp";
                }
            }else{
                String errorMessage = "Passwords Dont match and password must be atleast 8 characters";
                HttpSession session = request.getSession();
                session.setAttribute("errorMessage", errorMessage);
                forwardToJsp = "error.jsp";
            }
            
        }else{
            String errorMessage = "Please insert your email address.";
            HttpSession session = request.getSession();
            session.setAttribute("errorMessage", errorMessage);
            forwardToJsp = "error.jsp";
    }
        return forwardToJsp;
    }
    
    

}
