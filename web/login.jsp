<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${requestScope.lang}" />
<fmt:setBundle basename="ui.lang.lang" />

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.ArrayList, domain.Order, domain.OrderItem"%>


<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cart</title>
    <link rel='stylesheet' type='text/css' href='css/cart.css'>
</head>
<jsp:include page="header.jsp" >
    <jsp:param name="activeTab" value="login" />
</jsp:include>
<html>
    <body >
        <form method="POST" action="j_security_check">
            <center>
                <table border="0">
                    <tr>
                        <td>
                            <fmt:message key="login" />

                        </td>
                        <td><input type="text" name="j_username"></td>
                    </tr>
                    <tr>
                        <td>
                            <fmt:message key="password" />

                        </td>
                        <td><input type="password" name="j_password"></td>
                    </tr>
                </table>
                <input type="submit" value="<fmt:message key="enter" />">
            </center>
        </form>
    </body>
</html>