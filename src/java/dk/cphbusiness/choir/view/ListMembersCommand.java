/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.view;

import dk.cphbusiness.choir.contract.ChoirManager;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Kasper
 */
public class ListMembersCommand extends TargetCommand{

    public ListMembersCommand(String target) {
        super(target);
    }

    @Override
    public String execute(HttpServletRequest request) throws CommandException {
        ChoirManager manager = ChoirFactory.getInstance().getManager();
        request.setAttribute("members",manager.listMembers());
        return super.execute(request);
    }
    
    
    
}
