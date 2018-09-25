package model;

public class Cliente {
    private Long id;
    private String nome;
    private String sobrenome;
    private String cpf;
    private String dataNascimento;
    private String email;


    public Long getId() {
        return id;
    }

    public Cliente setId(Long id) {
        this.id = id;
        return this;
    }

    public String getNome() {
        return nome;
    }

    public Cliente setNome(String nome) {
        this.nome = nome;
        return this;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public Cliente setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
        return this;
    }

    public String getCpf() {
        return cpf;
    }

    public Cliente setCpf(String cpf) {
        this.cpf = cpf;
        return this;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public Cliente setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public Cliente setEmail(String email) {
        this.email = email;
        return this;
    }
    public Cliente(Long id, String nome, String sobrenome, String cpf, String dataNascimento, String email) {
        this.id = id;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.cpf = cpf;
        this.dataNascimento = dataNascimento;
        this.email = email;
    }
}

/*teste*/