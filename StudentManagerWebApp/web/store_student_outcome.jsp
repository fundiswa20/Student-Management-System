<%-- 
    Document   : store_student_outcome
    Created on : Jun 4, 2024, 11:18:11 PM
    Author     : USER
--%>

<%@page import="java.util.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store Student Outcome Page</title>
    </head>
    <body>
        <h1>Store Student Outcome</h1>
        <%
            
            Long id = (Long)request.getAttribute("id");
            String name = (String)request.getAttribute("name");
            String surname = (String)request.getAttribute("surname");
            byte[] image_to_byte = (byte[])request.getAttribute("image_to_byte");
            String image_string = Base64.getEncoder().encodeToString(image_to_byte);
            String image = "data:image;base64,"+image_string;
        %>
        
        <table>
            
            <tr>
                <td><img src="<%=image%>" alt="Student photo" width="100px" height="100px"></td>
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
        </table>
        <p>
            This student has been successfully persisted in the database.
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
