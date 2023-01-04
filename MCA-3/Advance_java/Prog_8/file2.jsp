<%-- 
    Document   : file2.jsp
    Created on : 2 Jan, 2023, 3:07:05 PM
    Author     : mcacnj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <br><br><br>
        <b>STUDENT DETAILS RETRIVED FROM STUDENT BEAN</b>
        <jsp:useBean id="stud" scope="session" class = "Program.StudentBean"/>
        <table>
            <tr>
                <td>Student Name:<jsp:getProperty name="stud" property="name"/></td>
               
            </tr>
            
            <tr>
                <td>Student USN:<jsp:getProperty name="stud" property="usn"/></td>
               
            </tr>
            <tr>
                <td>Student Branch:<jsp:getProperty name="stud" property="branch"/></td>
               
            </tr>
            
            
            <tr>
                <td>Student Email:<jsp:getProperty name="stud" property="email"/></td>
               
            </tr>
            
            <tr>
                <td>Student Phone:<jsp:getProperty name="stud" property="phone"/></td>
               
            </tr>
            
           
        </table>
    </center>
    </body>
</html>
