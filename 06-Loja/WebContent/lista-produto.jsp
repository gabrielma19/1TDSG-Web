<%@page import="br.com.fiap.bean.Produto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Produtos</title>
<link rel="stylesheet" 
				type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<%@ include file="menu.jsp" %>
<!-- Recupera a lista que a serlvet enviou -->
<% List<Produto> lista = (List<Produto>) request.getAttribute("listaProdutos"); %>
	
	<div class="container">
		<h1>Lista de Produtos</h1>
		<table class="table">
			<tr>
				<th>Titulo</th>
				<th>Descrição</th>
				<th>Valor</th>
				<th>Fabricante</th>
			</tr>
			<% for (Produto p : lista) { %>
				<tr>
					<td><%=p.getTitulo() %></td>
					<td><%=p.getDescricao() %></td>
					<td><%=p.getValor() %></td>
					<td><%=p.getFabricante() %></td>
				</tr>
			<% } %>
		</table>
	</div>

</body>
</html>






