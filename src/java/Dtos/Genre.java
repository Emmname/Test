/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dtos;

/**
 *
 * @author user
 */
public class Genre {
        private int genre_id;
        private String genre_name;

    public Genre() {
        this.genre_id = -1;
        this.genre_name =null;
        
    }

    public Genre(int genre_id, String genre_name) {
        this.genre_id = genre_id;
        this.genre_name = genre_name;
    }

    public int getGenre_id() {
        return genre_id;
    }

    public void setGenre_id(int genre_id) {
        this.genre_id = genre_id;
    }

    public String getGenre_name() {
        return genre_name;
    }

    public void setGenre_name(String genre_name) {
        this.genre_name = genre_name;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 61 * hash + this.genre_id;
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
        final Genre other = (Genre) obj;
        if (this.genre_id != other.genre_id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Genre{" + "genre_id=" + genre_id + ", genre_name=" + genre_name + '}';
    }
        
}
