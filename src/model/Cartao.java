package model;


public class Cartao{
    private Long id;
    private String bandeira;
    private String validade;
    private Long numeroCartao;
    private Integer codigoSeguranca;

    public Cartao(Long id, String bandeira, String validade, Long numeroCartao, Integer codigoSeguranca) {
        this.id = id;
        this.bandeira = bandeira;
        this.validade = validade;
        this.numeroCartao = numeroCartao;
        this.codigoSeguranca = codigoSeguranca;
    }
    public Cartao(){

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getBandeira() {
        return bandeira;
    }

    public void setBandeira(String bandeira) {
        this.bandeira = bandeira;
    }

    public String getValidade() {
        return validade;
    }

    public void setValidade(String validade) {
        this.validade = validade;
    }

    public Long getNumeroCartao() {
        return numeroCartao;
    }

    public void setNumeroCartao(Long numeroCartao) {
        this.numeroCartao = numeroCartao;
    }

    public Integer getCodigoSeguranca() {
        return codigoSeguranca;
    }

    public void setCodigoSeguranca(Integer codigoSeguranca) {
        this.codigoSeguranca = codigoSeguranca;
    }

    public void add(Cartao cartao) {
    }
}