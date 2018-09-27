package model;

public class Contato {
    private Long id;
    private String numero;

    public Long getId() {
        return id;
    }

    public Contato setId(Long id) {
        this.id = id;
        return this;
    }

    public String getNumero() {
        return numero;
    }

    public Contato setNumero(String numero) {
        this.numero = numero;
        return this;
    }
}
