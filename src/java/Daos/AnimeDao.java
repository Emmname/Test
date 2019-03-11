/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Anime;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public class AnimeDao extends Dao implements AnimeDaoInterface{
    public AnimeDao(String dbName){
        super(dbName);
    }

    @Override
    public ArrayList<Anime> getAllAnimes(){
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Anime> animeArry = new ArrayList();
        
        try{
            con = this.getConnection();
            String query = "SELECT * FROM anime";
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
                while(rs.next()){
                    int animeId = rs.getInt("anime_id");
                    String name = rs.getString("anime_name");
                    Date releaseDate = rs.getDate("release_date");
                    String animator = rs.getString("animator");
                    String imageUrl = rs.getString("imageUrl");
                    
                    Anime a = new Anime(animeId, name, releaseDate, animator,imageUrl);
                    animeArry.add(a);
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
             return animeArry;
        }
        
}
    @Override 
    public ArrayList<Anime> getAnimebyWords(){
         Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Anime> animesArry = new ArrayList();
    try{
            con = this.getConnection();
            String query = "SELECT * FROM anime Where anime_name or animator LIKE '%?%'";
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
                while(rs.next()){
                    int animeId = rs.getInt("anime_id");
                    String name = rs.getString("anime_name");
                    Date releaseDate = rs.getDate("release_date");
                    String animator = rs.getString("animator");
                    String imageUrl = rs.getString("imageUrl");
                    
                    Anime a = new Anime(animeId, name, releaseDate, animator,imageUrl);
                    animesArry.add(a);
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
             return animesArry;
        }

    }
    
    @Override 
    public Anime getAnimeById(int animeId){
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        Anime a = null;
        
        try{
            con = getConnection();
            
            String query = "Select * from anime where anime_id = ?";
            ps= con.prepareStatement(query);
            ps.setInt(1,animeId);
            rs = ps.executeQuery();
            
            while(rs.next()){
            
                a = new Anime(rs.getInt("anime_id"),rs.getString("anime_name"),rs.getDate("release_date"),rs.getString("animator"),rs.getString("imageUrl"));
            
            }

        }catch(SQLException e) {
            System.out.println("Exception occured in the getAnimeById() method: " + e.getMessage());
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
                System.out.println("Exception occured in the finally section of the getAnimeById() method: " + e.getMessage());
            }
        }

        return a;
        
        
  
    }

    @Override
    public ArrayList<Anime> getAllAnimesDescByRating() {
         Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Anime> animeArry = new ArrayList();
        
        try{
            con = this.getConnection();
            String query = "SELECT anime_name, anime_id, ratingNumber FROM anime, rating WHERE anime.anime_id = rating.anime_id ORDER BY (SELECT AVG(ratingNumber)from rating) DESC ";
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
                while(rs.next()){
                    int animeId = rs.getInt("anime_id");
                    String name = rs.getString("anime_name");
                    Date releaseDate = rs.getDate("release_date");
                    String animator = rs.getString("animator");
                    String imageUrl = rs.getString("imageUrl");
                    
                    Anime a = new Anime(animeId, name, releaseDate, animator,imageUrl);
                    animeArry.add(a);
                }
        }  catch (SQLException e) {
            System.err.println("A problem occurred in getAllAnimesDescByRating() method:\n" + e.getMessage());
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
             
        }
        return animeArry;
    }
      
        
}

