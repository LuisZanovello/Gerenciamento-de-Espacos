package dao;

import model.TipoDeEspaco;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TipoDeEspacoDAO {

    public static void gravar(TipoDeEspaco tp) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into tp1(id, nome, descricao)"
                    + " values(?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1,tp.getId());
            comando.setString(2,tp.getNome());
            comando.setString(3,tp.getDescricao());
        }catch(SQLException e){
            throw e;
        }
    }
    public static void alterar(TipoDeEspaco tp) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update tp1 set nome = ?, descricao = ?";

            comando = conexao.prepareStatement(sql);

            comando.setString(1,tp.getNome());
            comando.setString(2,tp.getDescricao());
        } catch (SQLException e) {
            throw e;
        }
    }

    public Boolean excluir(TipoDeEspaco tp) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from tp1 where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tp.getId());


            comando.execute();
            BD.fecharConexao(conexao, comando);
            return true;
        } catch (SQLException e) {
            throw e;
        }
    }
}
