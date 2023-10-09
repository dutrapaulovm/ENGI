package sistemapdv;

import java.util.Date;

public class Conta {
        
    private int codigo;
    private String numero;
    private int parcela;
    private Date dataEmissao;
    private Date dataVecto;
    private double acrescimo;
    private double descrescimo;
    private String obs;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public int getParcela() {
        return parcela;
    }

    public void setParcela(int parcela) {
        this.parcela = parcela;
    }

    public Date getDataEmissao() {
        return dataEmissao;
    }

    public void setDataEmissao(Date dataEmissao) {
        this.dataEmissao = dataEmissao;
    }

    public Date getDataVecto() {
        return dataVecto;
    }

    public void setDataVecto(Date dataVecto) {
        this.dataVecto = dataVecto;
    }

    public double getAcrescimo() {
        return acrescimo;
    }

    public void setAcrescimo(double acrescimo) {
        this.acrescimo = acrescimo;
    }

    public double getDescrescimo() {
        return descrescimo;
    }

    public void setDescrescimo(double descrescimo) {
        this.descrescimo = descrescimo;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }
        
}
