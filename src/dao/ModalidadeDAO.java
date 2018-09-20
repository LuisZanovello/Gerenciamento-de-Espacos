package dao;

import model.Cliente;
import model.Contato;
import model.Modalidade;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ModalidadeDAO {
    public static void gravar(Modalidade modalidade) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into modalidade (id, nome, descricao)"
                    + "values(?,?)";
            comando = ((Connection) conexao).prepareStatement(sql);
            comando.setLong(1, modalidade.getId());
            comando.setString(2, modalidade.getNome());
            comando.setString(3, modalidade.getDescricao());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }

    }

    public static void alterar(Modalidade modalidade) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "update modalidade set  nome = ?, descricao = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, modalidade.getNome());
            comando.setString(2, modalidade.getDescricao());

            comando.setLong( 3, modalidade.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }
    }
}
