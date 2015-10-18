package ui;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.ResourceBundle;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CardServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        ResourceBundle res;
        String lang = request.getParameter("lang");
        Locale loc = new Locale("ru");
        res = ResourceBundle.getBundle("lang",loc );
        if(lang != null)
        switch (lang){
                case "en": loc = new Locale(lang);
                    res = ResourceBundle.getBundle("lang",loc );
                    break;
                case "ch": loc = new Locale(lang);
                    res = ResourceBundle.getBundle("lang",loc );
                    break;
                default: break;
            };
        
            
        
        

        try (PrintWriter out = response.getWriter()) {
           out.print("<!DOCTYPE html>\n" +
"<html>\n" +
"<meta charset='utf-8'>\n" +
"<head>\n" +
"	<title>"+res.getString("title")+"</title>\n" +
"	<link rel='stylesheet' type='text/css' href='css/style.css'>\n" +
"\n" +
"</head>\n" +
"<body>\n" +
"<div class='header'>\n" +
"	<div class='lang_sel'>\n" +
"		<ul>\n" +
"   			<li><a href='?lang=ru'>Русский</a></li>\n" +
"  			<li><a href='?lang=en'>English</a></li>\n" +
"   			<li><a href='?lang=ch'>中国</a></li>\n" +
"	</div>\n" +
"	\n" +
"	<h1>"+res.getString("shop")+"</h1>\n" +
"\n" +
"	<div class='menu'>\n" +
"		<ul>\n" +
"   			<li><a href='#'>"+res.getString("catalog")+"</a></li>\n" +
"   			<li><a href='#'>"+res.getString("payment")+"</a></li>\n" +
"   			<li><a href='#'>"+res.getString("shopping_cart")+"</a></li>\n" +
"   			<li><a href='#'>"+res.getString("contacts")+"</a></li>\n" +
"   		</ul>\n" +
"\n" +
"	</div>\n" +
"</div>\n" +
"\n" +
"<div class='content'>\n" +
"	<h2>garmin gps 12 cx</h2>\n" +
"	\n" +
"	<div class='lay_horisontal'>\n" +
"		<div class='photo_cont'>\n" +
"			<img src='img/garmin12.jpg'>\n" +
"		</div>\n" +
"		<div class='lay_vertical'>\n" +
"			<div class='price'> 500$ </div>\n" +
"		\n" +
"			<div class='buy_button'>"+res.getString("buy")+"</div>\n" +
"		</div>\n" +
"	</div>\n" +
"\n" +
"	<div class='info'>\n" +
"		<ul>\n" +
"   			<li><a href='#' id='description_tab'>"+res.getString("information")+"</a></li>\n" +
"   			<li><a href='#' id='propertys_tab'>"+res.getString("properties")+"</a></li>\n" +
"   			<li><a href='#' id='reviews_tab'>"+res.getString("reviews")+"</a></li>\n" +
"   		</ul>\n" +
"   		<div class='descr'>"+res.getString("description")+"</div>\n" +
"\n" +
"   		<div class='prop'>"+res.getString("properties_text")+"</div>\n" +
"\n" +
"   		<div class='reviews'>\n" +
"   			<b>Вася</b> <br/> отлично <br/> \n" +
"   			<b>Петя</b> <br/> еще лучше <br/> \n" +
"   			<b>Гриша</b> <br/> Просто супер <br/> \n" +
"   		</div>\n" +
"\n" +
"	</div>\n" +
"</div>\n" +
"<service_inf value = '"+Integer.parseInt(getInitParameter("default_tab"))+"'/>\n" +
"<script type='text/javascript' src='js/script.js'></script> \n" +
"</body>\n" +
"</html>");
        
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       processRequest(request, response);
    }

   
    
}
