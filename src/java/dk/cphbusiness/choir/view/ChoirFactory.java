/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.view;

import dk.cphbusiness.choir.contract.ChoirManager;
import dk.cphbusiness.choir.control.DummyChoirManager;
import java.util.HashMap;
import java.util.Map;

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
        commands.put("not-loggedin", new TargetCommand("login.jsp"));
        commands.put("main", new TargetCommand("main.jsp"));
        commands.put("listMembers", new ListMembersCommand("memberList.jsp"));
        commands.put("viewMembers", new ViewMemberCommand("memberView.jsp"));
        commands.put("editMembers", new EditMemberCommand("memberEdit.jsp"));

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
