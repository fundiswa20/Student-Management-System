<%-- 
    Document   : num_students_outcome
    Created on : Jun 5, 2024, 4:15:03 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Number of Students Outcome Page</title>
    </head>
    <body>
        <h1>Number of Students Outcome</h1>
        <%
            Integer num = (Integer)request.getAttribute("stud");
        %>
        <p>
            There are <b><u><i><%=num%></i></u></b> students stored in the database.
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
