<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- FAZER AS IMPORTAÇÕES DA CLASSE E DO ARRAYLIST -->

<%@page import="model.Curso"%>
<%@page import="java.util.ArrayList"%>

<!-- ALIMENTAR O OBJETO LISTA COM OS DADOS DA LISTA ALUNOS -->
<%
ArrayList<Curso> lista = (ArrayList<Curso>) request.getAttribute("cursos");
%>


<%
request.getSession().getAttribute("usuario");
Object usu = session.getAttribute("usuario");

if (usu == null) {
	response.sendRedirect("Login.jsp");
}
%>


<!DOCTYPE html>
<html lang="pt-br">
<head>
<!-- Meta tags Obrigatórias -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<title>Relatório de Curso</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Cadastros </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="CadAluno.jsp">Aluno</a> <a
							class="dropdown-item" href="CadCurso.jsp">Curso</a> <a
							class="dropdown-item" href="#">Turma</a> <a class="dropdown-item"
							href="cadmatricula">Matricula</a>
					</div></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Relatórios </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="relaluno">Aluno</a> <a
							class="dropdown-item" href="#">Curso</a> <a class="dropdown-item"
							href="#">Turma</a> <a class="dropdown-item" href="#">Matricula</a>
					</div></li>



				<li class="nav-item"><a class="nav-link disabled" href="#">Desativado</a>
				</li>
			</ul>

			<a href="logout"><button
					class="btn btn-outline-success my-2 my-sm-0" type="button">Sair</button></a>

		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 text-center">

				<h3>Relatório de Curso</h3>
			</div>
		</div>

		<div class="row">

			<table class="table table-dark">
				<thead>
					<tr>
						<th scope="col">Código</th>
						<th scope="col">Nome do Curso</th>
						<th scope="col">Turno</th>

					</tr>
				</thead>
				<tbody>
					<!-- PREENCHER COM DADOS DA CLASSE/TABELA -->
					<%
					for (int i = 0; i < lista.size(); i++) {
					%>
					<tr>
						<td><%=lista.get(i).getIdcurso() %></td>
						<td><%=lista.get(i).getCargahoraria() %></td>
						<td><%=lista.get(i).getTipocurso() %></td>
					</tr>

					<%
					}
					%>

				</tbody>
			</table>

		</div>

	</div>







	<!-- JavaScript (Opcional) -->
	<!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>