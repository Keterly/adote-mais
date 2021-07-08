<%-- 
    Document   : login.jsp
    Created on : 15 de nov de 2020, 19:33:39
    Author     : Admin
--%>

<%@page import="Control.AdminControl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            
           String nome = request.getParameter("nome");
           String email = request.getParameter("email");
           String senha = request.getParameter("senha");
           AdminControl ac = new AdminControl();
           if(nome!=null){
            if(ac.login(email, senha)){
                session.setAttribute("admin", nome);
                response.sendRedirect("cadastros.jsp");
            }
             else if(!ac.login(email, senha)){
                response.sendRedirect("admin.jsp");
                session.setAttribute("mensagemErro", "Login Inválido");
            }
          }
          else{
            response.sendRedirect("admin.jsp");
           }
          
            
                          
             
        %>
        
    </body>
</html>
