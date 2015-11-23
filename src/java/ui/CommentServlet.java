package ui;

import domain.Comment;
import domain.Shop;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CommentServlet", urlPatterns = {"/CommentServlet"})
public class CommentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String userName = request.getUserPrincipal().getName();
        String commentMsg = request.getParameter("comment");
        Comment comment = new Comment(userName, commentMsg);
        Shop.saveComment(comment);

        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        
       
        String commentObject = "{\"name\" : \""+userName+"\",\"comment\": \""+commentMsg+"\", \"date\":\""+comment.getFormatedDate()+"\" }";
        
        out.print(commentObject);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
