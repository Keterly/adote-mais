<%-- 
    Document   : processa
    Created on : 15 de nov de 2020, 19:39:30
    Author     : Admin
--%>

<%@page import="Control.UsuarioControl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            String admin = (String) session.getAttribute("admin");
            if(admin==null){
                response.sendRedirect("admin.jsp");
             }
             else{
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String telefone = request.getParameter("fone"); 
            String tipo = request.getParameter("tipo"); 
            String descricao = request.getParameter("descricao"); 
            
            if(nome != null){
            UsuarioControl uc = new UsuarioControl(nome, email, telefone, tipo, descricao);
            uc.salvar();    
            session.setAttribute("mensagem", "Cadastro de " + nome + " realizado com sucesso!");
            response.sendRedirect("cadastros.jsp");
          
            }
            else{
                session.setAttribute("mensagemErro", "Cadastro não realizado, tente mais uma vez");
                response.sendRedirect("cadastros.jsp");
              }
           }
        %>
        <h1>Todos:</h1>
    </body>
</html>
