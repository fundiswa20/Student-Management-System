<%-- 
    Document   : menu
    Created on : Jun 4, 2024, 10:47:12 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <ul>
            <li><a href="store_student.jsp">Store student details</a></li>
            <li><a href="search_student.jsp">Search student</a></li>
            <li><a href="ViewStudentsServlet.do">View all students</a></li>
            <li><a href="delete_student.jsp">Delete student </a></li>
            <li><a href="NumberOfStudentsServlet.do">Display number of students persisted in the database</a></li>
        </ul>
    </body>
</html>
