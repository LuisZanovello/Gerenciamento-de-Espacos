package model;

import dao.AdministradorDAO;
import lombok.Data;

import java.sql.SQLException;
import java.util.List;

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



    public void gravar() throws SQLException, ClassNotFoundException{
        AdministradorDAO.gravar(this);
    }


    public void alterar() throws SQLException, ClassNotFoundException{
        AdministradorDAO.alterar(this);
    }


    public void excluir() throws SQLException, ClassNotFoundException{
        AdministradorDAO.excluir(this);
    }


public static Administrador obterAdministrador(Long id) throws SQLException, ClassNotFoundException{

       return AdministradorDAO.obterAdministrador((long)id);
}

public static List<Administrador> obterTodosAdministradores() throws SQLException, ClassNotFoundException{
       return AdministradorDAO.obterTodosAdministradores();
}

}
