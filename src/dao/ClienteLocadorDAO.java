package dao;

import model.Cliente;
import model.ClienteLocador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClienteLocadorDAO {
    public static void gravar(ClienteLocador cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into cliente (id, cnpj)"
                    + "values(?,?)";
            comando = ((Connection) conexao).prepareStatement(sql);
            comando.setLong(1, cliente.getId());
            comando.setString(2, cliente.getCnpj());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }

    }
    public static void alterar(ClienteLocador cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "update cliente set  cnpj = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, cliente.getCnpj());
            comando.setLong( 2, cliente.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }
    }
}
