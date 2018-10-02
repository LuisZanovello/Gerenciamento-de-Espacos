package model;

public class Irregularidade {
    private Long id;
    private String autor;
    private String descricao;
    private Long idEspaco;

    public Irregularidade(Long id, String autor, String descricao, Long idEspaco) {
        this.id = id;
        this.autor = autor;
        this.descricao = descricao;
        this.idEspaco = idEspaco;
    }

    public Long getIdEspaco() {
        return idEspaco;
    }

    public Irregularidade setIdEspaco(Long idEspaco) {
        this.idEspaco = idEspaco;
        return this;
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
