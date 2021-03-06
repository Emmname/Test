    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author Jordan
 */
public class UserDao extends Dao implements UserDaoInterface {

    public UserDao(String dbName){
        super(dbName);
    }
    /**
     * Get the user by the username and password given
     * 
     * @param username The username of the user.
     * @param password The password of the user.
     * @return The user if both parameters match in the database. 
     * If none matches the username and password, appropriate message will be returned.
     */
    @Override
    public User getUserByUsernamePassword(String username, String password) {
        
       Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User u = null;
        try{
            conn = getConnection();
            
            String query = "SELECT * FROM user WHERE username = ? ";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            
            rs = ps.executeQuery();
            
            if(rs.next()){
                boolean passwordMatches = false;
                String passwordFromDB = rs.getString("password");
                if(BCrypt.checkpw(password, passwordFromDB)){
                    passwordMatches=true;
                }
                if(passwordMatches){
                int user_Id = rs.getInt("user_id");
                String email = rs.getString("email");
                int status = rs.getInt("Status");
                
                
                
                u = new User(user_Id, username, password, email, status);
                }
            }
        } catch (SQLException ex) {
            System.out.println("A problem occurred while attempting to select a specific user in the getUserByUsernamePassword() method");
            System.out.println("Error: " + ex.getMessage());
        }finally{
            if(rs != null){
                try {
                    rs.close();
                } catch (SQLException ex) {
                    System.out.println("A problem occurred while attempting to close the resultset in the getUserByUsernamePassword() method");
                    System.out.println("Error: " + ex.getMessage());
                }
            }
            if(ps != null){
                try {
                    ps.close();
                } catch (SQLException ex) {
                    System.out.println("A problem occurred while attempting to close the prepared statement in the getUserByUsernamePassword() method");
                    System.out.println("Error: " + ex.getMessage());
                }
            }
            if(conn != null){
                freeConnection(conn);
            }
        }
        return u;
    }
    /**
     * Adds a user to the database
     * 
     * @param username The username of the user.
     * @param password The password of the user.
     * @param email The password of the user.
     * @return The user if is registered correctly
     * If not registered, appropriate message will be returned.
     */
    
