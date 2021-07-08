<%-- 
    Document   : index
    Created on : 8 de nov de 2020, 14:25:36
    Author     : User
--%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <link rel="icon" href="src/img/logo.png">
                <script src="https://kit.fontawesome.com/9f439e860c.js" crossorigin="anonymous"></script>
        <title>Adote Mais</title>
        <link href="src/css/style.css" rel="stylesheet" type="text/css"/>
 
    
    </head>

    <body>
           <header>

            <nav class="navbar navbar-dark navbar-expand-lg navbar-default fixed-top">
        <div class="container-fluid">
            <!--LOGO-->
            <a class="navbar-brand" href="index.jsp">
                <img src="src/img/logo.png" width="100px" height="100px">
            </a>
 
            <!--botao para menu celular-->
            <button class="navbar-toggler" data-toggle="collapse" data-target="#menu" aria-expanded="false">
                <span class="navbar-toggler-icon"></span>
            </button>
 
            <!--Menu-->
            <div class="collapse navbar-collapse" id="menu">
                <ul class="navbar-nav ml-md-auto text-light">
 
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>    
                    </li>
 
                    <li class="nav-item">
                        <a class="nav-link" href="caes.jsp">Cães</a>    
                    </li>
 
                    <li class="nav-item">
                        <a class="nav-link" href="adote.jsp">Adote</a>    
                    </li>
 
                    <li class="nav-item">
                        <a class="nav-link" href="contato.jsp">Contato</a>    
                    </li>

                </ul>
            </div>

                </div>

    </nav>
    <!--Fim menu-->
    </header>

      <main> 
          
          <section id="contato">
            <%
                 String msg = (String) session.getAttribute("msgEnvio");
                 String msgErro = (String) session.getAttribute("msgEnvioErro");
                    if(msg != null){ %>
                    <div class="msg"><%=msg%></div>
            <% session.setAttribute("msgEnvio", null);
                }
            if(msgErro != null){ %>
                    <div class="msg-erro"><%=msgErro%></div>
            <% session.setAttribute("msgEnvioErro", null);
                }
            %>

               <div class="form-container"> 
                      

                <b><h3 class="text-center">Entre em Contato Conosco!</h3></b>
                <br><br><form action="processa_msg.jsp" method="post">

                    <input type="text" name="name" id="name" placeholder="Nome">
                    <input type="email" name="email" id="email" placeholder="E-mail">
                    <textarea name="message" id="message" placeholder="Sua mensagem"></textarea>
                    <input type="submit" class="submit" value="Enviar">
                </form>   

               </div>


        </section>

      </main>
 

        <!--FOOTER-->
        <footer class="text-dark text-center bg-light">     
            <b><p><a href="https://www.instagram.com/"> <i class="fab fa-instagram"></i>INSTAGRAM</a><a href="https://www.facebook.com/"> <i class="fab fa-facebook"></i>FACEBOOK</a><a href="https://www.google.com/intl/pt/gmail/about/"> <i class="fas fa-envelope-square"></i>E-MAIL</a><p></b>                             

       <b> <h4>Desenvolvido por</h4></b>   
  <b> <p><a href="https://github.com/Keterly">      <i class="fab fa-github-square"></i>  Keterly<a/>  &  <a href="https://github.com/Andeersonn"> <i class="fab fa-github-square"></i> Anderson</a></p></b>    <br>  <br>  
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="src/js/script.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>

