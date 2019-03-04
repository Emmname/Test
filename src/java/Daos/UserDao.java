/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.User;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jordan
 */
public class UserDao extends Dao implements UserDaoInterface {

    public UserDao(String dbName){
        super(dbName);
    }
    @Override
    public User getUserByUsernamePassword(String username, String password) {
        
       Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User u = null;
        password=Hashing.getSecurePassword(password, getSaltByUsername(username));
        try{
            conn = getConnection();
            
            String query = "SELECT * FROM user WHERE username = ? AND password = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            
            if(rs.next()){
                int user_Id = rs.getInt("user_id");
                String email = rs.getString("email");
                int status = rs.getInt("Status");
                
                
                
                u = new User(user_Id, username, password, email, status);
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
    
        @Override
    public int registerUser(String username, String password, String email) {
        Connection conn = null;
        PreparedStatement ps = null; 
        ResultSet generatedKeys = null;
        byte [] salt=null;
        
        int newId = -1;
        try {
            conn = this.getConnection();

            String query = "INSERT INTO user(Username, Email,Password,salt) VALUES (?, ?, ?, ?)";
            
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            
            salt=Hashing.getSalt();
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, Hashing.getSecurePassword(password, salt));
            ps.setBytes(4, salt);
         

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
        } catch (NoSuchAlgorithmException ex) {
            System.out.println("Failed to hash password");
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

}