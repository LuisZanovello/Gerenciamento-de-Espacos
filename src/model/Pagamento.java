package model;

public class Pagamento {

    private Long id;
    private String diasExpiracao;
    private Long numeroCodBarras;
    private Float valorTotal;

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

    public Float getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(Float valorTotal) {
        this.valorTotal = valorTotal;
    }
}
