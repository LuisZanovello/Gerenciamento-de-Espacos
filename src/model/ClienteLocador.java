package model;

public class ClienteLocador extends Cliente{
    private Long id;
    private String cnpj;

    public ClienteLocador(long id, String cnpj) {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
}
