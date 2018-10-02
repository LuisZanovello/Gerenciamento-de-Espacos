package dao;

import model.ModalidadePredominante;

import java.sql.*;
import java.util.ArrayList;

public class ModalidadePredominanteDAO {
    public static void gravar(ModalidadePredominante modalidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into modalidade_predominante (id, modalidade_predominante, descricao)"
                    + "values(?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, modalidade.getId());
            comando.setString(2, modalidade.getModalidadePredominante());
            comando.setString(3, modalidade.getDescricao());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }

    }

    public static void alterar(ModalidadePredominante modalidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update modalidade_predominante set  modalidade_predominante = ?, descricao = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, modalidade.getModalidadePredominante());
            comando.setString(2, modalidade.getDescricao());

            comando.setLong(3, modalidade.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(ModalidadePredominante modalidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from modalidade_predominante where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, modalidade.getId());
            comando.execute();
        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }
    }

    public ModalidadePredominante obterModalidade(Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        ModalidadePredominante modalidade = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from modalidade_predominante where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, modalidade.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            modalidade = new ModalidadePredominante();
            modalidade.setId(rs.getLong("id"));
            modalidade.setModalidadePredominante(rs.getString("modalidade"));
            modalidade.setDescricao(rs.getString("descricao"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return modalidade;
    }
    public static ArrayList<ModalidadePredominante> obterTodasModalidade() throws ClassNotFoundException {

        Connection conexao = null;
        Statement comando = null;
        ArrayList<ModalidadePredominante> lista = new ArrayList<>();
        ModalidadePredominante modalidade = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM modalidade_predominante";
            ResultSet rs = comando.executeQuery(sql);

            while (rs.next()) {
                lista.add(new ModalidadePredominante()
                        .setId(rs.getLong("id"))
                        .setModalidadePredominante(rs.getString("modalidade"))
                        .setDescricao(rs.getString("descricao"))

                );
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return obterTodasModalidade() ;
    }
}
