package sistemapdv;

import java.util.List;

public class Cidade {

	private int codigo;
	private String nome;
	private String codIbge;
	private Estado codEstado;
	private List<Cliente> clientes;	 
	
	public int getCodigo() {
		return codigo;
	}
	
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getCodIbge() {
		return codIbge;
	}
	
	public void setCodIbge(String codIbge) {
		this.codIbge = codIbge;
	}

	public Estado getCodEstado() {
		return codEstado;
	}

	public void setCodEstado(Estado codEstado) {
		this.codEstado = codEstado;
	}

	public List<Cliente> getClientes() {
		return clientes;
	}

	public void setClientes(List<Cliente> clientes) {
		this.clientes = clientes;
	}
	
    public void Inserir(Cidade c)
    {

    }

    public void Alterar(Cidade c)
    {

    }

    public void Excluir(int id)
    {

    }

    public Cidade Consulta(int id)
    {
        return null;
    }
	
	
}
