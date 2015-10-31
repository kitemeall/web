<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${sessionScope.lang}" />
<fmt:setBundle basename="ui.lang.lang" />

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.ArrayList, domain.Shop, domain.Goods"%>

<%
    ArrayList<Goods> goodsList;
    String categ = request.getParameter("cat");
    String lang = request.getParameter("lang");
    if(lang == null)
       lang = getServletContext().getInitParameter("lang");
    if(categ == null)
        goodsList = Shop.getAllGoodsList(lang);
    else
        goodsList = Shop.getGoodsFromCategories(lang, categ);
    
    %>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel='stylesheet' type='text/css' href='css/list.css'>
    </head>
   
    <body>
         <jsp:include page="header.jsp" />
         <br>
         <%String category = (String)session.getAttribute("category");%>
         <select id="type_select">
             <option value="all"<%if(category.equals("all")) out.print("selected"); %>>
                 <fmt:message key="all" />
             </option>
            <option value="tourist"<%if(category.equals("tourist")) out.print("selected"); %>>
                <fmt:message key="tourist" /> 
            </option>
             <option value="auto"<%if(category.equals("auto")) out.print("selected"); %>>
                 <fmt:message key="auto" />
             </option>
             <option value="water"<%if(category.equals("water")) out.print("selected"); %>>
                 <fmt:message key="water" /> 
             </option>
         </select>
         <br>
         <br> 
        <jsp:useBean id="item" class="domain.Goods" scope="request"/> 
    <% for(Goods goods:goodsList) { %> 
        <jsp:setProperty name="item" property="name" value="<%=goods.getName()%>"/>
        <jsp:setProperty name="item" property="information" value="<%=goods.getInformation()%>"/>
        <jsp:setProperty name="item" property="price" value="<%=goods.getPrice()%>"/>
        <jsp:setProperty name="item" property="mainPhoto" value="<%=goods.getMainPhoto()%>"/>
        <jsp:setProperty name="item" property="id" value="<%=goods.getId()%>"/>
        <jsp:include page="list_item.jsp" />
            
        
        <br>
    <%}%>     
    <script src="js/list_select.js"></script>
    </body>
</html>
