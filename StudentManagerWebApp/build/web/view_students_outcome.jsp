<%-- 
    Document   : view_students_outcome
    Created on : Jun 5, 2024, 3:30:06 PM
    Author     : USER
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Students Outcome Page</title>
    </head>
    <body>
        <h1>View All Students Outcome</h1>
        <%
            List<Student> stud = (List<Student>)request.getAttribute("stud");
            
            
        %>
        <%
            for (int i = 0; i < stud.size(); i++) {
                    
                String strImg = Base64.getEncoder().encodeToString(stud.get(i).getPhoto());
                Long id = stud.get(i).getId();
                String name = stud.get(i).getName();
                String surname = stud.get(i).getSurname();
                String img = "data:image;base64,"+strImg;
        %>
        <table>
            <tr>
                <td><img src="<%=img%>" alt="Student photo" width="150px" height="150px"></td>
            </tr>
            <tr>
                <td>Student Number:</td>
                 <td><%=id%></td>
            </tr>
            <tr>
                <td>Name:</td>
                 <td><%=name%></td>
            </tr>
            <tr>
                <td>Surname:</td>
                <td><%=surname%></td>
            </tr>
            <tr>
                <td></td>
                <td>===================================</td>
            </tr>
        </table>
        <%   
            }
        %>
        <p>
            Click <a href="menu.jsp">here</a> to go back to the menu page or 
            <a href="index.html">here</a> to go the main page.
        </p>  
        <p>
            <a href="LogoutServlet.do">Logout</a>
        </p>
    </body>
</html>
