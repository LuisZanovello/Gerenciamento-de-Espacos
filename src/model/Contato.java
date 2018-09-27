package model;

public class Contato {
    private Long id;
    private String numero;
    private Cliente cliente;

    public Contato(long id, String numero) {
    }

    public Cliente getCliente() {
        return cliente;
    }

    public Contato setCliente(Cliente cliente) {
        this.cliente = cliente;
        return this;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }


}
