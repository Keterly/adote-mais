<%-- 
    Document   : deslogar
    Created on : 15 de nov de 2020, 20:55:17
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.invalidate(); 
            response.sendRedirect("admin.jsp");
        %>
    </body>
</html>
