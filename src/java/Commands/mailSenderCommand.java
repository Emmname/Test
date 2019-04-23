/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import Daos.MailDispatch;
import Daos.UserDao;
import Dtos.User;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author omy
 */
public class mailSenderCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String forwardToJsp = null;

        String name = request.getParameter("name");
        String fromEmail = request.getParameter("email");
        String message = request.getParameter("message");

        if (name != null && !name.equals("")
                && fromEmail != null && !fromEmail.equals("")
                && message != null && !message.equals("")) {
            UserDao u = new UserDao("anime");
            User user = u.getUserByEmail(fromEmail);
            if (user != null && !user.equals("")) {
                try {
                    //send email to user with a resetpassword link
                    MailDispatch.SendResetPasswordLink(name, fromEmail);
                    String responseMessage = "Your Email has been sent successfully";
                    HttpSession session = request.getSession();
                    session.setAttribute("responseMessage", responseMessage);
                    forwardToJsp = "contactStatus.jsp";
                
                } catch (MessagingException ex) {
//                    Logger.getLogger(mailSenderCommand.class.getName()).log(Level.SEVERE, null, ex);
                    String errorMessage = "Sorry The mail message required a valid address. "+ ex.getMessage();
                    HttpSession session = request.getSession();
                    session.setAttribute("failedMessage", errorMessage);
                    forwardToJsp = "contactStatus.jsp";
                }
            }
        } else {
            String failedMessage = "Sorry, your email has not been sent. "
                    + " Click <a href='contactUs.jsp'> here </a> go back and try again.";
            HttpSession session = request.getSession();
            session.setAttribute("failedMessage", failedMessage);
            forwardToJsp = "contactStatus.jsp";
        }

        return forwardToJsp;
    }
    
}
