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
			listarClientes(req, bo);
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

	private void listarClientes(HttpServletRequest req, ClienteBO bo) {
		//Recuperar todos os clientes
		List<Cliente> lista = bo.listar();
		//Manda a lista para o JSP
		req.setAttribute("chave", lista);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//Recuperar a ação
		String acao = req.getParameter("acao");
		
		ClienteBO bo = new ClienteBO();
		
		switch (acao) {
		case "alterar":
			//Recuperar os campos do formulário
			Cliente c = carregarClienteFormulario(req);
			try {
				//Chamar o método alterar do BO
				bo.atualizar(c);
				//Mensagem de sucesso
				req.setAttribute("mensagem", "Cliente atualizado");
				//Manda para a página de listar
				listarClientes(req, bo);
				req.getRequestDispatcher("lista-cliente.jsp").forward(req, resp);
			} catch (Exception e1) {
				//Erro de validação no BO! Mensagem de erro
				req.setAttribute("mensagem", e1.getMessage());
				//Para o formulário voltar preenchido
				req.setAttribute("cli", c);
				//Voltar para a tela de alterar
				req.getRequestDispatcher("altera-cliente.jsp").forward(req, resp);
				e1.printStackTrace();
			}
			break;
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
				listarClientes(req, bo);
				//encaminhar para o JSP listar
				req.getRequestDispatcher("lista-cliente.jsp").forward(req, resp);
			}
			break;
		case "cadastrar":
			//Recuperar os dados do formulário HTML
			Cliente cliente = carregarClienteFormulario(req);
			
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

	private Cliente carregarClienteFormulario(HttpServletRequest req) {
		
		String codigoString = req.getParameter("codigo");
		long codigo = 0;
		//Valida se foi enviado o código
		if (codigoString != null){
			codigo = Long.parseLong(codigoString);
		}
		
		String nome = req.getParameter("nome");
		String end = req.getParameter("endereco");
		String sexo = req.getParameter("sexo");
		int idade = Integer.parseInt(req.getParameter("idade"));
		
		//Criar o objeto Cliente
		Cliente cliente = new Cliente(codigo,nome,end,idade,sexo);
		return cliente;
	}
	
}
