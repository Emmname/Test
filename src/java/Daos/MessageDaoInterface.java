/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Daos;

import Dtos.Message;
import java.util.ArrayList;

/**
 *
 * @author user
 */
public interface MessageDaoInterface {
    public ArrayList<Message> getAllMsg();
     public ArrayList<Message> getMsgByAnimeId(int animeId);
      public ArrayList<Message> getMsgByUserId(int userId);
      public int addMessage( int userId,int animeId,String title , String context, String wholeft );
      public int removeMessageByID(int messageId);
}
