package ui;
import domain.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ri
 */
@WebServlet(name = "CartServlet", urlPatterns = {"/cart"})
public class CartServlet extends LangParseServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        parseLang(request, response);
        if(request.getSession().getAttribute("order") == null){
            request.getSession().setAttribute("order", new Order());
        }
        Order order = (Order)request.getSession().getAttribute("order");
        order.setLang((String)request.getAttribute("lang"));
        request.getRequestDispatcher("/cart.jsp").forward(request, response);
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


   
   
}
