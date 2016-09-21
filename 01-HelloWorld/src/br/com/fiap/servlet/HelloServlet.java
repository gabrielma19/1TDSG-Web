package br.com.fiap.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Thiago Yamamoto
 * Classe responsável por receber as requisições HTTP
 * e devolver uma resposta
 */
public class HelloServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Recupera o valor do campo do formulário
		String x = req.getParameter("nome");
		System.out.println(x);
	}
	
}





