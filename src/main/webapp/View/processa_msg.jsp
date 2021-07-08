<%@page import="Control.MensagemControl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String nome = request.getParameter("name");
            String email = request.getParameter("email");
            String mensagem = request.getParameter("message");
            if(nome != null){
            MensagemControl mc = new MensagemControl(nome, email, mensagem);
            mc.enviarMsg();
            session.setAttribute("msgEnvio", "Mensagem enviada com sucesso");
            }
            else{
                session.setAttribute("msgEnvioErro", "Falha no envio da mensagem");
             }
            response.sendRedirect("contato.jsp");
            
        %>
    </body>
</html>