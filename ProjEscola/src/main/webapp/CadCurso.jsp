<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="pt-Br">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="Styles/CadCurso.css" media="">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>Cadastro</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Escola <span>Java</span></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#conteudoNavbarSuportado"
			aria-controls="conteudoNavbarSuportado" aria-expanded="false"
			aria-label="Alterna navegação">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="indexadm.jsp">Home <span class="sr-only">(página
							atual)</span>
				</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h3>Cadastro de cursos</h3>
			</div>
		</div>


		<form method="get" action="alunonovo">

			<div class="form-row">
				<div class="col-md-2 mb-3">
					<label for="idcliente">Código do curso</label> <input type="text"
						class="form-control" name="idcurso">
				</div>


				<div class="col-md-6 mb-3">
					<label for="nome">Nome do curso</label> <input type="text"
						class="form-control" id="" placeholder="Digite Nome"
						name="tipocurso">
				</div>

				<div class="col-md-2 mb-3">
					<label for="telefone">Turno</label> <input type="text"
						class="form-control" id="" placeholder="Digite Telefone"
						name="cargahoraria">
				</div>

			</div>

			<div class="col-lg-6 md-2 mb-3 ">
				<label for="exampleFormControlInput1" class="form-label">Email
					address</label> <input type="email" class="form-control"
					id="exampleFormControlInput1" placeholder="name@example.com"
					name="email">
			</div>
			<div class="col-lg-6 md-2 mb-3 ">
				<label for="exampleFormControlTextarea1" class="form-label">Escreva
					uma mensagem Aqui ...</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="3"></textarea>
			</div>



			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>




		
		<script
			src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script
			src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>
</html>