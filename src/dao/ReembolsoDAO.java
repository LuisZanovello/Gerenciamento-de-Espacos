package dao;

import model.Reembolso;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReembolsoDAO {

    public static void gravar(Reembolso reembolso) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into reembolso(id, status)"
                    + " values(?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, reembolso.getId());
            comando.setString   (2, reembolso.getStatus());


            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Reembolso reembolso) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update reembolso set status=? where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setString   (1, reembolso.getStatus());

        } catch (SQLException e) {
            throw e;
        }
    }
}