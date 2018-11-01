package dao;

import model.TipoEspaco;

import java.sql.*;
import java.util.ArrayList;

public class TipoEspacoDAO {

    public static void gravar(TipoEspaco tipoEspaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into tipo_espaco(id, nome, modalidade_predominante_id)"
                    + " values(?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tipoEspaco.getId());
            comando.setString(2, tipoEspaco.getNome());

            if (tipoEspaco.getModalidadeId() == null) {
                comando.setNull(3, Types.NULL);
            } else {
                comando.setLong(3, tipoEspaco.getModalidadeId());
            }
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(TipoEspaco tipoEspaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update tipo_espaco set nome = ?, modalidade_predominante_id=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString(1, tipoEspaco.getNome());

            if (tipoEspaco.getModalidadeId() == null) {
                comando.setNull(2, Types.NULL);
            } else {
                comando.setLong(2, tipoEspaco.getModalidadeId());
            }
            comando.setLong(3, tipoEspaco.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(TipoEspaco tipoEspaco) throws SQLException, ClassNotFoundException {
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

    public static TipoEspaco obterTipoEspaco(Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        TipoEspaco tipoEspaco = null;

        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM tipo_espaco where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, id);
            ResultSet rs = comando.executeQuery();
            rs.first();

            tipoEspaco = new TipoEspaco();
            tipoEspaco.setId(rs.getLong("id"));
            tipoEspaco.setNome(rs.getString("nome"));
            tipoEspaco.setModalidadeId(rs.getLong("modalidade_Predominante_Id"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return tipoEspaco;
    }

    public static ArrayList<TipoEspaco> obterTodosTiposEspacos() throws ClassNotFoundException {

        Connection conexao = null;
        Statement comando = null;
        ArrayList<TipoEspaco> lista = new ArrayList<>();
        
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM tipo_espaco";
            ResultSet rs = comando.executeQuery(sql);
            while (rs.next()) {
                lista.add(new TipoEspaco(rs.getLong("id"), rs.getString("nome"), rs.getLong("modalidade_Predominante_Id")));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
            return lista;
        }

    }
}
