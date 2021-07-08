<%-- 
    Document   : processa
    Created on : 16 de nov de 2020, 19:08:37
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
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String telefone = request.getParameter("fone"); 
            String opcao = request.getParameter("opcao"); 
            if(nome != null){
            UsuarioControl uc = new UsuarioControl(nome, email, telefone, opcao);
            uc.salvar_usu();
             session.setAttribute("cadMsg", "Cadastro efetuado, aguarde nosso contato");
            }
            else{
              session.setAttribute("cadMsgErro", "Erro ao cadastrar");
            }
            response.sendRedirect("index.jsp");
            
        %>
    </body>
</html>
