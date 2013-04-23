/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.commands;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author PC
 */
public class AjaxCommand{
    
    private String data;
    
    public String execute(HttpServletRequest request) throws CommandException {
        if(request.getSession().getAttribute("loggedIn")==null){
            data = "Session timed out. Please log in again";
        }
        
        return data;
    }
    
    public void setData(String data){
        this.data = data;
    }
    
}
