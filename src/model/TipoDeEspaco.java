package model;

public class TipoDeEspaco {
    private Long id;
    private String nome;

    public TipoDeEspaco(Long id, String nome) {
        this.id = id;
        this.nome = nome;
    }

    public TipoDeEspaco(){
    }

    public Long getId() {
        return id;
    }

    public TipoDeEspaco setId(Long id) {
        this.id = id;
        return this;
    }

    public String getNome() {
        return nome;
    }

    public TipoDeEspaco setNome(String nome) {
        this.nome = nome;
        return this;
    }
}
