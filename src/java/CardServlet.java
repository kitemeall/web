/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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

        switch (lang){
                case "en": loc = new Locale(lang);
                    res = ResourceBundle.getBundle("lang",loc );
                    break;
                case "ch": loc = new Locale(lang);
                    res = ResourceBundle.getBundle("lang",loc );
                    break;
                default: break;
            };
        
            
        
        System.out.println(res.getString("Shop"));

        try (PrintWriter out = response.getWriter()) {
           out.print("<!DOCTYPE html>\n" +
"<html>\n" +
"<meta charset='utf-8'>\n" +
"<head>\n" +
"	<title> интернет-магазин</title>\n" +
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
"	<h1> магазин</h1>\n" +
"\n" +
"	<div class='menu'>\n" +
"		<ul>\n" +
"   			<li><a href='#'>Каталог</a></li>\n" +
"   			<li><a href='#'>Оплата и доставка</a></li>\n" +
"   			<li><a href='#'>Корзина</a></li>\n" +
"   			<li><a href='#'>Контакты</a></li>\n" +
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
"			<div class='price'> 100500 руб </div>\n" +
"		\n" +
"			<div class='buy_button'>Купить</div>\n" +
"		</div>\n" +
"	</div>\n" +
"\n" +
"	<div class='info'>\n" +
"		<ul>\n" +
"   			<li><a href='#' id='description_tab'>Информация</a></li>\n" +
"   			<li><a href='#' id='propertys_tab'>Характеристики</a></li>\n" +
"   			<li><a href='#' id='reviews_tab'>Отзывы</a></li>\n" +
"   		</ul>\n" +
"   		<div class='descr'>\n" +
"   			\n" +
"   				Универсальный навигатор\n" +
"				черно-белый дисплей 2.66'\n" +
"				разрешение 64x100 пикс.\n" +
"				ПО: Garmin\n" +
"				водонепроницаемый корпус\n" +
"				питание от батареек AA\n" +
"   			\n" +
"   		</div>\n" +
"\n" +
"   		<div class='prop'>\n" +
"			Число каналов приемника<b>12</b> <br/> \n" +
"			\n" +
"			Теплый старт\n" +
" 			<b>15 с</b> <br/>\n" +
"			\n" +
"			Холодный старт\n" +
" 			<b>45 с</b> <br/>\n" +
"			\n" +
"			Элементы питания  <b>AA</b> <br/>\n" +
"			\n" +
"			Время работы <b>24 ч</b> <br/>\n" +
"			\n" +
"			Водонепроницаемый корпус\n" +
"			 <b>есть</b> <br/>\n" +
"			\n" +
"			Габариты (ШхВхГ)  <b>53x147x31 мм </b> <br/>\n" +
"			\n" +
"			Вес <b> 269 г </b> \n" +
"   		</div>\n" +
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
        System.out.println(request.getParameter("lang"));
        processRequest(request, response);
    }

   
    
}
