///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package Daos;
//
//import java.util.Properties;
//import javax.mail.Message;
//import javax.mail.MessagingException;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.AddressException;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//
///**
// *
// * @author omy
// */
//public class MailDispatch {
//    public static void SendResetPasswordLink(String name, String fromEmail) throws AddressException, MessagingException {
//        final String toEmail = "eyuriko@gmail.com";
//        final String password = "EnimeProject123";
//
//        Properties pro = new Properties();
//        pro.put("mail.smtp.host", "smtp.gmail.com");
//        pro.put("mail.smtp.port", "587");
//        pro.put("mail.smtp.auth", "true");
//        pro.put("mail.smtp.starttls.enable", "true");
//
//        Session session = Session.getInstance(pro, new javax.mail.Authenticator() {
//            @Override
//            protected PasswordAuthentication getPasswordAuthentication() {
//                return new PasswordAuthentication(toEmail, password);
//            }
//        });
//        //generate link
//        String link = "http://localhost:8084/AnimeProject2.0/resetPassword.jsp";
//        
//        StringBuilder mailBody = new StringBuilder();
//        mailBody.append("<div>")
//                .append("  Dear User, <br/>")
//                .append("  We received your reset password request, Please check the link below to reset your password. <br/>")
//                .append("  Click <a href=\"")
//                .append(link)
//                .append("\">here</a> to reset your password. <br/>")
//                .append("  <br/><br/>")
//                .append("  Regards,<br/>")
//                .append("  Enime Team")
//                .append("</div>");
//        
//        Message message = new MimeMessage(session);
//        message.setFrom(new InternetAddress(toEmail));
//        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(fromEmail));
//        message.setSubject("Reset Password");
//        message.setContent(mailBody.toString(), "text/html; charset=utf-8");
//        Transport.send(message);
//        
//    }
//}
