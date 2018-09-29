package model;

public class Reembolso {

    private Long id;
    private String estado;
    private Long idPagamento;
    private Pagamento pagamento;

/*Construtor da controller Reembolso*/
    public Reembolso(long id, String estado, long idPagamento) {
        this.id = id;
        this.estado = estado;
        this.idPagamento = idPagamento;
    }

    /*Construtor ReembolsoDAO */
        public Reembolso(long id, String estado) {
                this.id = id;
                this.estado = estado;
    }

    public Long getId() {
        return id;
    }

    public Reembolso setId(Long id) {
        this.id = id;
        return this;
    }

    public String getEstado() {
        return estado;
    }

    public Reembolso setEstado(String estado) {
        this.estado = estado;
        return this;
    }

    public Long getIdPagamento() {
        return idPagamento;
    }

    public Reembolso setIdPagamento(Long idPagamento) {
        this.idPagamento = idPagamento;
        return this;
    }

    public Pagamento getPagamento() {
        return pagamento;
    }

    public Reembolso setPagamento(Pagamento pagamento) {
        this.pagamento = pagamento;
        return this;
    }
}
