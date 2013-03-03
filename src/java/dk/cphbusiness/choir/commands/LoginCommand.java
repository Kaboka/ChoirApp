/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.commands;

import dk.cphbusiness.choir.contract.ChoirManager;
import dk.cphbusiness.choir.contract.eto.AuthenticationException;
import dk.cphbusiness.choir.view.ChoirFactory;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kasper
 */
public class LoginCommand extends TargetCommand {

    public LoginCommand(String target) {
        super(target);
    }

    @Override
    public String execute(HttpServletRequest request) throws CommandException {
        ChoirManager manager = ChoirFactory.getInstance().getManager();
        HttpSession session = request.getSession();
        String target = super.execute(request); 
        try {
           session.setAttribute("loggedIn", manager.login(request.getParameter("userName"), request.getParameter("password")));
        } catch (AuthenticationException ae) {
            session.removeAttribute("loggedIn");
            target = "login.jsp";
            Logger.getLogger(LoginCommand.class.getName()).log(Level.SEVERE, null, ae);
            request.setAttribute("errorMessage", "Error in name or password");
        }
        
        return target; 
    }
    
    
}
