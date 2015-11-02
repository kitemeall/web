package ui;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.util.http.Cookies;

public class GoodsList extends HttpServlet {

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
        if (LangStringValidator.valid(lang)) {
            session.setAttribute("lang", lang);
        } else if (!LangStringValidator.valid(lang) && session.getAttribute("lang") == null) {
            lang = getServletContext().getInitParameter("default_lang");
            session.setAttribute("lang", lang);
        }

        String category = request.getParameter("type");
        if (category != null) {
            session.setAttribute("category", category);
        } else if (session.getAttribute("category") == null) {
            session.setAttribute("category", "all");
        }

        request.getRequestDispatcher("/goods_list.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
