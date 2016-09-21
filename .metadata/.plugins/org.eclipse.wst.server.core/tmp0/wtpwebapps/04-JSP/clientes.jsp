<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fiap.bean.Cliente"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Clientes</title>
</head>
<body>

	<%
		//Cria uma lista de clientes
		List<Cliente> lista = new ArrayList<Cliente>();
		//Adiciona 3 clientes na lista
		lista.add(new Cliente("Humberto", 20 , "Av Lins"));
		lista.add(new Cliente("Elisa Midori", 22, "Av Paulista"));
		lista.add(new Cliente("Lucas Molina",25, "Rua Bueno"));		
		lista.add(new Cliente("Lucas Molina",25, "Rua Bueno"));
		lista.add(new Cliente("Lucas Molina",25, "Rua Bueno"));
		lista.add(new Cliente("Lucas Molina",25, "Rua Bueno"));
		lista.add(new Cliente("Lucas Molina",25, "Rua Bueno"));
	%>
	<table border="1">
		<tr>
			<th>Nome</th>
			<th>Idade</th>
			<th>Endereço</th>
		</tr>
		<% for (Cliente c : lista) { %>
			<tr>
				<td><%=c.getNome()%></td>
				<td><%=c.getIdade()%></td>
				<td><%=c.getEndereco()%></td>
			</tr>
		<% } %>
	</table>

</body>
</html>







