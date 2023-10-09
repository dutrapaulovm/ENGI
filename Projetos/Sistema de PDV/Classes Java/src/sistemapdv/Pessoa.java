package sistemapdv;

import java.util.Date;

public class Pessoa {
    
    private int codigo;        
    private String nome;
    private String bairro;
    private String telefone;        
    private String email;
    private Date dataCadastro;
    private Cidade codCidade; 
    
    public Pessoa(){
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
    
    public String getBairro() {
        return bairro;
    }
    
    public void setBairro(String bairro) {
        this.bairro = bairro;
    }
    
    public String getTelefone(){
        return telefone;
    }
    
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public Date getDataCadastro() {
        return dataCadastro;
    }

    public void setDataCadastro(Date dataCadastro) {
        this.dataCadastro = dataCadastro;
    } 

    public boolean ValidaCnpj(String cnpj)
    {
        return false;
    }

	public Cidade getCodCidade() {
		return codCidade;
	}

	public void setCodCidade(Cidade codCidade) {
		this.codCidade = codCidade;
	}       
    
    
}