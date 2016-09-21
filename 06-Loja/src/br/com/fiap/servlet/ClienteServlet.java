package br.com.fiap.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.bean.Cliente;
import br.com.fiap.bo.ClienteBO;

@WebServlet("/clienteServlet")
public class ClienteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Recuperar todos os clientes
		ClienteBO bo = new ClienteBO();
		List<Cliente> lista = bo.listar();
		//Manda a lista para o JSP
		req.setAttribute("chave", lista);
		//Redirecionar para o JSP
		req.getRequestDispatcher("lista-cliente.jsp")
											.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Recuperar os dados do formulário HTML
		String nome = req.getParameter("nome");
		String end = req.getParameter("endereco");
		String sexo = req.getParameter("sexo");
		int idade = Integer.parseInt(req.getParameter("idade"));
		
		//Criar o objeto Cliente
		Cliente cliente = new Cliente(0,nome,end,idade,sexo);
		
		//Chamar o BO
		ClienteBO bo = new ClienteBO();
		bo.cadastrar(cliente);
		
		//Colocar uma mensagem para ser exibida na pagina
		req.setAttribute("chave", "Cliente cadastrado!");
		//Redirecionar o usuário para o JSP
		req.getRequestDispatcher("cadastro-cliente.jsp")
											.forward(req, resp);
	}
	
}
