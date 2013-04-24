package dk.cphbusiness.choir.commands;

import com.google.gson.Gson;
import dk.cphbusiness.choir.contract.dto.MaterialSummary;
import dk.cphbusiness.choir.view.ChoirFactory;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author PC
 */
public class AjaxViewMaterialCommand extends AjaxCommand{

    @Override
    public String execute(HttpServletRequest request, String data) throws CommandException {
        ArrayList<MaterialSummary> materials = new ArrayList<MaterialSummary>(ChoirFactory.getInstance().getManager().listMaterials());
        int id = Integer.parseInt(request.getParameter("id"));
        Gson json = new Gson();
        data = json.toJson(materials.get(id));
        request.setAttribute("material", data);
        
        return super.execute(request, data);
    }
    
    
}