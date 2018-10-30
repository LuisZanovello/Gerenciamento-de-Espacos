package dao;

import model.Modalidade;

import java.sql.*;
import java.util.ArrayList;

public class ModalidadeDAO {
    public static void gravar(Modalidade modalidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into modalidade_predominante (id, modalidade_predominante, descricao)"
                    + "values(?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, modalidade.getId());
            comando.setString(2, modalidade.getModalidade());
            comando.setString(3, modalidade.getDescricao());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }

    }

    public static void alterar(Modalidade modalidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update modalidade_predominante set  modalidade_predominante = ?, descricao = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, modalidade.getModalidade());
            comando.setString(2, modalidade.getDescricao());

            comando.setLong(3, modalidade.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(Modalidade modalidade) throws SQLException, ClassNotFoundException {
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

    public static Modalidade obterModalidade(long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Modalidade modalidade = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from modalidade_predominante where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, id);
            ResultSet rs = comando.executeQuery();
            rs.first();

            modalidade = new Modalidade();
            modalidade.setId(rs.getLong("id"));
            modalidade.setModalidade(rs.getString("modalidade_predominante"));
            modalidade.setDescricao(rs.getString("descricao"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return modalidade;
    }
    public static ArrayList<Modalidade> obterTodasModalidades() throws ClassNotFoundException {

        Connection conexao = null;
        Statement comando = null;
        ArrayList<Modalidade> lista = new ArrayList<>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM modalidade_predominante";
            ResultSet rs = comando.executeQuery(sql);

            while (rs.next()) {
                lista.add(new Modalidade(rs.getLong("id"), rs.getString("modalidade_predominante"),rs.getString("descricao")));

            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
            return lista ;
        }

    }
}
