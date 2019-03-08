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

