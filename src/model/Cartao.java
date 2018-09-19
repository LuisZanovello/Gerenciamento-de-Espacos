package model;


public class Cartao{
    private Long id;
    private String bandeira;
    private String validade;
    private int numeroCartao;
    private int codigoSeguranca;



    /*Gets e Sets*/
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
    public int getNumeroCartao() {
        return numeroCartao;
    }
    public void setNumeroCartao(final int numeroCartao) {
        this.numeroCartao = numeroCartao;
    }
    public int getCodigoSeguranca() {
        return codigoSeguranca;
    }
    public void setCodigoSeguranca(final int codigoSeguranca) {
        this.codigoSeguranca = codigoSeguranca;
    }

    public Long getId() {
        return id;
    }
}