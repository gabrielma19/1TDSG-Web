package br.com.fiap.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/logar")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Recuperar as informações da página
		String usuario = req.getParameter("login");
		String senha = req.getParameter("senha");
		
		if (usuario.equals("admin") 
				&& senha.equals("fiap")){
			req.setAttribute("nome", usuario);
			//mandar para uma página inicial home.jsp
			req.getRequestDispatcher("home.jsp")
									.forward(req, resp);
		}else{
			//apresentar uma mensagem 
			req.setAttribute("mensagem", "Errouuu!");
			//mandar para a página de index.jsp (login)
			req.getRequestDispatcher("index.jsp")
									.forward(req, resp);
		}
	}
	
}





