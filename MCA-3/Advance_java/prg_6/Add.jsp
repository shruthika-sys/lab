<%-- 
    Document   : Add
    Created on : 26 Dec, 2022, 2:26:33 PM
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
        <h1>Adding two values</h1>
        <%
            int f1=Integer.parseInt(request.getParameter("feild1"));
            int f2=Integer.parseInt(request.getParameter("feild2"));
            int sum=f1+f2;
            %>
            <jsp:forward page="/Result.jsp">
                <jsp:param name="result" value="<%=sum%>"/>
            </jsp:forward>
    </body>
</html>
