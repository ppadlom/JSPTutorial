<%-- 
    Document   : view
    Created on : Dec 31, 2013, 9:13:25 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello <%= request.getParameter("day") %>!</h1>
        <h1>Hello <%= request.getAttribute("day") %>!</h1>
        <h2>Hello ${day}</h2>
    </body>
</html>
