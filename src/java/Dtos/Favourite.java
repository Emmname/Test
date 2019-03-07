/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dtos;

/**
 *
 * @author D00195567
 */
public class Favourite {
    public int favourite_id;
    public int user_id;
    public int anime_id;

    public Favourite() {
    }

    public Favourite(int favourite_id, int user_id, int anime_id) {
        this.favourite_id = favourite_id;
        this.user_id = user_id;
        this.anime_id = anime_id;
    }

    public Favourite(int user_id, int anime_id) {
        this.user_id = user_id;
        this.anime_id = anime_id;
        this.favourite_id=-1;
    }

    public int getFavourite_id() {
        return favourite_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public int getAnime_id() {
        return anime_id;
    }

    public void setFavourite_id(int favourite_id) {
        this.favourite_id = favourite_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public void setAnime_id(int anime_id) {
        this.anime_id = anime_id;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 47 * hash + this.favourite_id;
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
        final Favourite other = (Favourite) obj;
        if (this.favourite_id != other.favourite_id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Favourite{" + "favourite_id=" + favourite_id + ", user_id=" + user_id + ", anime_id=" + anime_id + '}';
    }
    
    
    
    
}
