package model;

import lombok.Data;

@Data
public class Administrador {
    private Long id;
    private String nome;
    private String email;
    private String senha;

    public Administrador(Long id, String nome, String email, String senha) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.senha = senha;
    }

    public Administrador() {
    }


    // baixar o plugin lombok
        //  crtl + shift + alt + L e marcar "Optimize imports" e "Rearrenge Code"

}
