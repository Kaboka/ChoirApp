/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.view;

import dk.cphbusiness.choir.contract.ChoirManager;
import dk.cphbusiness.choir.control.DummyChoirManager;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kasper
 */
public class ChoirFactory {

    private static ChoirFactory instance = null;
    private Map<String, Command> commands;
    private ChoirManager manager;

    private ChoirFactory() {
        commands = new HashMap<String, Command>();
        manager = new DummyChoirManager();
        
        
        commands.put("login", new LoginCommand("main.jsp"));
        commands.put("main", new MainCommand("main.jsp"));
        commands.put("listMembers", new ListMembersCommand("memberList.jsp"));
        commands.put("viewMembers", new ViewMemberCommand("memberView.jsp"));
        commands.put("editMembers", new EditMemberCommand("memberEdit.jsp"));
        commands.put("saveMember", new SaveMemberCommand("memberView.jsp"));
        commands.put("cancleMember", new TargetCommand("memberList.jsp"));
    }

    public static ChoirFactory getInstance() {
        if (instance == null) {
            instance = new ChoirFactory();
        }
        return instance;
    }

    public Command findCommand(String key) {
        if (key == null) {
            key = "main";
        }
        return commands.get(key);
    }

    public ChoirManager getManager() {
        return manager;
    }
}
