package dk.cphbusiness.choir.view;

import dk.cphbusiness.choir.commands.AjaxCommand;
import dk.cphbusiness.choir.commands.CommandException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
@WebServlet(name = "MaterialServlet", urlPatterns = {"/MaterialServlet"})
public class MaterialServlet extends HttpServlet {
    

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String commandKey = req.getParameter("command");
        AjaxCommand command = ChoirFactory.getInstance().findAjaxCommand(commandKey);
        
        try{
            out.println(command.execute(req, ""));
        } catch (CommandException ex) {
            Logger.getLogger(MaterialServlet.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            out.close();
        }
        
        
    }
    
}
