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
public class Episode {
    private int video_id;
    private int anime_id;
    private int episode_id;
    private String episode_name;
    private String episode_link;

    public Episode() {
         this.video_id = -1;
        this.anime_id = -1;
        this.episode_id = -1;
        this.episode_name = null;
        this.episode_link = null;
    }

    public Episode(int episode_id,int anime_id, int video_id,  String episode_name, String episode_link) {
        this.video_id = video_id;
        this.anime_id = anime_id;
        this.episode_id = episode_id;
        this.episode_name = episode_name;
        this.episode_link = episode_link;
    }

    public int getVideo_id() {
        return video_id;
    }

    public void setVideo_id(int video_id) {
        this.video_id = video_id;
    }

    public int getAnime_id() {
        return anime_id;
    }

    public void setAnime_id(int anime_id) {
        this.anime_id = anime_id;
    }

    public int getEpisode_id() {
        return episode_id;
    }

    public void setEpisode_id(int episode_id) {
        this.episode_id = episode_id;
    }

    public String getEpisode_name() {
        return episode_name;
    }

    public void setEpisode_name(String episode_name) {
        this.episode_name = episode_name;
    }

    public String getEpisode_link() {
        return episode_link;
    }

    public void setEpisode_link(String episode_link) {
        this.episode_link = episode_link;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 59 * hash + this.video_id;
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
        final Episode other = (Episode) obj;
        if (this.video_id != other.video_id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Episode{" + "video_id=" + video_id + ", anime_id=" + anime_id + ", episode_id=" + episode_id + ", episode_name=" + episode_name + ", episode_link=" + episode_link + '}';
    }
    
    
    
}
