<%-- 
    Document   : page1.jsp
    Created on : 26 Dec, 2022, 2:44:38 PM
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
        <h1>JSP included</h1>
        First:<%=request.getParameter("Fname")%><br>
        Last:<%=request.getParameter("Lname")%><br>
        Address:<%=request.getParameter("Address")%><br>        
                
    </body>
</html>
