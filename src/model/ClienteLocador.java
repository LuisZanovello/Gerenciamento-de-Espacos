package model;

public class ClienteLocador extends Cliente {
    private Long id;
    private String cnpj;

    public ClienteLocador(Long id, String nome, String sobrenome, String cpf, String dataNascimento, String email) {
        super(id, nome, sobrenome, cpf, dataNascimento, email);
    }


    @Override
    public Long getId() {
        return id;
    }

    @Override
    public ClienteLocador setId(Long id) {
        this.id = id;
        return this;
    }

    public String getCnpj() {
        return cnpj;
    }

    public ClienteLocador setCnpj(String cnpj) {
        this.cnpj = cnpj;
        return this;
    }
}