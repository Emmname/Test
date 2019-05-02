/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.User;

/**
 *
 * @author Jordan
 */
public interface UserDaoInterface {
    public User getUserByUsernamePassword(String username, String password);
    public int registerUser(String username, String password, String email);
    public int updateUserStatus(int userId, int Status);
    public User getUserById(int userId);
    public User getUserByEmail(String email);
    public byte[] getSaltByUsername(String username);
    public int updateUserPassword(String email, String oldpass, String newpass);
}
