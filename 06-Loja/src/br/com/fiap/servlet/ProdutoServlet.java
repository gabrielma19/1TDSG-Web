package br.com.fiap.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.bean.Produto;
import br.com.fiap.bo.ProdutoBO;


public class ProdutoServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Listar os produtos
		//Recupera os produtos cadastrados no banco de dados
		ProdutoBO bo = new ProdutoBO();
		List<Produto> lista = bo.listar();
		
		//Passar a lista para o JSP
		req.setAttribute("listaProdutos", lista );
		//Encaminhar para a página JSP
		req.getRequestDispatcher("lista-produto.jsp")
										.forward(req, resp);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Recuperar os valores do formulário HTML
		String titulo = req.getParameter("titulo");
		String desc = req.getParameter("descricao");
		String fab = req.getParameter("fabricante");
		double valor = Double
				.parseDouble(req.getParameter("valor"));
		
		//Instanciar o Produto (Java Bean)
		Produto produto = new Produto(0,desc,valor,titulo,fab);
		
		//Cadastrar no "banco"
		ProdutoBO bo = new ProdutoBO();
		bo.cadastrar(produto);
		
		//Coloca um valor para ser exibido na tela
		req.setAttribute("mensagem", "Cadastrado com sucesso!");
		//Redireciona para a JSP
		req.getRequestDispatcher("cadastro-produto.jsp")
											.forward(req, resp);
		
	}
	
	
	
}






