package dao;

import model.Cliente;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClienteDAO {
    public static void gravar(Cliente cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into cliente (id, nome, sobrenome, cpf, dt_nascimento, email)"
                    + "values(?,?,?,?,?,?)";
            comando = ((Connection) conexao).prepareStatement(sql);
            comando.setLong( 1, cliente.getId());
            comando.setString(2, cliente.getNome());
            comando.setString(3, cliente.getSobrenome());
            comando.setString(4, cliente.getCpf());
            comando.setString(5, cliente.getDataNascimento());
            comando.setString(6, cliente.getEmail());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }

    }

    public static void alterar(Cliente cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "update cliente set  nome = ?, sobrenome = ?, cpf = ?, dt_nascimento = ?, email = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, cliente.getNome());
            comando.setString(2, cliente.getSobrenome());
            comando.setString(3, cliente.getCpf());
            comando.setString(4, cliente.getDataNascimento());
            comando.setString(5, cliente.getEmail());

            comando.setLong( 6, cliente.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }
    }
}

