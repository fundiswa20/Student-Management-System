<%-- 
    Document   : search_student
    Created on : Jun 5, 2024, 3:12:06 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Student Page</title>
    </head>
    <body>
        <h1>Search Student</h1>
        <p>
            Please the student number of the student you are looking for:
        </p>
        <form action="SearchStudentServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student Number:</td>
                    <td><input type="text" name="id" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SEARCH STUDENT"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
