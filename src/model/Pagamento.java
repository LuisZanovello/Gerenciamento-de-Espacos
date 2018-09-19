package model;

public class Pagamento {    //antiga classe Boleto

    private Long id;
    private String diasExpiracao;
    private Long numeroCodBarras;
    private Double valorTotal;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDiasExpiracao() {
        return diasExpiracao;
    }

    public void setDiasExpiracao(String diasExpiracao) {
        this.diasExpiracao = diasExpiracao;
    }

    public Long getNumeroCodBarras() {
        return numeroCodBarras;
    }

    public void setNumeroCodBarras(Long numeroCodBarras) {
        this.numeroCodBarras = numeroCodBarras;
    }

    public Double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(Double valorTotal) {
        this.valorTotal = valorTotal;
    }
}
