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
    public String execute(HttpServletRequest request) throws CommandException {
        ArrayList<MaterialSummary> materials = new ArrayList<MaterialSummary>(ChoirFactory.getInstance().getManager().listMaterials());
        int id = Integer.parseInt(request.getParameter("id"));
        Gson json = new Gson();
        String material = json.toJson(materials.get(id));
        request.setAttribute("material", material);
        return super.execute(request);
    }
    
    public void setData(String data){
        super.setData(data);
    }
    
    
}