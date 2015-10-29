

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
    </head>
   
    <body>
        
        <jsp:useBean id="item" class="domain.Goods" scope="request"/> 
    <% for(Goods goods:goodsList) { %> 
        <jsp:setProperty name="item" property="name" value="<%=goods.getName()%>"/>
        <jsp:setProperty name="item" property="information" value="<%=goods.getInformation()%>"/>
        <jsp:setProperty name="item" property="price" value="<%=goods.getPrice()%>"/>
        <jsp:setProperty name="item" property="mainPhoto" value="<%=goods.getMainPhoto()%>"/>

        <jsp:include page="list_item.jsp" />
            
        
        <br>
    <%}%>     

    </body>
</html>
