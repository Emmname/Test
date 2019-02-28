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
public class User {
    private int user_id;
    private String username;
    private String password;
    private String email;
    private int status;

    public User(String username, String password, String email, int status) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.status = status;
        this.user_id = -1;
    }

    public User(int user_id, String username, String password, String email, int status) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.status = status;
    }

    public int getUser_id() {
        return user_id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public int getStatus() {
        return status;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 73 * hash + this.user_id;
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
        final User other = (User) obj;
        if (this.user_id != other.user_id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "User{" + "user_id=" + user_id + ", username=" + username + ", password=" + password + ", email=" + email + ", Status=" + status + '}';
    }
    
    
    
}
