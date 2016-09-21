<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP - Introdução</title>
</head>
<body>

	<h1>FIAP - Desenvolvimento Java Web</h1>
	
	<%-- Inclui o menu na página index (Diretiva) --%>
	<%@ include file="menu.jsp" %>
	
	<%-- Comentário JSP --%>
	<!-- Comentário HTML -->
	<ul>
		<% for (int i=0; i<10; i++) { %>
			<li><%=i %></li>
		<% } // Fechamento do for %> 
	</ul>

</body>
</html>




