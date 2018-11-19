package model;

import dao.ClienteDAO;


import java.sql.SQLException;
import java.util.List;

public class Cliente {
    private Long id;
    private String nome;
    private String sobrenome;
    private String cpf;
    private String dataNascimento;
    private String email;
    private String senha;

    public Cliente(long id, String nome, String sobrenome, String dataNascimento, String email) {
    }

    public Cliente(Long id, String nome, String sobrenome, String dataNascimento, String email, String cpf) {
        this.id = id;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.cpf = cpf;
        this.dataNascimento = dataNascimento;
        this.email = email;
    }
    public Cliente(Long id, String nome, String sobrenome, String dataNascimento, String email, String cpf,String senha) {
        this.id = id;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.cpf = cpf;
        this.dataNascimento = dataNascimento;
        this.email = email;
        this.senha = senha;
    }
    

    public void gravar() throws SQLException, ClassNotFoundException{
        ClienteDAO.gravar(this);
    }
    public void alterar() throws SQLException, ClassNotFoundException{
        ClienteDAO.alterar(this);
    }
    public void excluir() throws SQLException, ClassNotFoundException{
        ClienteDAO.excluir(this);
    }
    public static Cliente obterCliente(Long id) throws SQLException, ClassNotFoundException{
        return ClienteDAO.obterCliente((long)id);
    }
    public static List<Cliente> obterTodosOsClientes() throws SQLException, ClassNotFoundException{
        return ClienteDAO.obterTodosOsClientes();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    
public static Cliente logar(String email, String senha) throws ClassNotFoundException {
        return ClienteDAO.logar(email, senha);
    }

}

