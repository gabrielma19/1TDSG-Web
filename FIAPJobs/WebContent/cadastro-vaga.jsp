<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Vaga</title>
<%@ include file="imports.jsp" %>
</head>
<body>
<%@ include file="menu.jsp" %>
<div class="container">
	<div class="page-header">
		<h1 class="text-center">Cadastro de Vaga</h1>
	</div>
	<form>
		<div class="row">
			<div class="col-md-6 form-group">
				<label for="titulo">Título</label>
				<input type="text" name="titulo" 
					id="titulo" class="form-control">
			</div>
			<div class="col-md-6 form-group">
				<label for="cargo">Cargo</label>
				<input type="text" name="cargo" 
					id="cargo" class="form-control">
			</div>				
		</div>
		<div class="row">
			<div class="col-md-6 form-group">
				<label for="salario">Salário</label>
				<input type="text" name="salario" 
					id="salario" class="form-control">
			</div>
			<div class="col-md-6 form-group">
				<label for="data">Data Anúncio</label>
				<input type="text" name="data" 
					id="data" class="form-control">
			</div>				
		</div>
		<div class="row">
			<div class="col-md-6 form-group">
				<label for="qtd">Quantidade</label>
				<input type="text" name="quantidade" 
					id="qtd" class="form-control">
			</div>
			<div class="col-md-6 form-group">
				<label for="empresa">Empresa</label>
				<select name="empresa" id="empresa" class="form-control">
					<option value="">Selecione</option>
					<c:forEach var="e" items="${listaEmpresa }">
						<option value="${e.id }">${e.nome } </option>
					</c:forEach>
				</select>
			</div>				
		</div>
		<div class="row">
			<div class="col-md-12 form-group">
				<label for="desc">Descrição</label>
				<textarea class="form-control" id="desc" 
					name="descricao" rows="5" cols="50"></textarea>
			</div>
		</div>
		<div class="form-group"> 
			<input type="submit" 
				value="Salvar" class="btn btn-primary">
		</div>
	</form>
</div>
</body>
</html>











