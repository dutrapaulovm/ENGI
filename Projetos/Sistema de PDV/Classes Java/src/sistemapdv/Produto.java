package sistemapdv;

public class Produto {
    
    private int codigo;
    private String descricao;
    private String precoVenda;
    private String precoCusto;
    private double estoqueMinimo;
    private double estoqueAtual;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getPrecoVenda() {
        return precoVenda;
    }

    public void setPrecoVenda(String precoVenda) {
        this.precoVenda = precoVenda;
    }

    public String getPrecoCusto() {
        return precoCusto;
    }

    public void setPrecoCusto(String precoCusto) {
        this.precoCusto = precoCusto;
    }

    public double getEstoqueMinimo() {
        return estoqueMinimo;
    }

    public void setEstoqueMinimo(double estoqueMinimo) {
        this.estoqueMinimo = estoqueMinimo;
    }

    public double getEstoqueAtual() {
        return estoqueAtual;
    }

    public void setEstoqueAtual(double estoqueAtual) {
        this.estoqueAtual = estoqueAtual;
    }
        
}
