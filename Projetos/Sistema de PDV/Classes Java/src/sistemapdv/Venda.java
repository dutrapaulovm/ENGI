package sistemapdv;

import java.util.Date;
import java.util.List;

public class Venda {
    
    private int codigo;
    private String numero;
    private String serie;
    private Cliente cliente;
    private Date dataVenda;
    private Date horaVenda;
    private List<ItemVenda> itensVenda;

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

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Date getDataVenda() {
        return dataVenda;
    }

    public void setDataVenda(Date dataVenda) {
        this.dataVenda = dataVenda;
    }

    public Date getHoraVenda() {
        return horaVenda;
    }

    public void setHoraVenda(Date horaVenda) {
        this.horaVenda = horaVenda;
    }

    public List<ItemVenda> getItensVenda() {
        return itensVenda;
    }

	private String getSerie() {
		return serie;
	}

	private void setSerie(String serie) {
		this.serie = serie;
	}
    
}
