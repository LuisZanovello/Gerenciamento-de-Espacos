package model;

public class Reembolso {

    private Long id;
    private String estado;


    public Reembolso(Long id, String status) {
        this.id = id;
        this.estado = status;
    }

    public Reembolso(){

    }

    public String getStatus() {
        return estado;
    }

    public void setStatus(String status) {
        this.estado = status;
    }

    public Long getId() {
        return id;
    }

    public void add(Reembolso reembolso) {
    }

    public void setIdPagamento(long pagamento) {
    }
}
