package ui;

import java.io.IOException;
import domain.Cart;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddItemToCart", urlPatterns = {"/addItem"})
public class AddItemToCart extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("add") != null) {
            int id = 0;
            try {
                id = Integer.parseInt(request.getParameter("add"));
                Cart cart = (Cart) request.getSession().getAttribute("cart");
                if (cart == null) {
                    cart = new Cart();
                    request.getSession().setAttribute("cart", cart);
                }
                cart.addItem(id);
                response.setStatus(response.SC_OK);
            } catch (NumberFormatException e) {
                response.sendError(422);
            }

        } else if (request.getParameter("remove") != null) {

            try {
                int id = Integer.parseInt(request.getParameter("remove"));
                Cart cart = (Cart) request.getSession().getAttribute("cart");
                if (cart != null) {
                    cart.remoreItem(id);
                    response.setStatus(response.SC_OK);
                }

            } catch (NumberFormatException e) {
                response.sendError(422);
            }
        } else {
            response.sendError(400);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
