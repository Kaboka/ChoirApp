/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dk.cphbusiness.choir.view;

import com.google.gson.Gson;
import dk.cphbusiness.choir.contract.ChoirManager;
import dk.cphbusiness.choir.contract.dto.ArtistSummary;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nicklas Hemmingsen
 */
@WebServlet(name = "ArtistServlet", urlPatterns = {"/ArtistServlet"})
public class ArtistServlet extends HttpServlet {

    private String singleArtist(ArtistSummary artist) {
        return "{ \"label\": \""+artist.getName()+"\", \"value\": \""+artist.getName()+"\", \"wikiURL\": \""+artist.getWikiUrl()+"\", \"id\": \""+artist.getId()+"\" }";
    }
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ChoirManager manager = ChoirFactory.getInstance().getManager();
        String artists = null;
        try {
            Collection<ArtistSummary> summaries = manager.listArtistsByPattern(request.getParameter("term"));
            for (ArtistSummary summary : summaries) {
                if (artists == null) artists = "[ "+singleArtist(summary);
                else artists += ", "+singleArtist(summary);
            }
            artists += " ]";
            System.err.println("term: "+request.getParameter("term"));
            System.err.println("artists: "+artists);
        } catch (Exception ex) {
            Logger.getLogger(MemberServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println(artists);
        } finally {
            out.close();
        }
    }
}
