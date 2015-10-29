<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language" value="ru" scope="session" />
<fmt:setLocale value="${sessionScope.lang}" />
<fmt:setBundle basename="ui.lang.lang" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset='utf-8'>
<head>
    <title>
        <fmt:message key="shop" />
    </title>
	<link rel='stylesheet' type='text/css' href='css/style.css'>

</head>
<body>
<div class='header'>
	<div class='lang_sel'>
		<ul>
   			<li><a href='?lang=ru'>Русский</a></li>
  			<li><a href='?lang=en'>English</a></li>
   			<li><a href='?lang=ua'>Українська</a></li>
	</div>
	
	<h1> 
            <fmt:message key="shop" />
        </h1>

	<div class='menu'>
		<ul>
                    <li><a href='#'>
                        <fmt:message key="enter" />
                        </a></li>
                    <li><a href='#'>
                                <fmt:message key="catalog" />
                        </a></li>
                    <li><a href='#'>
                            <fmt:message key="cart" />
                        </a></li>
                    <li><a href='#'>
                            <fmt:message key="history" />
                        </a></li>
   		</ul>

	</div>
</div>

<div class='content'>
	<h2>garmin gps 12 cx</h2>
	
	<div class='lay_horisontal'>
		<div class='photo_cont'>
			<img src='img/garmin12.jpg'>
		</div>
		<div class='lay_vertical'>
			<div class='price'> $500 </div>
		
			<div class='buy_button'>
                            <fmt:message key="buy" />
                        </div>
		</div>
	</div>

	<div class='info'>
		<ul>
                    <li><a href='#' id='description_tab'>
                        <fmt:message key="information" />
                        </a></li>
                    <li><a href='#' id='propertys_tab'>
                        <fmt:message key="properties" />
                        </a></li>
                    <li><a href='#' id='reviews_tab'>
                        <fmt:message key="reviews" />
                        </a></li>
   		</ul>
   		<div class='descr'>
   			
   				Универсальный навигатор
				черно-белый дисплей 2.66'
				разрешение 64x100 пикс.
				ПО: Garmin
				водонепроницаемый корпус
				питание от батареек AA
   			
   		</div>

   		<div class='prop'>
			Число каналов приемника<b>12</b> <br/> 
			
			Теплый старт
 			<b>15 с</b> <br/>
			
			Холодный старт
 			<b>45 с</b> <br/>
			
			Элементы питания  <b>AA</b> <br/>
			
			Время работы <b>24 ч</b> <br/>
			
			Водонепроницаемый корпус
			 <b>есть</b> <br/>
			
			Габариты (ШхВхГ)  <b>53x147x31 мм </b> <br/>
			
			Вес <b> 269 г </b> 
   		</div>

   		<div class='reviews'>
   			<b>Вася</b> <br/> отлично <br/> 
   			<b>Петя</b> <br/> еще лучше <br/> 
   			<b>Гриша</b> <br/> Просто супер <br/> 
   		</div>

	</div>
</div>
<service_inf value = '<%=getInitParameter("default_tab")%>'/>
<script type='text/javascript' src='js/script.js'></script> 
</body>
</html>
