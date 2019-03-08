/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Anime;
import Dtos.Favourite;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author D00195567
 */
public class FavouriteDao extends Dao implements FavouriteDaoInterface{
    public FavouriteDao(String dbName){
        super(dbName);
    }

    @Override
    public ArrayList<Integer> getFavourites(int user_id) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Integer> animeIDs = new ArrayList();
        
        try{
            con = this.getConnection();
            String query = "SELECT anime_id FROM favourite WHERE user_id=?";
            ps = con.prepareStatement(query);
            ps.setInt(1, user_id);
            rs = ps.executeQuery();
                while(rs.next()){
                    int animeId = rs.getInt("anime_id");
                    
                    animeIDs.add(animeId);
                }
        }  catch (SQLException e) {
            System.err.println("A problem occurred in getAllAnimes() method:\n" + e.getMessage());
        }finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException e) {
                System.err.println("A problem occurred when closing down the getAllBook() method:\n" + e.getMessage());
            }
             return animeIDs;
        }
    }

    @Override
    public int addFavourite(int user_id, int anime_id) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet gk = null;
        int newId = -1;
        
        try{
             con = this.getConnection();
             
            String query = "INSERT INTO favourite(user_id,anime_id) VALUES (?,?)";
            ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            
            ps.setInt(1, user_id);
            ps.setInt(2, anime_id);
            
            ps.executeUpdate();
            gk = ps.getGeneratedKeys();
            
            if(gk.next())
            {
                newId = gk.getInt(1);
            }
        } 
        
        catch (SQLException ex) {
            System.out.println("Error occured when trying to add a favourite in the addFavourite(int user_id, int anime_id) method " + ex.getMessage());
        }
        finally 
        {
             try 
            {
                if(gk != null){
                    gk.close();
                }
                if (ps != null) 
                {
                    ps.close();
                }
                if (con != null) 
                {
                    freeConnection(con);
                }
            } 
            catch (SQLException e) 
            {
                System.err.println("A problem occurred when closing down the  addFavourite(int user_id, int anime_id) method:\n" + e.getMessage());
            }
        }
         
        return newId;
            
    }
    
    @Override
     public ArrayList<Integer> getAnimeIdByFavouriteId(int favouriteId){
           Connection con = null;
           PreparedStatement ps = null;
           ResultSet rs = null;
           
           ArrayList<Integer> animeId = new ArrayList();
           
           try{
               con = getConnection();
               String query = "Select anime_id from favourite where favourite_id=?";
               ps = con.prepareStatement(query);
               ps.setInt(1, favouriteId);
               rs = ps.executeQuery();
               
               while(rs.next()){
                   int Id = rs.getInt("anime_id");
                   
                   animeId.add(Id);
               }
           
           
           }catch (SQLException e) {
            System.out.println("Exception occured in the getAnimeIdByFavouriteId(int favouriteId) method: " + e.getMessage());
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException e) {
                System.out.println("Exception occured in the finally section of the getAnimeIdByFavouriteId(int favouriteId method: " + e.getMessage());
            }
        }

        return animeId;
           
}
    @Override
    public boolean checkExist(int user_id, int anime_id) {
        Connection con = null;
           PreparedStatement ps = null;
           ResultSet rs = null;
           boolean checked=true;
           
           try{
               con = getConnection();
               String query = "Select favourite_id from favourite where user_id=? and anime_id=?";
               ps = con.prepareStatement(query);
               ps.setInt(1, user_id);
               ps.setInt(2, anime_id);
               rs = ps.executeQuery();
               
               while(rs.next()){
                   checked=false;
                   
               }
           
           
           }catch (SQLException e) {
            System.out.println("Exception occured in the checkExist(int user_id, int anime_id) method: " + e.getMessage());
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    freeConnection(con);
                }
            } catch (SQLException e) {
                System.out.println("Exception occured in the finally section of the ccheckExist(int user_id, int anime_id) method: " + e.getMessage());
            }
        }

        return checked;
    }

    
    
    
    
}
