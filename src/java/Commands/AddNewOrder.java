/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author D00188619
 */
public class AddNewOrder implements Command {
    
    @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {
       String forwardToJsp = null;
       
       String paymentType = request.getParameter("PaymentType");
       String AmountPaid = request.getParameter("AmountPaid");
       if(paymentType !=null && AmountPaid !=null && paymentType.equals("") && AmountPaid.equals("") ){
           
           if(paymentType != "Visa" && paymentType !="Paypal" && paymentType != ""){
               if((AmountPaid < 5) &&(AmountPaid > 5)){
       HttpSession session = request.getSession();
       String userId = session.getId();
       DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
       LocalDateTime datePaid = LocalDateTime.now();
       LocalDateTime dateExpired = datePaid.plusDays(30);
               }
           } 
           
           else{}
        }
}
}