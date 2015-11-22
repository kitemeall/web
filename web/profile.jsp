<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${requestScope.lang}" />
<fmt:setBundle basename="ui.lang.lang" />

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.ArrayList, domain.*"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
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



        <br>

        <c:set var="orders" value="${requestScope.orders}"/>

        <c:forEach var="order" items="${orders}">
            номер заказа <c:out value="${order.getId()}"/>
            <br>
            дата заказа <c:out value="${order.getDate()}"/>
            <br>

            <c:choose>
                <c:when test="${order.isDelivery()}">
                    Доставка до 
                </c:when>
                <c:otherwise>
                    Самовывоз из магазина 
                </c:otherwise>
            </c:choose>
            <c:out value="${order.getAddress()}"/>
            <br>

            Общая стоимоть заказа $
            <c:out value="${order.getTotalPrice()}"/>






            <c:forEach var="item" items="${order.getCart().getCartItemList()}">
                <div class="main_div">
                    <div id="image">
                        <img src="<c:out value="${item.getPicture()}"/>"/>
                    </div>
                    <div id="layout_vertical">


                        <h2> <c:out value="${item.getName()}"/> </h2>

                        <div id="description">	
                            <c:out value="${item.getDescription()}"/>           
                        </div>
                    </div>

                    <div class="layout_vertical_right">
                        <div id="price">$<c:out value="${item.getPrice()}"/> </div>
                        <div class="amount">

                            <div class="amount_value"><c:out value="${item.getAmount()}"/></div>

                        </div>
                    </div>
                </div>
                <br>                
            </c:forEach>

        </c:forEach>

    </body>
</html>
