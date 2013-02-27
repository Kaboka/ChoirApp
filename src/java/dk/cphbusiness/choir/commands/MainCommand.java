/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kasper
 */
public class MainCommand extends TargetCommand{

    public MainCommand(String target) {
        super(target);
    }

    @Override
    public String execute(HttpServletRequest request) throws CommandException {
        String target = super.execute(request);
        if(request.getSession().getAttribute("loggedIn")== null)
        {
            target = "login.jsp";
        }
        return target; //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
