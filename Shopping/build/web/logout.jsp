<%-- 
    Document   : logout
    Created on : Oct 12, 2016, 7:32:26 PM
    Author     : Amang8662
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log out</title>
    </head>
    <body style="background:url('images/background3.jpg') no-repeat center center fixed;background-size: cover;font-style:italic;">
        <%
            session.removeAttribute("userid");
        %>
        <center>
            <h3 style="font:Comic Sans MS italic;">You have Successfully Logged out.<a href="login.html">Login</a></h3>
        </center>
       
    </body>
</html>
