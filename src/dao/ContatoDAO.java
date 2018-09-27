package dao;

import model.Contato;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ContatoDAO {
    public static void gravar(Contato contato) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into contato (id, numero)"
                    + "values(?,?)";
            comando = ((Connection) conexao).prepareStatement(sql);
            comando.setLong(1, contato.getId());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }

    }

    public static void alterar(Contato contato) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "update contato set  numero = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, contato.getNumero());
            comando.setLong(2, contato.getId());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }
    }
}
