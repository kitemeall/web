

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
        
    
    <% for(Goods goods:goodsList) { %> 
        <jsp:include page="list_item.jsp" >
            <jsp:param name="name" value="<%= goods.getName()%>" />
            <jsp:param name="price" value="<%= String.valueOf(goods.getPrice())%>" />
            <jsp:param name="description" value="<%=goods.getInformation()%>" />
        </jsp:include>
        
        <br>
    <%}%>     

    </body>
</html>
