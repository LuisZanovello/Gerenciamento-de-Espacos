package model;

public class TipoDeEspaco {
    private Long id;
    private String nome;
    private String descricao;

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

    public String getDescricao() {
        return descricao;
    }

    public TipoDeEspaco setDescricao(String descricao) {
        this.descricao = descricao;
        return this;
    }

    public TipoDeEspaco(Long id, String nome, String descricao) {
        this.id = id;
        this.nome = nome;
        this.descricao = descricao;
    }
}
