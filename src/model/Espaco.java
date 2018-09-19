package model;

public class Espaco {
    private Long id;
    private String nome;
    private String descricao;
    private Double area;
    private Integer quantidadePessoas;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }
    public String getDescricao() { return descricao; }
    public void setDescricao(String descricao) { this.descricao = descricao; }
    public Double getArea() { return area; }
    public void setArea(Double area) {
        this.area = area;
    }
    public Integer getQuantidadePessoas() { return quantidadePessoas; }
    public void setQuantidadePessoas(Integer quantidadePessoas) { this.quantidadePessoas = quantidadePessoas; }
}
