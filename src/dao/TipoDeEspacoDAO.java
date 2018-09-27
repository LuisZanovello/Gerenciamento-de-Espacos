package dao;

import model.ModalidadePredominante;
import model.TipoDeEspaco;

import java.sql.*;
import java.util.ArrayList;

public class TipoDeEspacoDAO {

    public static void gravar(TipoDeEspaco tipoEspaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        ModalidadePredominante modalidadePredominante = new ModalidadePredominante();
        try {
            conexao = BD.getConexao();
            String sql = "insert into tipo_espaco(id, nome, modalidade_predominante)"
                    + " values(?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tipoEspaco.getId());
            comando.setString(2, tipoEspaco.getNome());

            if (modalidadePredominante.getId() == null) {
                comando.setNull(3, Types.NULL);
            } else {
                comando.setString(3, modalidadePredominante.getModalidadePredominante());
            }
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(TipoDeEspaco tipoEspaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        ModalidadePredominante modalidadePredominante = new ModalidadePredominante();
        try {
            conexao = BD.getConexao();
            String sql = "update tipo_espaco set nome = ?, modalidade__predominante=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString(1, tipoEspaco.getNome());

            if (modalidadePredominante.getId() == null) {
                comando.setNull(2, Types.NULL);
            } else {
                comando.setString(2, modalidadePredominante.getModalidadePredominante());
            }
            comando.setLong(3, tipoEspaco.getId());
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(TipoDeEspaco tipoEspaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from tipo_espaco where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tipoEspaco.getId());
            comando.execute();
        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }
    }

    public TipoDeEspaco obterTipoEspaco(Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        ModalidadePredominante modalidadePredominante = new ModalidadePredominante();
        TipoDeEspaco obterTipoEspaco = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from tipo_espaco where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, obterTipoEspaco.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            obterTipoEspaco = new TipoDeEspaco();
                    obterTipoEspaco.setId(rs.getLong("id"));
                    obterTipoEspaco.setNome(rs.getString("nome"));
                    modalidadePredominante.setModalidadePredominante(rs.getString("modalidade"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return obterTipoEspaco;
    }

    public static ArrayList<TipoDeEspaco> obterTodosEspacos() throws ClassNotFoundException {

        Connection conexao = null;
        Statement comando = null;
        ArrayList<TipoDeEspaco> lista = new ArrayList<>();
        TipoDeEspaco tipoDeEspaco = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM tipo_espaco";
            ResultSet rs = comando.executeQuery(sql);

            while (rs.next()) {
                lista.add(new TipoDeEspaco()
                        .setId(rs.getLong("id"))
                        .setNome(rs.getString("nome"))

                );

            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return lista;
    }
}
