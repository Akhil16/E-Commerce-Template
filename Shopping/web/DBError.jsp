<%-- 
    Document   : DBError
    Created on : Sep 29, 2016, 5:00:34 PM
    Author     : Amang8662
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error In DB</title>
        <link rel='stylesheet' type='text/css' href='css/error.css'>
    </head>
    <body style="background:url('images/background3.jpg') no-repeat center center fixed;background-size: cover;font-style: italic;">
    <a href='logout.html' id='logout'>Logout</a>
    <img id='shopimg' src='images/shopping_logo5.png' alt='Shopping Logo'>
    <p>Some Error Occured In DB. Try <a href='SeeStoreServlet'>again</a>.</p>
    </body>
</html>
