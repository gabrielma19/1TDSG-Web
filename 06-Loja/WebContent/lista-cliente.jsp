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
	
	<c:if test="${not empty mensagem }">
		<div class="alert alert-danger">
			${mensagem }
		</div>
	</c:if>
	
	<table class="table">
		<tr>
			<th>Nome</th>
			<th>Idade</th>
			<th>Endereço</th>
			<th>Sexo</th>
			<th></th>
		</tr>	
		<c:forEach var="cliente" items="${chave}">
			<tr>
				<td>${cliente.nome }</td>
				<td>${cliente.idade }</td>
				<td>${cliente.endereco }</td>
				<td>${cliente.sexo }</td>
				<td>
					<c:url value="clienteServlet" var="link">
						<c:param name="codigoCliente" value="${cliente.codigo }"/>
						<c:param name="acao" value="abrirForm"/>
					</c:url>
					<a href="${link }" class="btn btn-info btn-sm">Alterar</a>
					<button onclick="idCliente.value = ${cliente.codigo}" type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal">
  						Remover
					</button>
				</td>
			</tr>
		</c:forEach>		
	</table>
	
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Confirmação</h4>
      </div>
      <div class="modal-body">
        Você realmente deseja excluir o cliente?
      </div>
      <div class="modal-footer">
      	<form action="clienteServlet" method="post">
      		<input type="hidden" name="acao" value="excluir">
      		<input type="hidden" name="codigoCliente" id="idCliente">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
	        <button type="submit" class="btn btn-danger">Sim</button>
        </form>
      </div>
    </div>
  </div>
</div>
	
</div>

</body>
</html>