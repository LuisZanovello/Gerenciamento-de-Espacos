package dao;

import model.Espaco;
import model.TipoDeEspaco;

import java.awt.*;
import java.sql.*;
import java.util.ArrayList;

public class TipoDeEspacoDAO {

    public static void gravar(TipoDeEspaco tp) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Espaco espaco = new Espaco();
        try {
            conexao = BD.getConexao();
            String sql = "insert into tp(id, nome, descricao,espaco)"
                    + " values(?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tp.getId());
            comando.setString(2, tp.getNome());
            comando.setString(3, tp.getDescricao());

            if (espaco.getId() == null) {
                comando.setNull(4, Types.NULL);
            } else {
                comando.setString(4, espaco.getNome());
            }
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(TipoDeEspaco tp) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Espaco espaco = new Espaco();
        try {
            conexao = BD.getConexao();
            String sql = "update tp set nome = ?, descricao = ?, espaco=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString(1, tp.getNome());
            comando.setString(2, tp.getDescricao());

            if (espaco.getId() == null) {
                comando.setNull(3, Types.NULL);
            } else {
                comando.setString(3, espaco.getNome());
            }
            comando.setLong(4, tp.getId());
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(TipoDeEspaco tp) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from tp where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tp.getId());
            comando.execute();
        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }
    }

    public TipoDeEspaco tp(Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Espaco espaco = new Espaco();
        TipoDeEspaco tp = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from tp where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tp.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            tp = new TipoDeEspaco();
                    tp.setDescricao(rs.getString("descricao"));
                    tp.setNome(rs.getString("nome"));
                    tp.setId(rs.getLong("id"));

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return tp;
    }

    public static ArrayList<TipoDeEspaco> obterTodosEspacos() throws ClassNotFoundException {

        Connection conexao = null;
        Statement comando = null;
        ArrayList<TipoDeEspaco> lista = new ArrayList<>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM espaco";
            ResultSet rs = comando.executeQuery(sql);
            while (rs.next()) {
                lista.add(new TipoDeEspaco()
                        .setDescricao(rs.getString("descricao"))
                        .setNome(rs.getString("nome"))
                        .setId(rs.getLong("id")));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return lista;
    }
}
