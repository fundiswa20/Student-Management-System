<%-- 
    Document   : search_outcome
    Created on : Jun 5, 2024, 3:19:56 PM
    Author     : USER
--%>

<%@page import="java.util.Base64"%>
<%@page import="za.ac.tut.model.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Student Page</title>
    </head>
    <body>
        <h1>Search Student</h1>
        <%
            Student student = (Student)request.getAttribute("student");
            String image_string = Base64.getEncoder().encodeToString(student.getPhoto());
            String image = "data:image;base64,"+image_string;
        %>
        <table>
            
            <tr>
                <td><img src="<%=image%>" alt="Student photo" width="100px" height="100px"></td>
            </tr>
            <tr>
                <td>Student Number:</td>
                 <td><%=student.getId()%></td>
            </tr>
            <tr>
                <td>Name:</td>
                 <td><%=student.getName()%></td>
            </tr>
            <tr>
                <td>Surname:</td>
                 <td><%=student.getSurname()%></td>
            </tr>
        </table>
            <p>
            Click <a href="menu.jsp">here</a> to go back to the menu page or 
            <a href="index.html">here</a> to go the main page.
        </p>  
        <p>
            <a href="LogoutServlet.do">Logout</a>
        </p>
    </body>
</html>
