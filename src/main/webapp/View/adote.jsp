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
			<a classs="navbar-brand" href="index.jsp">
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
	<!--Fim header-->
        <main>
           
         <section id="cadastro">
              <%
                 String msg = (String) session.getAttribute("cadMsg");
                    if(msg!=null){ %>
                    <div class="msg"><%=msg%></div>
            <% session.setAttribute("cadMsg", null);
            }%>
                 
               
                <div class="cadastro-ajuda container-fluid">
                    <div class="row">
                    <div class="col-lg-8 col-12">
                        <b><h1>Adote um Animalzinho, eles precisam de um lar e alguem para ama-los.</h1></b>
				<img class="img-adote border rounded border-primary" src="src/img/pets2.jpg">
                        <p>Se quer nos ajudar nesta <b>CAUSA SOLIDÁRIA</b>, Cadastre-se e entraremos em contato.</p>
                        <form action="processa.jsp" method="post">
                            <label for="nome">Nome</label>
                                <input type="text" name="nome" id="nome" placeholder="Seu nome" class="form-control" required>
                                 <label for="email">Email</label>
                                <input type="email" name="email" id="email" placeholder="Seu email" class="form-control" required>
                                 <label for="fone">Telefone</label>
                                <input type="text" name="fone" id="fone" placeholder="Seu telefone" class="form-control" required>
                                <label for="ajudar">Qual raça você prefere?</label>
                                <select class="form-control" id="opcao" name="opcao" required>
                                    <optgroup>
                                        <option value="raca">Escolha a Raça</option>
                                        <option value="srd">SRD</option>
                                         <option value="piquines">Piquinês</option>
                                          <option value="buldog">Buldog</option>
                                           <option value="pastor">Pastor Alemão</option>
                                            <option value="pitbull">Pitibull</option>
                                             <option value="sem"><b>Sem preferêcia de raça</b></option>
                                    </optgroup>
                                </select>
                            <button type="submit" class="btn btn-dark text-white">Cadastrar</button>
                    </form>
                    </div>
                </div><br>  <br>
            </div>
        </section>
            
        </main>
      <footer class="text-dark text-center bg-light">
        <br>  <br>
         <b> <h4>Desenvolvido por</h4></b>  
        <b> <p><a href="https://github.com/Keterly">      <i class="fab fa-github-square"></i>  Keterly<a/>  &  <a href="https://github.com/Andeersonn"> <i class="fab fa-github-square"></i> Anderson</a></p></b>
    <br>  <br>  
    </footer>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="src/js/script.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
</body>
</html>
