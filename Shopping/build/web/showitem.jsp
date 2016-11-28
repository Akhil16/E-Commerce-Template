<%-- 
    Document   : showitem
    Created on : Sep 29, 2016, 2:20:18 AM
    Author     : Amang8662
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="DBError.jsp"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Items</title>
		<link type="text/css" rel='stylesheet' href='css/style.css'>
    </head>
    <jsp:useBean id="shop" class="shopping.Shop" scope="page"/>
    <body style="background:url('images/background3.jpg') no-repeat center center fixed;background-size: cover;font-size:20px;">
        <jsp:setProperty name="shop" property="itemdetail" value="${sessionScope.item}"/>
        <img id='shopimg' src='images/shopping_logo5.png' alt='Shopping Logo'>
        <a href='logout.jsp' id='logout'>Logout</a>
<pre>
<span style='font-weight:bold;font-size:30px;'>My Store - Item Detail</span><br/>
<span style="font-style: italic;">You are viewing:</span>
<b><span  style='color:blue'>${shop.itemdetail.item_type} &gt;</span> ${shop.itemdetail.item_name}</b>
</pre>
<img src="images/${shop.itemdetail.image}" class="wrap align-left" alt="product"><br/>
<pre>
<b>Description:</b>
${shop.itemdetail.description}<br/> 	
<b>Price:</b>Rs ${shop.itemdetail.item_price}
</pre>
    </body>
</html>