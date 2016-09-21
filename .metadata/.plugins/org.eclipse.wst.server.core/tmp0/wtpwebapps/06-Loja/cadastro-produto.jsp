<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Produto</title>
<link rel="stylesheet" type="text/css" 
						href="css/bootstrap.min.css">
</head>
<body>
<%@ include file="menu.jsp" %>
<div class="container">
	<h1>Cadastro de Produto</h1>
	
	<% if (request.getAttribute("mensagem") != null) { %>
		<div class="alert alert-warning">
			<%= request.getAttribute("mensagem") %>
		</div>
	<% } %>
	
	<form action="produtoServlet" method="post">
		<div class="form-group">
			<label for="id-titulo">Título</label>
			<input class="form-control" type="text" name="titulo" id="id-titulo">
		</div>
		<div class="form-group">
			<label for="id-desc">Descrição</label>
			<textarea class="form-control" cols="30" rows="5" name="descricao" 
			id="id-desc"></textarea>
		</div>
		<div class="form-group">
			<label for="id-valor">Valor</label>
			<input class="form-control" type="text" name="valor" id="id-valor">
		</div>
		<div class="form-group">
			<label for="id-fab">Fabricante</label>
			<select class="form-control" id="id-fab" name="fabricante">
				<option>Selecione</option>
				<option>Sonia</option>
				<option>Motolola</option>
				<option>Flango</option>
			</select>
		</div>
		<div class="form-group">
			<input class="btn btn-success" type="submit" value="Salvar">
			<a href="produtoServlet">Lista de Produto</a>
		</div>
	</form>
</div>	
</body>
</html>








