/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Commands;

/**
 *
 * @author Jordan
 */
public class CommandFactory {
    private volatile static CommandFactory currentInstance;
private CommandFactory(){
        
    }
 public static CommandFactory getInstance(){
        
        if(currentInstance == null){
            synchronized(CommandFactory.class)
            {
                if(currentInstance == null){
                    currentInstance = new CommandFactory();
                }
            }
        }
        return currentInstance;
    }

    public static Command createCommand(String action){
        Command c = null; 
        if(action != null){
            switch(action){
                case "login":
                    c = new LoginCommand();
                    break;      
                case "logout":
                    c = new LogoutCommand();
                    break;
                case "register":
                    c = new RegisterCommand();
                    break;   
                case "addRating":
                    c = new AddRatingCommand();
                    break;    
                case "addFavourite":
                    c = new AddFavouriteCommand();
                    break;
                case "searchAnimebyWords":
                    c = new GetAnimebyWordsCommand();
                    break;
                case "addAnime":
                    c = new AddAnime();
                    break;
                case "addMessage":
                    c = new  AddMessage();
                     break;
                case "addOrder":
                    c = new  AddNewOrder();
                    break;
                case "getMessage":
                    c = new GetMessageByAnimeId();
                    break;
                  case "removeMessage":
                    c = new DeleteMessage();
                    break;
                case "changeLanguage":
                    c = new ChangeLanguageCommand();
                    break;
                case "resetPassword":
                    c = new resetPasswordCommand();
                    break;
                case "mailSender":
                    c = new mailSenderCommand();
                    break;
                case "downloadEpisode":
                    c= new DownloadEpisode();
                    break;
                default:
                    c = new NoActionSuppliedCommand();
                    break;
                    
                    
            }
        }else{
            c = new NoActionSuppliedCommand();
        }
        return c;
            
    }
}

