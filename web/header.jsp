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
                    <li><a  class = 'lang_link' id ='ru'>Русский</a></li>
  			<li><a class = 'lang_link' id ='en'>English</a></li>
   			<li><a class = 'lang_link' id ='ua'>Українська</a></li>
	</div>
	
	<h1> 
            <fmt:message key="shop" />
        </h1>

	<div class='menu'>
		<ul>
                    <li
                        <c:if test="${'login'eq param.activeTab}">
                            class='active_tab'
                        </c:if>
                        ><a href='login'>
                        <fmt:message key="enter" />
                        </a></li>
                    <li
                        <c:if test="${'catalog'eq param.activeTab}">
                            class='active_tab'
                        </c:if>
                             ><a href='list'>
                                <fmt:message key="catalog" />
                        </a></li>
                    <li
                        <c:if test="${'cart'eq param.activeTab}">
                            class='active_tab'
                        </c:if>
                            ><a href='cart'>
                            <fmt:message key="cart" />
                        </a></li>
                    <li
                        <c:if test="${'history'eq param.activeTab}">
                            class='active_tab'
                        </c:if>
                            ><a href='#'>
                            <fmt:message key="history" />
                        </a></li>
   		</ul>

	</div>
</div>
                        
<script src="js/header.js"> </script>                       
</body>
</html>