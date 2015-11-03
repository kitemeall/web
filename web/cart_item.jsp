<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${sessionScope.lang}" />
<fmt:setBundle basename="ui.lang.lang" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="item" class="domain.OrderItem" scope="request" />
<!DOCTYPE html>
<html>
<meta charset='utf-8'>
<head>
	<link rel='stylesheet' type='text/css' href='css/list_styles.css'>
</head>
<body>
    <div class="main_div">
       
	<div id="image">
            <img src="<jsp:getProperty name="item" property="mainPhoto"/>">
	</div>
        <div id="layout_vertical">
            <a href="product?id=<jsp:getProperty name="item" property="id"/>">
            
            <h2><jsp:getProperty name="item" property="name"/></h2>
            </a>
            <div id="description">	
                <jsp:getProperty name="item" property="information"/>           
            </div>
	</div>

	<div class="layout_vertical_right">
			<div id="price"><jsp:getProperty name="item" property="price"/></div>
			<div class="amount">
				<div class="amount_button">+</div>
				<div class="amount_value"><jsp:getProperty name="item" property="amount"/></div>
				<div class="amount_button">-</div>
			</div>
		</div>
    </div>
</body>
</html>