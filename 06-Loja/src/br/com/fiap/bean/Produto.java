package br.com.fiap.bean;

public class Produto {

	private long codigo;
	
	private String descricao;
	
	private double valor;
	
	private String titulo;
	
	private String fabricante;
	
	public Produto() {
		super();
	}

	public Produto(long codigo, String descricao, double valor, String titulo, String fabricante) {
		super();
		this.codigo = codigo;
		this.descricao = descricao;
		this.valor = valor;
		this.titulo = titulo;
		this.fabricante = fabricante;
	}

	public long getCodigo() {
		return codigo;
	}

	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getFabricante() {
		return fabricante;
	}

	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}
	
}
