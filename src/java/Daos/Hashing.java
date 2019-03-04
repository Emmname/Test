/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author D00195567
 */
public class Hashing {
    
        public static String getSecurePassword(String passwordToHash, byte[] salt)
    {
        String generatedPassword = null;
        try{
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(passwordToHash.getBytes());
            byte[] bytes = md.digest();
            StringBuilder sb = new StringBuilder();
            for(int i=0; i< bytes.length ;i++){
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            
            generatedPassword=sb.toString();
            
        } 
        
        catch (NoSuchAlgorithmException ex) {
            ex.printStackTrace();
        }
        return generatedPassword;
    }
    
    
    public static byte[] getSalt() throws NoSuchAlgorithmException
{
    SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
    byte[] salt = new byte[512];
    sr.nextBytes(salt);
    return salt;
}

    
}
