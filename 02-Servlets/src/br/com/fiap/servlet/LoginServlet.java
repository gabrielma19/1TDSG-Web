package br.com.fiap.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/logar")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, 
			HttpServletResponse resp) throws 
					ServletException, IOException {
		//Recuperar as informações da tela
		String nome = req.getParameter("login");
		String senha = req.getParameter("senha");

		//Recupera o objeto para escrever no browser
		PrintWriter out = resp.getWriter();
		//Configura o tipo de resposta
		resp.setContentType("text/html");
		
		//Processar as informações
		//Devolver uma resposta para o usuário
		if (nome.equals("FIAP") && senha.equals("2016")){
			out.print("<html><head></head><body><h1>Logou!</h1></body></html>");
		}else{
			out.print("<html><head></head><body><h1>Errou!</h1></body></html>");
		}
		
	}
	
}
