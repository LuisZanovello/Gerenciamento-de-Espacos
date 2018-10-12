package model;

import com.mysql.fabric.xmlrpc.Client;
import dao.ClienteDAO;
import lombok.Data;

import java.sql.SQLException;
import java.util.List;
@Data
public class Cliente {
    private Long id;
    private String nome;
    private String sobrenome;
    private String cpf;
    private String dataNascimento;
    private String email;

    public Cliente(long id, String nome, String sobrenome, String dataNascimento, String email) {
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
    public static List<Cliente> obterTodosOsClientes() throws SQLException, ClassNotFoundException{
        return ClienteDAO.obterTodosOsClientes();
    }
}

/*teste*/