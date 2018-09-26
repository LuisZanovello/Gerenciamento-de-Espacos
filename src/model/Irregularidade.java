package model;

public class Irregularidade {
    private Long id;
    private String autor;
    private String descricao;

    public Irregularidade(Long id, String autor, String descricao) {
        this.id = id;
        this.autor = autor;
        this.descricao = descricao;
    }

    public Irregularidade() {
    }

    public Long getId() {
        return id;
    }

    public Irregularidade setId(Long id) {
        this.id = id;
        return this;
    }

    public String getAutor() {
        return autor;
    }

    public Irregularidade setAutor(String autor) {
        this.autor = autor;
        return this;
    }

    public String getDescricao() {
        return descricao;
    }

    public Irregularidade setDescricao(String descricao) {
        this.descricao = descricao;
        return this;
    }
}
