package dao;

import model.ReportarIrregularidades;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReportarIrregularidadesDAO {

    public static void gravar(ReportarIrregularidades irregularidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into irregularidade(id,informacao) values(?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, irregularidade.getId());
            comando.setString   (2, irregularidade.getInformacao());


            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(ReportarIrregularidades irregularidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update irregularidade set informacao=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString   (1, irregularidade.getInformacao());

            comando.setLong(2,irregularidade.getId());
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public Boolean excluir(ReportarIrregularidades irregularidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from irregularidade where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, irregularidade.getId());


            comando.execute();
            BD.fecharConexao(conexao, comando);
            return true;
        } catch (SQLException e) {
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);
        }
    }
}
