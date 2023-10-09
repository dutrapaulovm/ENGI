package sistemapdv;

import java.util.List;

public class Fornecedor extends Pessoa{
    
    private String cnpj;
    private List<Fornecedor> contasPagar;
    private List<Entrada> entradas;
    
    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
    
    public void Inserir(Fornecedor c)
    {

    }

    public void Alterar(Fornecedor c)
    {

    }

    public void Excluir(int id)
    {

    }

    public Fornecedor Consulta(int id)
    {
        return null;
    }    
            
}
