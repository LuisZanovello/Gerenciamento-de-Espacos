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

    public Long getId() {
        return id;
    }

    public Cartao setId(Long id) {
        this.id = id;
        return this;
    }

    public String getBandeira() {
        return bandeira;
    }

    public Cartao setBandeira(String bandeira) {
        this.bandeira = bandeira;
        return this;
    }

    public String getValidade() {
        return validade;
    }

    public Cartao setValidade(String validade) {
        this.validade = validade;
        return this;
    }

    public Long getNumeroCartao() {
        return numeroCartao;
    }

    public Cartao setNumeroCartao(Long numeroCartao) {
        this.numeroCartao = numeroCartao;
        return this;
    }

    public Integer getCodigoSeguranca() {
        return codigoSeguranca;
    }

    public void setCodigoSeguranca(Integer codigoSeguranca) {
        this.codigoSeguranca = codigoSeguranca;
    }




    public void setIdCliente(long cliente) {

    }
}