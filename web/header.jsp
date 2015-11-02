<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${requestScope.lang}" />
<% String lang = (String)request.getAttribute("lang");%>
<fmt:setBundle basename="ui.lang.lang" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset='utf-8'>
<head>
    <title>
        <fmt:message key="shop" />
    </title>
	<link rel='stylesheet' type='text/css' href='css/header.css'>

</head>
<body>
<div class='header'>
	<div class='lang_sel'>
		<ul>
                    <li><a href="?lang=ru" id = 'ruLang'>Русский</a></li>
  			<li><a href="?lang=en"  id = 'enLang'>English</a></li>
   			<li><a href="?lang=ua" id = 'uaLang'>Українська</a></li>
	</div>
	
	<h1> 
            <fmt:message key="shop" />
        </h1>

	<div class='menu'>
		<ul>
                    <li><a href='#'>
                        <fmt:message key="enter" />
                        </a></li>
                    <li><a href='list'>
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
                        
</body>
</html>