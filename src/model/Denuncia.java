package model;

public class Denuncia {
    private Long id;
    private String descricao;
    private String autor;

    public Denuncia() {
    }

    public Denuncia(Long id, String descricao, String autor) {
        this.id = id;
        this.descricao = descricao;
        this.autor = autor;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }
}
