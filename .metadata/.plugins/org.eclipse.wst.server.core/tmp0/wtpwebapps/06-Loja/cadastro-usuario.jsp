<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Usuário</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>

<div class="container">
	<h1>Registre-se! É gratis.</h1>
	${mensagem }
	<form action="usuarioServlet" method="post">
		<div class="form-group">
			<label for="nomeId">Nome</label>
			<input type="text" name="nome" class="form-control" 
				id="nomeId">
		</div>
		<div class="form-group">
			<label for="emailId">E-mail</label>
			<input type="text" name="email" class="form-control"
			 id="emailId">
		</div>
		<div class="form-group">
			<label for="senhaId">Senha</label>
			<input type="password" name="senha" 
			class="form-control" id="senhaId">
		</div>
		<div class="form-group">
			<label for="repitaId">Repita a Senha</label>
			<input type="password" name="repita" 
			class="form-control" id="repitaId">
		</div>
		<div class="form-group">
			<input type="submit" value="Cadastrar" 
			class="btn btn-primary">
		</div>
	</form>
</div>

</body>
</html>