package model;

public class Reembolso {

    private Long id;
    private String status;

    public Reembolso(Long id, String status) {
        this.id = id;
        this.status = status;
    }

    public Reembolso(){

    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Long getId() {
        return id;
    }

    public void add(Reembolso reembolso) {
    }
}
