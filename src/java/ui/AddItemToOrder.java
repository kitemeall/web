package ui;

import java.io.IOException;
import domain.Order;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet( name="AddItemToOrder", urlPatterns = {"/addItem"})
public class AddItemToOrder extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getParameter("add") != null){
            int id = 0;
            try{
                id = Integer.parseInt(request.getParameter("add"));
                Order order = (Order)request.getSession().getAttribute("order");
                if(order == null){
                    order = new Order();
                    request.getSession().setAttribute("order", order);
                }
                order.addItem(id);
                response.sendError(200);
            }catch(NumberFormatException e){
                response.sendError(422);
            }
            
        }else if(request.getParameter("remove") !=null){
            int id = 0;
            try{
                id = Integer.parseInt(request.getParameter("remove"));
                Order order = (Order)request.getSession().getAttribute("order");
                if(order != null){
                    order.remoreItem(id);
                    response.sendError(200);
                }
                
            }catch(NumberFormatException e){
                response.sendError(422);
            }
        }else{
            response.sendError(400);
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    

   
    
}
