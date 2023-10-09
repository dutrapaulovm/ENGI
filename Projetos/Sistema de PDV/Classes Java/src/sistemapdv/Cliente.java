package sistemapdv;

import java.util.Date;

import java.util.List;


public class Cliente extends Pessoa {

    private String cpfCnpj;
    private String rg;
    private String ie;
    private String tipoPessoa;
    private Date dataNascimento;
    private List<ContaReceber> contasReceber;
    private List<Venda> vendas;

    public String getCpfCnpj() {
        return cpfCnpj;
    }

    public void setCpfCnpj(String cpfCnpj) {
        this.cpfCnpj = cpfCnpj;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getIe() {
        return ie;
    }

    public void setIe(String ie) {
        this.ie = ie;
    }

    public String getTipoPessoa() {
        return tipoPessoa;
    }

    public void setTipoPessoa(String tipoPessoa) {
        this.tipoPessoa = tipoPessoa;
    }
    
	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public List<ContaReceber> getContasReceber() {
		return contasReceber;
	}

	public void setContasReceber(List<ContaReceber> contasReceber) {
		this.contasReceber = contasReceber;
	}

	public List<Venda> getVendas() {
		
		return vendas;
	}

	public void setVendas(List<Venda> vendas) {
		this.vendas = vendas;
	}    

    public void Inserir(Cliente c)
    {

    }

    public void Alterar(Cliente c)
    {

    }

    public void Excluir(int id)
    {

    }

    public Cliente Consulta(int id)
    {
        return null;
    }

    public boolean ValidaCpf(String cpf)
    {
        return false;
    }


        
	
	
	
}
