
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="item" class="domain.Goods" scope="request" />
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
            <h2><jsp:getProperty name="item" property="name"/></h2>
            <div id="description">	
                <jsp:getProperty name="item" property="information"/>           
            </div>
	</div>

	<div class="layout_vertical_right">
            <div id="price">
                <jsp:getProperty name="item" property="price"/>    
            </div>
            <div class="buy_button">buy</div>
	</div>
    </div>
</body>
</html>