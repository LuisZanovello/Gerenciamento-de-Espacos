package model;

public class Espaco {
    private Long id;
    private String nome;
    private String descricao;
    private Integer area;
    private Integer QuantidadePessoas;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    public Integer getQuantidadePessoas() {
        return QuantidadePessoas;
    }

    public void setQuantidadePessoas(Integer quantidadePessoas) {
        QuantidadePessoas = quantidadePessoas;
    }
}
