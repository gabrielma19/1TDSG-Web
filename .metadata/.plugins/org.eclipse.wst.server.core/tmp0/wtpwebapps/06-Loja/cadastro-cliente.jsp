<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Cliente</title>
<link rel="stylesheet" type="text/css" 
						href="css/bootstrap.min.css">

</head>
<body>
<%@ include file="menu.jsp" %>
<div class="container">
	<h1>Cadastro de Cliente</h1>
	<% if (request.getAttribute("chave") != null) { %>
		<div class="alert alert-success">
			<%=request.getAttribute("chave") %>
		</div>
	<% } %>	
	<form action="clienteServlet" method="post">
		<div class="form-group">
			<label for="id-nome">Nome</label>
			<input type="text" name="nome" 
							id="id-nome" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-endereco">Endereço</label>
			<input type="text" name="endereco"
							id="id-endereco" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-idade">Idade</label>
			<input type="text" name="idade" 
							id="id-idade" class="form-control">
		</div>
		<div class="form-group">
			<label>Sexo</label>
			<input type="radio" name="sexo" 
							value="Feminino" id="id-feminino">
			<label for="id-feminino">Feminino</label>
			<input type="radio" name="sexo"
							value="Masculino" id="id-masculino">
			<label for="id-masculino">Masculino</label>								
		</div>
		<div class="form-group">
			<input type="submit" value="Salvar" class="btn btn-default">
		</div>
	</form>
</div>

</body>
</html>




