package dao;

import model.ClienteLocador;
import model.ClienteLocatario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClienteLocatarioDAO {
    public static void gravar(ClienteLoatario cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into cliente(id, cpf)"
                    + "values(?,?,?,?,?,?)";
            comando = ((Connection) conexao).prepareStatement(sql);
            comando.setLong(1, cliente.getId());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }

    }

    public static void alterar(ClienteLocatario cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "update cliente set  cpf = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, cliente.getCpf());
            comando.setLong( 2, cliente.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }
    }
}

