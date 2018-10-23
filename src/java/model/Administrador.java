package model;

import dao.AdministradorDAO;


import java.sql.SQLException;
import java.util.List;
/*sdsd*/
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

    /**
     * @return the id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the senha
     */
    public String getSenha() {
        return senha;
    }

    /**
     * @param senha the senha to set
     */
    public void setSenha(String senha) {
        this.senha = senha;
    }

}
