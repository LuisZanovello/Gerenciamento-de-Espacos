package dao;

import model.Reembolso;

import java.sql.*;
import java.util.ArrayList;

public class ReembolsoDAO {

    public static void gravar(Reembolso reembolso) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into reembolso(id, estado, pagamento_id)"
                    + " values(?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, reembolso.getId());
            comando.setString(2, reembolso.getEstado());

            if (reembolso.getIdPagamento() == null) {
                comando.setNull(3, Types.NULL);
            } else {
                comando.setLong(3, reembolso.getIdPagamento());
            }

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
            String sql = "update reembolso set estado=? where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, reembolso.getEstado());

            if (reembolso.getPagamento() == null) {
                comando.setNull(2, Types.NULL);
            } else {
                comando.setLong(2, reembolso.getPagamento().getId());
            }

            comando.setLong(2, reembolso.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {

            throw e;
        }
    }

    public static void excluir(Reembolso reembolso) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from reembolso where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, reembolso.getId());

            comando.execute();

        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);

        }
    }

    public static Reembolso obterReembolso(Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Reembolso reembolso = null;
        try {
            conexao = BD.getConexao();
            String sql = "select * from reembolso where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, id);
            ResultSet rs = comando.executeQuery();
            rs.first();

            reembolso = new Reembolso(rs.getLong("id"),
                    rs.getString("estado"),
                    rs.getLong("pagamento_id"));

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return reembolso;
    }

    public static ArrayList<Reembolso> obterTodosReembolsos() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;

        ArrayList<Reembolso> lista = new ArrayList<>();
        Reembolso reembolso = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from reembolso";
            ResultSet rs = comando.executeQuery(sql);

            while (rs.next()) {
                lista.add(new Reembolso(rs.getLong("id"),
                        rs.getString("estado"),
                        rs.getLong("pagamento_id")));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

            return lista;
        }
    }

}
