/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.view;
import dk.cphbusiness.choir.commands.TargetCommand;
import dk.cphbusiness.choir.commands.CommandException;
import dk.cphbusiness.choir.contract.ChoirManager;
import dk.cphbusiness.choir.contract.dto.MemberDetail;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Patrick
 */
public class CreateMemberCommand extends TargetCommand{

    public CreateMemberCommand(String target) {
        super(target);
    }

    @Override
    public String execute(HttpServletRequest request) throws CommandException {
        
        request.setAttribute("member", new MemberDetail());
        return super.execute(request);
    }
    
    
    
}
