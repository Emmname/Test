/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Anime;
import Dtos.Episode;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



/**
 *
 * @author user
 */
public class EpisodeDao extends Dao implements EpisodeDaoInterface{
      public EpisodeDao(String dbName){
        super(dbName);
    }

    /**
     *
     * @param animeId
     * @return
     */
    @Override
    public ArrayList<Episode> getEpisodeByAnimeId(int animeId) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        ArrayList<Episode> e = new ArrayList();
        Episode ep = null;
        
        try{
            con = getConnection();
            
            String query = "Select * from episode where anime_id = ?";
            ps= con.prepareStatement(query);
            ps.setInt(1,animeId);
            rs = ps.executeQuery();
            
            while(rs.next()){
            
                ep = new Episode(rs.getInt("episode_id"),rs.getInt("anime_id"),rs.getInt("video_id"),rs.getString("episode_name"),rs.getString("episode_link"));
                e.add(ep);
            }

        }catch(SQLException x) {
            System.out.println("Exception occured in the getEpisodeByAnimeId() method: " + x.getMessage());
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
            } catch (SQLException x) {
                System.out.println("Exception occured in the finally section of the getEpisodeByAnimeId() method: " + x.getMessage());
            }
        }

        return e;
    }

     
}
