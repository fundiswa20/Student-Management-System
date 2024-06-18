<%-- 
    Document   : access_denied
    Created on : Jun 5, 2024, 4:39:15 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Access Denied Page</title>
    </head>
    <body>
        <h1>Access Denied</h1>
        <p style="color: red">
            You are not authorized to access this page.
        </p>
        <p>
            Click <a href="menu.jsp">here</a> to go back to the menu page or 
            <a href="index.html">here</a> to go the main page.
        </p>  
        <p>
            <a href="LogoutServlet.do">Logout</a>
        </p>
    </body>
</html>
