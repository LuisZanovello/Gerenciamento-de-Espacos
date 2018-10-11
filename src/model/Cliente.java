package model;

import com.mysql.fabric.xmlrpc.Client;
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

    public Cliente(long id, String nome, String sobrenome, String dataNascimento, String email) {
    }


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
        return ClienteDAO.obterCliente(id);
    }
    public static List<Cliente> obterClientes() throws SQLException, ClassNotFoundException{
        return ClienteDAO.obterTodosOsClientes();
    }
}

/*teste*/