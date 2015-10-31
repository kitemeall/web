package ui;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Product extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String lang = request.getParameter("lang");
        HttpSession session = request.getSession();
        if(LangStringValidator.valid(lang)){
            session.setAttribute("lang", lang);
        }
        else if (!LangStringValidator.valid(lang) && session.getAttribute("lang") == null) {
                lang = getServletContext().getInitParameter("default_lang");
                session.setAttribute("lang", lang);           
        }

        request.getRequestDispatcher("/product.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    

}
