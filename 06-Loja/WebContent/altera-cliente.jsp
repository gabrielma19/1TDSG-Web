<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atualização de Cliente</title>
<link rel="stylesheet" 
				type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<%@ include file="menu.jsp" %>
<div class="container">
	<h1>Atualização de Cliente</h1>
	
	<!-- Exibe as mensagens -->
	<c:if test="${not empty mensagem }">
		<div class="alert alert-danger">
			${mensagem }
		</div>
	</c:if>
	
	<form action="clienteServlet" method="post">
		<input type="hidden" name="acao" value="alterar">
		<input type="hidden" name="codigo" value="${cli.codigo }">
		<div class="form-group">
			<label for="idNome">Nome</label>
			<input value="${cli.nome}" type="text" name="nome" id="idNome" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-endereco">Endereço</label>
			<input type="text" name="endereco" value="${cli.endereco }"
							id="id-endereco" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-idade">Idade</label>
			<input type="text" name="idade" value="${cli.idade }" 
							id="id-idade" class="form-control">
		</div>
		<div class="form-group">
			<label>Sexo</label>
			<input type="radio" name="sexo" 
				<c:if test="${cli.sexo == 'Feminino' }">checked</c:if> 
							value="Feminino" id="id-feminino">
			<label for="id-feminino">Feminino</label>
			
			<input type="radio" name="sexo"
				<c:if test="${cli.sexo == 'Masculino' }">checked</c:if> 
							value="Masculino" id="id-masculino">
			<label for="id-masculino">Masculino</label>								
		</div>
		<div class="form-group">
			<input type="submit" value="Alterar" class="btn btn-info">
		</div>
	</form>
</div>
</body>






</html>