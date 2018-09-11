package model;

public class Boleto {

    private Long id;
    private String DiasExpiracao;
    private Long NumeroCodBarras;

    public Long getNumeroCodBarras() {
        return NumeroCodBarras;
    }

    public void setNumeroCodBarras(Long numeroCodBarras) {
        NumeroCodBarras = numeroCodBarras;
    }

    public String getDiasExpiracao() {
        return DiasExpiracao;
    }

    public void setDiasExpiracao(String diasExpiracao) {
        DiasExpiracao = diasExpiracao;
    }

    public Long getId() {
        return id;
    }
}
