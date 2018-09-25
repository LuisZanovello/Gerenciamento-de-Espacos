package model;

public class Cliente {
    private Long id;
    private String nome;
    private String sobrenome;
    private String cpf;
    private String dataNascimento;
    private String email;

    public Cliente(long id, String nome, String sobrenome, String dataNascimento, String email) {
    }

    public Long getId(){
        return id;
    }

    public Long setId(Long id){
        return this.id = id;
    }
    public String getNome(){
        return nome;
    }

    public String setNome(String nome){
        return this.nome = nome;
    }

    public String getSobrenome(){
        return sobrenome;
    }

    public String setSobrenome(String sobreome){
        return this.sobrenome = sobrenome;
    }

    public String getCpf(){
        return cpf;
    }

    public String setCpf(String cpf){
        return this.cpf = cpf;
    }

    public String getDataNascimento(){
        return dataNascimento;
    }

    public String setDataNascimento(String dataNascimento){
        return this.dataNascimento = dataNascimento;
    }
    
    public String getEmail(){
        return email;
    }

    public String setEmail(String email){
        return this.email = email;
    }
}

/*teste*/