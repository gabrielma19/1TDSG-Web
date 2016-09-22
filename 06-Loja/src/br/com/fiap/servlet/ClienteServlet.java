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
		
		String acao = req.getParameter("acao");

		ClienteBO bo = new ClienteBO();
		
		switch (acao) {
		case "listar":
			//Recuperar todos os clientes
			List<Cliente> lista = bo.listar();
			//Manda a lista para o JSP
			req.setAttribute("chave", lista);
			//Redirecionar para o JSP
			req.getRequestDispatcher("lista-cliente.jsp").forward(req, resp);
			break;
		case "abrirForm":
			//Recuperar o id que o JSP enviou
			long id = Long.parseLong(req.getParameter("codigoCliente"));
			//Buscar o cliente usando o BO
			Cliente cliente = bo.buscarPorId(id);
			//Passar o cliente para o JSP
			req.setAttribute("cli", cliente);
			//Encaminhar para a tela de alteração
			req.getRequestDispatcher("altera-cliente.jsp").forward(req, resp);
			break;
		default:
			break;
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//Recuperar a ação
		String acao = req.getParameter("acao");
		
		ClienteBO bo = new ClienteBO();
		
		switch (acao) {
		case "excluir":
			//Recuperar o id do cliente que será excluido
			long codigo =
				Long.parseLong(req.getParameter("codigoCliente"));
			try{
				//chamar o método excluir do bo
				bo.remover(codigo);
				//mensagem de sucesso
				req.setAttribute("mensagem", "Cliente excluido!");
			}catch(Exception e){
				e.printStackTrace();
				//mensagem de erro
				req.setAttribute("mensagem", e.getMessage());
			}finally {
				//Recuperar os clientes cadastros (listar)
				List<Cliente> lista = bo.listar();
				//Mandar a lista para o JSP
				req.setAttribute("chave", lista);
				//encaminhar para o JSP listar
				req.getRequestDispatcher("lista-cliente.jsp").forward(req, resp);
			}
			break;
		case "cadastrar":
			//Recuperar os dados do formulário HTML
			String nome = req.getParameter("nome");
			String end = req.getParameter("endereco");
			String sexo = req.getParameter("sexo");
			int idade = Integer.parseInt(req.getParameter("idade"));
			
			//Criar o objeto Cliente
			Cliente cliente = new Cliente(0,nome,end,idade,sexo);
			
			//Chamar o BO			
			bo.cadastrar(cliente);
			
			//Colocar uma mensagem para ser exibida na pagina
			req.setAttribute("chave", "Cliente cadastrado!");
			//Redirecionar o usuário para o JSP
			req.getRequestDispatcher("cadastro-cliente.jsp").forward(req, resp);
			break;
		default:
			break;
		}
		
		
	}
	
}
