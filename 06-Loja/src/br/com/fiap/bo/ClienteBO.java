package br.com.fiap.bo;

import java.util.ArrayList;
import java.util.List;

import br.com.fiap.bean.Cliente;

public class ClienteBO {

	private static List<Cliente> clientes = new ArrayList<Cliente>();
	
	private static int sequence = 0;
	
	public void cadastrar(Cliente cliente){
		sequence++;
		cliente.setCodigo(sequence);
		clientes.add(cliente);
	}
	
	public Cliente buscarPorId(long codigo){
		for (Cliente cliente : clientes) {
			if (cliente.getCodigo() == codigo)
				return cliente;
		}
		return null;
	}
	
	public void remover(long codigo) throws Exception{
		Cliente cliente = buscarPorId(codigo);
		if (cliente != null){
			clientes.remove(cliente);
		}else{
			throw new Exception("Cliente não encontrado!");
		}
	}
	
	public void atualizar(Cliente cliente) throws Exception{
		Cliente cli = buscarPorId(cliente.getCodigo());
		//Validar o nome obrigatório
		if (cliente.getNome() == null || cliente.getNome().length() < 3){
			throw new Exception("Nome inválido");
		}
		clientes.remove(cli);
		clientes.add(cliente);
		
	}
	
	public List<Cliente> listar(){
		return clientes;
	}
	
}
