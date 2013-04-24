/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.view;

import dk.cphbusiness.choir.commands.AjaxCommand;
import dk.cphbusiness.choir.commands.AjaxViewMaterialCommand;
import dk.cphbusiness.choir.commands.CreateMemberCommand;
import dk.cphbusiness.choir.commands.LoginCommand;
import dk.cphbusiness.choir.commands.Command;
import dk.cphbusiness.choir.commands.ListMembersCommand;
import dk.cphbusiness.choir.commands.SaveMemberCommand;
import dk.cphbusiness.choir.commands.ViewMemberCommand;
import dk.cphbusiness.choir.commands.EditMemberCommand;
import dk.cphbusiness.choir.commands.ListMaterialsCommand;
import dk.cphbusiness.choir.commands.TargetCommand;
import dk.cphbusiness.choir.contract.ChoirManager;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Kasper
 */
public class ChoirFactory {
    ChoirManager manager = lookupChoirManagerBeanRemote();


    private static ChoirFactory instance = null;
    private Map<String, Command> commands;
    private Map<String, AjaxCommand> ajaxCommands;
    

    private ChoirFactory() {
        commands = new HashMap<String, Command>();
        ajaxCommands = new HashMap<String, AjaxCommand>();
        
        //TargetCommands
        commands.put("login", new LoginCommand("mobileMain.jsp"));
        commands.put("main", new TargetCommand("mobileMain.jsp"));
        commands.put("listMembers", new ListMembersCommand("mobileMemberSide.jsp"));
        commands.put("viewMember", new ViewMemberCommand("memberView.jsp"));
        commands.put("editMember", new EditMemberCommand("mobileMemberEdit.jsp"));
        commands.put("saveMember", new SaveMemberCommand("mobileMemberSide.jsp"));
        commands.put("cancelMember", new ListMembersCommand("memberList.jsp"));
        commands.put("createMember", new CreateMemberCommand("memberEdit.jsp"));
        commands.put("listMaterials", new ListMaterialsCommand("mobileMaterials.jsp"));
        
        //AjaxCommands
        ajaxCommands.put("ajaxViewMaterial", new AjaxViewMaterialCommand());
    }

    public static ChoirFactory getInstance() {
        if (instance == null) {
            instance = new ChoirFactory();
        }
        return instance;
    }

    public Command findCommand(String key) {
        if(key == null){
            key = "main";
        }
        return commands.get(key);
    }
    
    public AjaxCommand findAjaxCommand(String key){
        return ajaxCommands.get(key);
    }

    public ChoirManager getManager() {
        return manager;
    }

    private ChoirManager lookupChoirManagerBeanRemote() {
        try {
            Context c = new InitialContext();
            return (ChoirManager) c.lookup("java:global/ChoirBackendNowItsFinal/ChoirManagerBean!dk.cphbusiness.choir.contract.ChoirManager");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }


    
}
