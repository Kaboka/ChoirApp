/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.view;

import com.google.gson.Gson;
import dk.cphbusiness.choir.contract.ChoirManager;
import dk.cphbusiness.choir.contract.eto.NoSuchMemberException;
import dk.cphbusiness.choir.control.DummyChoirManager;
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
 * @author
 * kasper
 */
@WebServlet(name = "MemberServlet", urlPatterns = {"/MemberServlet"})
public class MemberServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ChoirManager manager = new DummyChoirManager();
        Gson json = new Gson();
        String member = null;
        try {
            member = json.toJson(manager.findMember((Integer.parseInt(request.getParameter("id")))));
        } catch (NoSuchMemberException ex) {
            Logger.getLogger(MemberServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println(member);
        } finally {
            out.close();
        }
    }
}
