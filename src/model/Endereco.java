package model;

public class Endereco {
    private Long id;
    private String logradouro;
    private String cidade;
    private String bairro;
    private String cep;
    private String uf;

    public Long getId() {
        return id;
    }

    public Endereco setId(Long id) {
        this.id = id;
        return this;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public Endereco setLogradouro(String logradouro) {
        this.logradouro = logradouro;
        return this;
    }

    public String getCidade() {
        return cidade;
    }

    public Endereco setCidade(String cidade) {
        this.cidade = cidade;
        return this;
    }

    public String getBairro() {
        return bairro;
    }

    public Endereco setBairro(String bairro) {
        this.bairro = bairro;
        return this;
    }

    public int getCep() {
        return cep;
    }

    public Endereco setCep(String cep) {
        this.cep = cep;
        return this;
    }

    public String getUf() {
        return uf;
    }

    public Endereco setUf(String uf) {
        this.uf = uf;
        return this;
    }

    public Endereco(){

    }

    public Endereco(String logradouro, String cidade, String bairro, String cep, String uf) {
        this.logradouro = logradouro;
        this.cidade = cidade;
        this.bairro = bairro;
        this.cep = cep;
        this.uf = uf;
    }
}
