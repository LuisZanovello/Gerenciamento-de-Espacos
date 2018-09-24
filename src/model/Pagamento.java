package model;

public class Pagamento {    //antiga classe Boleto

    private Long id;
    private String vencimento;
    private Long numeroCodBarras;
    private Double valorTotal;

    public Pagamento(Long id, String vencimento, Long numeroCodBarras, Double valorTotal) {
        this.id = id;
        this.vencimento = vencimento;
        this.numeroCodBarras = numeroCodBarras;
        this.valorTotal = valorTotal;
    }

    public Pagamento() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getVencimento() {
        return vencimento;
    }

    public void setVencimento(String diasExpiracao) {
        this.vencimento = diasExpiracao;
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

    public void add(Pagamento pag) {
    }
}
