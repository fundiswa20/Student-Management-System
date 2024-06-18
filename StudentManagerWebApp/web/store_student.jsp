<%-- 
    Document   : store_student
    Created on : Jun 4, 2024, 10:52:06 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store Student Page</title>
    </head>
    <body>
        <h1>Store Student</h1>
        <p>
            Please enter the following details:
        </p>
        <form action="StoreStudentServlet.do" method="POST" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>Student Number:</td>
                    <td><input type="text" name="studNum" required=""></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" required=""></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td><input type="text" name="surname" required=""></td>
                </tr>
                <tr>
                    <td>Photo:</td>
                    <td><input type="file" name="photo"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="STORE STUDENT"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
