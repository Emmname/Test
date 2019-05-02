/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author omy
 */
public class DownloadEpisode implements Command{

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
         String forwardToJsp = "episodes/Episode.html";
         
         
         
         try{
             
         URL website = new URL("https://drive.google.com/file/d/1K-OuOCdQvNpImOKBywFWK0hVeEkOCmCt/view");
                        ReadableByteChannel rbc = Channels.newChannel(website.openStream());
                        FileOutputStream fos = new FileOutputStream("AnimeProject\\web\\episodes\\Episode.html");
                        
                        fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
         } catch (IOException ex) {
            Logger.getLogger(DownloadEpisode.class.getName()).log(Level.SEVERE, null, ex);
        }
         
         return forwardToJsp;
    }
    
}
