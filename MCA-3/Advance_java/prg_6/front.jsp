<%-- 
    Document   : Front
    Created on : 26 Dec, 2022, 2:11:44 PM
    Author     : mcacnj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page for get from values</title>
    </head>
    <body>
        <h1>Welcome to Vivekananda College of Engineering and Technology</h1>
        <% String s1=request.getParameter("feild1");
        String s2=request.getParameter("feild2");
        Integer.parseInt(s1);
        Integer.parseInt(s2);
        String submit=request.getParameter("submit");
        if(submit.equals("add"))
        {
         %>
         <jsp:forward page="/Add.jsp"/>
         <%
             }
         else if(submit.equals("sub"))
         {
         %>
         
         <jsp:forward page="/sub.jsp"/>
         <%
          }
        else
        {
        %>
        <jsp:forward page="/index.html"/>
        <%
        }
        %>
    </body>
</html>
