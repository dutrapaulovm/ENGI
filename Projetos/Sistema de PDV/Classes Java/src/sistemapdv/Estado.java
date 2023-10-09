package sistemapdv;

import java.util.List;

public class Estado {
	
	private int codigo;
	private String nome;
	private String uf;
	
	private List<Cidade> cidades;

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

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

	public List<Cidade> getCidades() {
		return cidades;
	}

	public void setCidades(List<Cidade> cidades) {
		this.cidades = cidades;
	}
	
    public void Inserir(Estado c)
    {

    }

    public void Alterar(Estado c)
    {

    }

    public void Excluir(int id)
    {

    }

    public Estado Consulta(int id)
    {
        return null;
    }

	
	
	
}
