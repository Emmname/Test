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
            } 
            catch (SQLException e) 
            {
                System.err.println("A problem occurred when closing down the registerUser method:\n" + e.getMessage());
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

}