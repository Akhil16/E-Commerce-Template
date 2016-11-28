<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="DBError.jsp"%>
<%@page import="shopping.ItemList"%>
<%
    String itemtype=request.getParameter("itemtype");
    shopping.ShoppingModel s=new shopping.ShoppingModel();
    java.util.ArrayList <ItemList> list=s.getItemList(itemtype);
    for(ItemList item:list)
    {
        out.println("<li><a href='ShowItemServlet?item_id="+item.getId()+"' >"+item.getName()+"</a>(Rs"+item.getPrice()+")</li>");
    }
%>
