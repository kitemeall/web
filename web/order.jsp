<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${requestScope.lang}" />
<fmt:setBundle basename="ui.lang.lang" />
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="domain.*"%>

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
        <jsp:include page="header.jsp" />
        
</body>
</html>
