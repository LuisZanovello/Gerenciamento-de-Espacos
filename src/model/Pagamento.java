package model;

public class Pagamento {    //antiga classe Boleto

    private Long id;
    private String vencimento;
    private Long numeroCodBarras;
    private Double valorTotal;
    private Long idReserva;
    private Reserva reserva;

    public Pagamento(long id, String vencimento, Long numeroCodBarras, double valorTotal, long idReserva) {
        this.id = id;
        this.vencimento = vencimento;
        this.numeroCodBarras = numeroCodBarras;
        this.valorTotal = valorTotal;
        this.idReserva = idReserva;
    }

    /*Contrutor PagamentoDAO*/
    public Pagamento(long id, String vencimento, Long num_cod_barras, double valor_total) {
        this.id = id;
        this.vencimento = vencimento;
        this.numeroCodBarras = numeroCodBarras;
        this.valorTotal = valorTotal;
    }

    public Long getIdReserva() {
        return idReserva;
    }

    public Pagamento setIdReserva(Long idReserva) {
        this.idReserva = idReserva;
        return this;
    }

    public Reserva getReserva() {
        return reserva;
    }

    public Pagamento setReserva(Reserva reserva) {
        this.reserva = reserva;
        return this;
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


    public void setIdReserva(long reservas) {
    }
}
