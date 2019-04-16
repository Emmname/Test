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
public class Message {
    private int message_id;
    private int user_id;
    private int anime_id;
    private String title;
    private String context;
    private String wholeft;

    public Message() {
        this.message_id = -1;
        this.user_id = -1;
        this.anime_id = -1;
        this.title = null;
        this.context = null;
        this.wholeft = null;
    }

    public Message(int message_id, int user_id, int anime_id, String title, String context, String wholeft) {
        this.message_id = message_id;
        this.user_id = user_id;
        this.anime_id = anime_id;
        this.title = title;
        this.context = context;
        this.wholeft = wholeft;
    }

    public int getMessage_id() {
        return message_id;
    }

    public void setMessage_id(int message_id) {
        this.message_id = message_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getAnime_id() {
        return anime_id;
    }

    public void setAnime_id(int anime_id) {
        this.anime_id = anime_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public String getWholeft() {
        return wholeft;
    }

    public void setWholeft(String wholeft) {
        this.wholeft = wholeft;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 11 * hash + this.message_id;
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
        final Message other = (Message) obj;
        if (this.message_id != other.message_id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Message{" + "message_id=" + message_id + ", user_id=" + user_id + ", anime_id=" + anime_id + ", title=" + title + ", context=" + context + ", wholeft=" + wholeft + '}';
    }
    
    
}
