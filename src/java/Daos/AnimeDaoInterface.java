/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Anime;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public interface AnimeDaoInterface {
    public ArrayList<Anime> getAllAnimes();
   public Anime getAnimeById(int animeId);
   public ArrayList<Anime> getAllAnimesDescByRating();
     public ArrayList<Anime> getAnimebyWords(String animeName);
     public int addAnime( String animeName , Date releaseDate, String animator , String imageUrl );
}
