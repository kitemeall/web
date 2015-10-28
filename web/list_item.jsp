
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<meta charset='utf-8'>
<head>
	<link rel='stylesheet' type='text/css' href='css/list_styles.css'>
</head>
<body>
    <div class="main_div">
	<div id="image">
            <img src="img/garmin12.jpg">
	</div>
        <div id="layout_vertical">
            <h2><%=request.getParameter("name")%></h2>
            <div id="description">	
		<%=request.getParameter("description")%>
            </div>
	</div>

	<div class="layout_vertical_right">
            <div id="price"><%=request.getParameter("price")%></div>
            <div class="buy_button">buy</div>
	</div>
    </div>
</body>
</html>