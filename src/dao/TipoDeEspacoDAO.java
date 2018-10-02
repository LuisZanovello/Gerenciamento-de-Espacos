package dao;

import model.ModalidadePredominante;
import model.TipoDeEspaco;

import java.sql.*;
import java.util.ArrayList;

public class TipoDeEspacoDAO {

    public static void gravar(TipoDeEspaco tipoEspaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into tipo_espaco(id, nome, modalidade_predominante_id)"
                    + " values(?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tipoEspaco.getId());
            comando.setString(2, tipoEspaco.getNome());

            if (tipoEspaco.getModalidade_predominante_id() == null) {
                comando.setNull(3, Types.NULL);
            } else {
                comando.setLong(3, tipoEspaco.getModalidade_predominante_id());
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
        try {
            conexao = BD.getConexao();
            String sql = "update tipo_espaco set nome = ?, modalidade_predominante_id=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString(1, tipoEspaco.getNome());

            if (tipoEspaco.getModalidade_predominante_id() == null) {
                comando.setNull(2, Types.NULL);
            } else {
                comando.setLong(2, tipoEspaco.getModalidade_predominante_id());
            }
            comando.setLong(3, tipoEspaco.getId());
            comando.execute();
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
        TipoDeEspaco obterTipoEspaco = null;

        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM tipo_espaco INNER JOIN modalidade_predominante ON modalidade_predominante.id = " +
                    "tipo_espaco.modalidade_predominante_id where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, obterTipoEspaco.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            obterTipoEspaco = new TipoDeEspaco();
                    obterTipoEspaco.setId(rs.getLong("id"));
                    obterTipoEspaco.setNome(rs.getString("nome"));
                    obterTipoEspaco.setModalidade_predominante_id(rs.getLong("modalidadePredominanteId"));
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
            String sql = "SELECT * FROM tipo_espaco INNER JOIN irregularidade ON irregularidade.id = " +
                    "tipo_espaco.modalidade_predominante_id";
            ResultSet rs = comando.executeQuery(sql);

            while (rs.next()) {
                lista.add(new TipoDeEspaco()
                        .setId(rs.getLong("id"))
                        .setNome(rs.getString("nome"))
                        .setModalidade_predominante_id(rs.getLong("modalidadePredominanteId"))

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
