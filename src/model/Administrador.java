package model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter

public class Administrador {
    private Long id;
    private String nome;
    private String email;
    private String senha;

    public static void main(String[] args) {
        Administrador admin = new Administrador();
        // baixar o plugin lombok
        //  crtl + shift + alt + L e marcar "Optimize imports" e "Rearrenge Code"
    }
}
