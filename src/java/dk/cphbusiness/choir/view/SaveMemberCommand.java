/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.view;

import dk.cphbusiness.choir.contract.ChoirManager;
import dk.cphbusiness.choir.contract.dto.MemberAuthentication;
import dk.cphbusiness.choir.contract.dto.MemberDetail;
import dk.cphbusiness.choir.contract.eto.AuthenticationException;
import dk.cphbusiness.choir.contract.eto.NoSuchMemberException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Patrick
 */
public class SaveMemberCommand extends TargetCommand{

    public SaveMemberCommand(String target) {
        super(target);
    }

    @Override
    public String execute(HttpServletRequest request) throws CommandException {
        ChoirManager manager = ChoirFactory.getInstance().getManager();
        //TODO implementere id (skal ligge i Member-klasse):
            long id = Long.parseLong(request.getParameter("id"));
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String title = request.getParameter("title");
            String street = request.getParameter("street");
            String zipCode = request.getParameter("zipCode");
            String city = request.getParameter("city");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            int voiceCode = Integer.parseInt(request.getParameter("voiceCode"));
//            String[] roleCodes = request.getParameter("roleCodes");
            String[] roleCodes = {"REP"};
            
            MemberDetail member = new MemberDetail(id, firstName, lastName, title, false, false, null, voiceCode, roleCodes, street, zipCode, city, email, phone);
        try {
            member = manager.saveMember((MemberAuthentication)request.getSession().getAttribute("loggedin"),member);
        } catch (NoSuchMemberException ex) {
            Logger.getLogger(SaveMemberCommand.class.getName()).log(Level.SEVERE, null, ex);
        } catch (AuthenticationException ex) {
            Logger.getLogger(SaveMemberCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            request.getSession().setAttribute("member", member);
            
        
        return super.execute(request);
    }
    
    
}
