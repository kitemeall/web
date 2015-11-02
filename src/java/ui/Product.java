package ui;

import domain.Goods;
import domain.Shop;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Product extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String lang = null;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("lang")) {
                    lang = cookie.getValue();
                }
            }
        }
        HttpSession session = request.getSession();
        if(LangStringValidator.valid(lang)){
            session.setAttribute("lang", lang);
        }
        else if (!LangStringValidator.valid(lang) && session.getAttribute("lang") == null) {
                lang = getServletContext().getInitParameter("default_lang");
                session.setAttribute("lang", lang);           
        }
        
        
        Integer id = null;
        try{
             id = Integer.parseInt(request.getParameter("id"));
             request.getRequestDispatcher("/product.jsp").forward(request, response);
             
        }catch(Exception e){
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
        
        
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    

}
