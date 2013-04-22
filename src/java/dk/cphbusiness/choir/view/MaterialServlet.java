package dk.cphbusiness.choir.view;

import com.google.gson.Gson;
import dk.cphbusiness.choir.contract.ChoirManager;
import dk.cphbusiness.choir.contract.dto.MaterialSummary;
import dk.cphbusiness.choir.control.DummyChoirManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
    
    private ChoirManager manager = new DummyChoirManager();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        int id = Integer.parseInt(req.getParameter("id"));
        
        ArrayList<MaterialSummary> materials = new ArrayList<MaterialSummary>(manager.listMaterials());
        Gson json = new Gson();
        
        String material = json.toJson(materials.get(id));
        PrintWriter out = resp.getWriter();
        
        try{
            out.println(material);
        }finally{
            out.close();
        }
        
        
    }
    
}
