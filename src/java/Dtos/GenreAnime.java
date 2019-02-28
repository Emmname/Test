/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dtos;

/**
 *
 * @author D00188619
 */
public class GenreAnime {
    private int genreAnime_id;
    private int genre_id;
    private int anime_id;

    public GenreAnime() {
        this.genreAnime_id=0;
        this.genre_id=0;
        this.anime_id=0;
        
    }

    public GenreAnime(int genreAnime_id, int genre_id, int anime_id) {
        this.genreAnime_id = genreAnime_id;
        this.genre_id = genre_id;
        this.anime_id = anime_id;
    }

    public int getGenreAnime_id() {
        return genreAnime_id;
    }

    public void setGenreAnime_id(int genreAnime_id) {
        this.genreAnime_id = genreAnime_id;
    }

    public int getGenre_id() {
        return genre_id;
    }

    public void setGenre_id(int genre_id) {
        this.genre_id = genre_id;
    }

    public int getAnime_id() {
        return anime_id;
    }

    public void setAnime_id(int anime_id) {
        this.anime_id = anime_id;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 73 * hash + this.genreAnime_id;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final GenreAnime other = (GenreAnime) obj;
        if (this.genreAnime_id != other.genreAnime_id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "GenreAnime{" + "genreAnime_id=" + genreAnime_id + ", genre_id=" + genre_id + ", anime_id=" + anime_id + '}';
    }
    
    
    
    
}
