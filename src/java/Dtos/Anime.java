/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dtos;

import java.sql.Date;
import java.util.Objects;

/**
 *
 * @author user
 */
public class Anime {
    private int anime_id;
    private String animename;
    private Date releasedate;
    private String animator;
    private String imageUrl;
    private String videoUrl;

    public Anime() {
        this.anime_id = -1;
        this.animename = null;
        this.releasedate = null;
        this.animator = null;
        this.imageUrl = null;
        this.videoUrl = null;
        
    }

    public Anime(int anime_id, String animename, Date releasedate, String animator,String imageUrl,String videoUrl) {
        this.anime_id = anime_id;
        this.animename = animename;
        this.releasedate = releasedate;
        this.animator = animator;
        this.imageUrl = imageUrl;
        this.videoUrl = videoUrl;
    }

    public int getAnime_id() {
        return anime_id;
    }

    public String getAnimename() {
        return animename;
    }

    public void setAnimename(String animename) {
        this.animename = animename;
    }

    public Date getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(Date releasedate) {
        this.releasedate = releasedate;
    }

    public String getAnimator() {
        return animator;
    }

    public void setAnimator(String animator) {
        this.animator = animator;
    }

    public String getImageUrl() {
        return imageUrl;
    }
    
     public String getVideoUrl() {
        return videoUrl;
    }
    

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 53 * hash + this.anime_id;
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
        final Anime other = (Anime) obj;
        if (this.anime_id != other.anime_id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Anime{" + "anime_id=" + anime_id + ", animename=" + animename + ", releasedate=" + releasedate + ", animator=" + animator +'}';
    }
   
    
}
