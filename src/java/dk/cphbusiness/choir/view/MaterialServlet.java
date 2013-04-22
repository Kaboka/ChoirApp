/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.view;

import com.google.gson.Gson;
import dk.cphbusiness.choir.contract.ChoirManager;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
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
    @EJB
    private ChoirManager choirManagerBean;

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Gson json = new Gson();
        String materials = null;
        
        materials = json.toJson(choirManagerBean.listMaterials());
        PrintWriter out = resp.getWriter();
        
        try{
            out.println(materials);
        }finally{
            out.close();
        }
        
        
    }
    
}
