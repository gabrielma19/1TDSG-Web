<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Clientes</title>
<link rel="stylesheet" 
				type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<%@ include file="menu.jsp" %>
<div class="container">
	<h1>Lista de Clientes</h1>
	<table class="table">
		<tr>
			<th>Nome</th>
			<th>Idade</th>
			<th>Endereço</th>
			<th>Sexo</th>
		</tr>	
		<c:forEach var="cliente" items="${chave}">
			<tr>
				<td>${cliente.nome }</td>
				<td>${cliente.idade }</td>
				<td>${cliente.endereco }</td>
				<td>${cliente.sexo }</td>
			</tr>
		</c:forEach>		
	</table>
</div>

</body>
</html>