        @Override
    public int registerUser(String username, String password, String email) {
        Connection conn = null;
        PreparedStatement ps = null; 
        ResultSet generatedKeys = null;
        
        
        int newId = -1;
        try {
            conn = this.getConnection();

            String query = "INSERT INTO user(Username, Email,Password,Status,salt) VALUES (?, ?, ?,?,?)";
            String salt = BCrypt.gensalt();
            String hashed = BCrypt.hashpw(password, salt);
            
            
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, hashed);
            ps.setInt(4, 0);
            ps.setString(5, salt);
         

            ps.executeUpdate();
            
            generatedKeys = ps.getGeneratedKeys();
            if(generatedKeys.next())
            {
                newId = generatedKeys.getInt(1);
            }
              String host="smtp.outlook.com"; 
            
            final String gmail = "D00195567@student.dkit.ie";
            final String emailPassword = "MMmanchester88";
            

        Properties prop = new Properties();
        
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.host", "smtp.outlook.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.user",gmail );
        
        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(gmail, emailPassword);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(gmail));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(email)
            );
            message.setSubject("Testing Gmail SSL");
            message.setText("Hello, welcom to sign up to Emnime Project, "
                    + "\n\n This is a verification email, plaese do not spam this email. ");

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            e.printStackTrace();
        }   
        }
          catch (SQLException e) 
        {
            System.err.println("\tA problem occurred during the registerUser method:");
            System.err.println("\t"+e.getMessage());
            newId = -1;
        } 
        finally 
        {
            try 
            {
                if(generatedKeys != null){
                    generatedKeys.close();
                }
                if (ps != null) 
                {
                    ps.close();
                }
                if (conn != null) 
                {
                    freeConnection(conn);
                }
            } catch (SQLException ex) {
                Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            } 
          
            
        }
        
        return newId;
    }
    
    /**
     * Updates a user's status
     * 
     * @param userId The id of the user.
     * @param Status The status of the user.
     * @return The user if is registered correctly
     * If not updated, appropriate message will be returned.
     */
    @Override
    public int updateUserStatus(int userId, int Status){
        Connection con = null;
        PreparedStatement ps = null; 
        ResultSet generatedKeys = null;
         int returnValue = -1;
         
        try {
            con = this.getConnection();
            
            String query ="Update user SET Status = ? Where user_id =? ";
            ps= con.prepareStatement(query);
            ps.setInt(1, Status);
            ps.setInt(2, userId);
            ps.executeUpdate();
            returnValue = -1;
            
    
    }catch (SQLException e) {
            System.out.println("Exception occured in the updateUserStatus() method: " + e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException e) {
                System.out.println("Exception occured in the finally section of the updateUserStatus() method");
                e.getMessage();
            }
        }
        return returnValue = -1;
}

    
    /**
     * Gets the salt by the username
     * 
     * @param username The username of the user.
     * @return The salt of that user.
     * If not returned, appropriate message will be returned.
     */
    @Override
    public byte[] getSaltByUsername(String username) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        byte[] salt = null;
        
        try{
            conn = getConnection();
            
            String query = "SELECT salt FROM user WHERE username = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            
            if(rs.next()){
                salt = rs.getBytes("salt");
            }
        } catch (SQLException ex) {
            System.out.println("A problem occurred while attempting to get the salt in the getSaltByUsername() method");
            System.out.println("Error: " + ex.getMessage());
        }finally{
            if(rs != null){
                try {
                    rs.close();
                } catch (SQLException ex) {
                    System.out.println("A problem occurred while attempting to close the resultset in the getSaltByUsername() method");
                    System.out.println("Error: " + ex.getMessage());
                }
            }
            if(ps != null){
                try {
                    ps.close();
                } catch (SQLException ex) {
                    System.out.println("A problem occurred while attempting to close the prepared statement in the getSaltByUsername() method");
                    System.out.println("Error: " + ex.getMessage());
                }
            }
            if(conn != null){
                freeConnection(conn);
            }
        }
        return salt;
    }
    
    /**
     * Gets a user by their Id.
     * @param userId The username of the user.
     * @return The user that mathces the id
     * If not returned, appropriate message will be returned.
     */

    @Override
    public User getUserById(int userId) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet result = null;
        User user = new User();

        try {
            con = getConnection();

            String query = "SELECT * FROM user WHERE user_id = ? ";
            ps = con.prepareStatement(query);

            ps.setInt(1, userId);
            result = ps.executeQuery();
            
            while(result.next()){
                
                user.setUser_id(result.getInt("user_id"));
                user.setUsername(result.getString("Username"));
                user.setEmail(result.getString("Email"));
                user.setPassword(result.getString("Password"));
                user.setStatus(result.getInt("Status"));
            }

        } catch (SQLException e) {
            System.out.println("Exception occured in the getUserById() method: " + e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException e) {
                System.out.println("Exception occured in the finally section of the getUserById() method");
                e.getMessage();
            }
        }
        return user;
    }

    @Override
    public User getUserByEmail(String email) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet result = null;
        User user = null;

        try {
            con = getConnection();

            String query = "SELECT * FROM user WHERE Email = ? ";
            ps = con.prepareStatement(query);

            ps.setString(1, email);
            result = ps.executeQuery();
            
            if(result.next()){
                user = new User();
                user.setUser_id(result.getInt("user_id"));
                user.setUsername(result.getString("Username"));
                user.setEmail(result.getString("Email"));
                user.setPassword(result.getString("Password"));
                user.setStatus(result.getInt("Status"));
            }

        } catch (SQLException e) {
            System.out.println("Exception occured in the getUserByEmail() method: " + e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException e) {
                System.out.println("Exception occured in the finally section of the getUserByEmail() method");
                e.getMessage();
            }
        }
        return user;
    }

    
    /**
     * Update user's password to hash.
     * @param email The user email address of the user.
     * @param oldpass The current password saved in dbms of an user.
     * @param newpass The new password that user inputed into the web page.
     * @return return -1 if the password updated to the dbms.
     * If not returned, appropriate message will be returned.
     */
    @Override
    public int updateUserPassword(String email, String oldpass, String newpass) {
        Connection con = null;
        PreparedStatement ps = null; 
        ResultSet rs = null;
         int returnValue = -1;
         
        try {
            con = this.getConnection();
            String query1 ="Select Password Where Email =? ";
            ps= con.prepareStatement(query1);
            ps.setString(1, email);
            rs = ps.executeQuery();
            if(rs.next()){
                boolean passwordMatches = false;
                String passwordFromDB = rs.getString("password");
                if(BCrypt.checkpw(oldpass, passwordFromDB)){
                    passwordMatches=true;
                }
                if(passwordMatches){
                    String salt = BCrypt.gensalt();
                    String hashed = BCrypt.hashpw(newpass, salt);                 
                    
                    String query2 ="Update user SET Password = ? Where Email =? ";
                    ps = con.prepareStatement(query2, Statement.RETURN_GENERATED_KEYS);
                    
                    ps.setString(1, hashed);
                    ps.setString(2, email);
                    ps.executeUpdate();
                    returnValue = -1;
                }
            }
    }catch (SQLException e) {
            System.out.println("Exception occured in the updateUserPassword() method: " + e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException e) {
                System.out.println("Exception occured in the finally section of the updateUserPassword() method");
                e.getMessage();
            }
        }
        return returnValue = -1;
    }
}