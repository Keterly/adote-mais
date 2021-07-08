<%-- 
    Document   : index
    Created on : 8 de nov de 2020, 14:25:36
    Author     : User
--%>

<%@page import="Control.UsuarioControl"%>
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
                                        <li class="nav-item">
						<a class="nav-link" href="admin.jsp">Login</a>	
					</li>
										
				</ul>
			</div>
			
		</div>
		
	</nav>
	<!--Fim menu-->
        
      <header>
		
	</header>
	<!--Fim header-->
        <main>
            <section id="somos">
                <div class="container">
			<div class="row">
				<!--texto-->
				<div class="col-lg-5 col-12 text-light jumbotron bg-transparent">
					
					<h1 >Quem somos?</h1>
					<p class="text-light">
						Somos um Orgão que acolhe os animais domésticos quem não tem um lar,
                                                e buscamos aquelas pessoas que tem o iteresse em adotar um animalzinho de estimação.
					</p>
					<a href="adote.jsp" class="btn btn-dark btn-lg">Adote</a>
					
				</div>

				<!--Carosel / Figuras-->
				<div class="col-lg-7 col-12">
					<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                            <div class="carousel-inner">
                                              <div class="carousel-item active">
                                                <img class="d-block w-100" src="src/img/dog1.jpeg" alt="First slide">
                                              </div>
                                              <div class="carousel-item">
                                                <img class="d-block w-100" src="src/img/dog11.jpeg" alt="Second slide">
                                              </div>
                                              <div class="carousel-item">
                                                <img class="d-block w-100" src="src/img/dog12.jpeg" alt="Third slide">
                                              </div>
                                            </div>
                                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                              <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                              <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                              <span class="sr-only">Next</span>
                                            </a>
                                    </div>
                            </div>
          </div>
               
            </section>
            
            <section id="fazemos">
                     <h1>O que fazemos?</h1>
                     <div class="fazemos-card container">
                          <div class="row">
                        <div class="col-lg-4 col-12">
                            <div class="card">
                                <img class="card-img-top" src="src/img/dog-resgate.jpeg">
                                    <div class="card-body">
                                        <h5 class="card-title">RESGATE</h5>
                                        <p class="card-text">Resgatamos animais abandonados, maltratados e em perigo.</p>
                                        <a class="btn btn-dark text-white link-s" href="#cadastro">SEJA VOLUNTÁRIO</a>
                                    </div>
                                </div>
                            </div>
                            
                        <div class="col-lg-4 col-12">
                             <div class="card">
                                 <img class="card-img-top" src="src/img/dog-doacao.jpeg">
                                    <div class="card-body">
                                        <h5 class="card-title">DOAÇÃO</h5>
                                        <p class="card-text">Arrecadamos doações de ração para cães adultos e filhotes.</p>
                                        <a class="btn btn-dark text-white link-s" href="#cadastro">DOE TAMBÉM</a>
                                    </div>
                                </div>
                        </div>
                              
                        <div class="col-lg-4 col-12">
                             <div class="card">
                                 <img class="card-img-top" src="src/img/dog-adote.jpeg">
                                    <div class="card-body">
                                        <h5 class="card-title">ADOÇÃO</h5>
                                        <p class="card-text">Temos cães esperando para serem adotados por você.</p>
                                        <a class="btn btn-dark text-white" href="adote.jsp">ADOTE</a>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </section>
            
            <section id="lista">
                <div class="container lista">
                    <b><p class="font text-light" font-size="20px"> Em breve você entrará para a lista de pessoas que já ajudaram ou adotaram!!! </p></b>
                <button class="btn btn-dark text-white">LISTA</button>
                <ul style="display: none; list-style-type: none">
                    <%
                        UsuarioControl uc = new UsuarioControl();
                          for(int i=0; i < uc.mostraLista().size(); i++){
                                %>
                                <li><%=uc.mostraLista().get(i)%></li>
                            <% }
                        %>
                  
                </ul>
                </div>
            </section>
                 
            <section id="cadastro">
              <%
                 String msg = (String) session.getAttribute("cadMsg");
                  String msgErro = (String) session.getAttribute("cadMsgErro");
                    if(msg!=null){ %>
                    <div class="msg"><%=msg%></div>
            <% session.setAttribute("cadMsg", null);
            }
            if(msgErro!=null){ %>
                    <div class="msg-erro"><%=msgErro%></div>
            <% session.setAttribute("cadMsgErro", null);
            }
            %>
                 
                <h1>Ajude</h1>
                <div class="cadastro-ajuda container">
                    <div class="row">
                    <div class="col-lg-8 col-12">
                        <p class="text-light">Quer nos ajudar com doações ou sendo voluntário? Cadastre-se e entraremos em contato!</p>
                        <form action="processa.jsp" method="post">
                            <label for="nome">Nome</label>
                                <input type="text" name="nome" id="nome" placeholder="Seu nome" class="form-control" required>
                                 <label for="email">Email</label>
                                <input type="email" name="email" id="email" placeholder="Seu email" class="form-control" required>
                                 <label for="fone">Telefone</label>
                                <input type="text" name="fone" id="fone" placeholder="Seu telefone" class="form-control" required>
                                <label for="ajudar">Como deseja ajudar?</label>
                                <select class="form-control" id="opcao" name="opcao" required>
                                    <optgroup>
                                        <option value="resgate">Voluntário Resgate</option>
                                        <option value="doacao">Voluntário Doação</option>
                                    </optgroup>
                                </select>
                                <button type="submit" class="btn btn-dark text-white" href="">Cadastrar</button>
                    </form>
                    </div>
                </div>
            </div>
        </section>
                    
    </main>  
     <footer class="text-dark text-center bg-light">
        <br>  <br>
         <b> <h4>Desenvolvido por</h4></b>  
        <b> <p><a href="https://github.com/Keterly">      <i class="fab fa-github-square"></i>  Keterly<a/>  &  <a href="https://github.com/Andeersonn"> <i class="fab fa-github-square"></i> Anderson</a></p></b>
    <br>  <br>  
    </footer>
	<!--Fim rodape-->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="src/js/script.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
</body>
</html>
