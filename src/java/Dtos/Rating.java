/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dtos;

/**
 *
 * @author Jordan
 */
public class Rating {
    private int rating_id;
    private int anime_id;
    private int ratingNumber;
    private int user_id;

    public Rating() {
    }

    public Rating(int rating_id, int anime_id, int ratingNumber, int user_id) {
        this.rating_id = rating_id;
        this.anime_id = anime_id;
        this.ratingNumber = ratingNumber;
        this.user_id = user_id;
    }

    public Rating(int anime_id, int ratingNumber, int user_id) {
        this.rating_id = -1;
        this.anime_id = anime_id;
        this.ratingNumber = ratingNumber;
        this.user_id = user_id;
    }

    public Rating(int ratingNumber) {
        this.ratingNumber = ratingNumber;
        this.rating_id = -1;
        this.anime_id = -1;
        this.user_id = -1;
    }
    
    

    public int getRating_id() {
        return rating_id;
    }

    public int getAnime_id() {
        return anime_id;
    }

    public int getRatingNumber() {
        return ratingNumber;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setRating_id(int rating_id) {
        this.rating_id = rating_id;
    }

    public void setAnime_id(int anime_id) {
        this.anime_id = anime_id;
    }

    public void setRatingNumber(int ratingNumber) {
        this.ratingNumber = ratingNumber;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 31 * hash + this.rating_id;
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
        final Rating other = (Rating) obj;
        if (this.rating_id != other.rating_id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "RatingDto{" + "rating_id=" + rating_id + ", anime_id=" + anime_id + ", ratingNumber=" + ratingNumber + ", user_id=" + user_id + '}';
    }
    
    
    
    
}
