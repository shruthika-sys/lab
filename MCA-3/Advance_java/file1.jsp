<%-- 
    Document   : file1.jsp
    Created on : 2 Jan, 2023, 2:59:35 PM
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
        <%@ page language="java" import="java.beans.*"%>
        <jsp:useBean id="stud" class = "Program.StudentBean" scope="request">
            <jsp:setProperty name="stud" property="name"/>
             <jsp:setProperty name="stud" property="usn"/>
              <jsp:setProperty name="stud" property="branch"/>
               <jsp:setProperty name="stud" property="email"/>
                <jsp:setProperty name="stud" property="phone"/>
        </jsp:useBean>
        <jsp:forward page="file2.jsp"/>
    </body>
</html>
