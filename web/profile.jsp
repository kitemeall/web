<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${requestScope.lang}" />
<fmt:setBundle basename="ui.lang.lang" />

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.ArrayList, domain.Order, domain.OrderItem"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <link rel='stylesheet' type='text/css' href='css/cart.css'>
    </head>
    <body>
        <jsp:include page="header.jsp" >
            <jsp:param name="activeTab" value="profile" />
        </jsp:include>
        <br>
         <fmt:message key="your_name" /> - ${pageContext.request.userPrincipal.name}
        <br>
        <fmt:message key="default_tab" /> - ${initParam.default_tab}

    </body>
</html>
