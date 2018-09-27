package dao;

import model.ReportarIrregularidades;

import java.sql.*;
import java.util.List;

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

    public static void excluir(ReportarIrregularidades irregularidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from irregularidade where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, irregularidade.getId());
            comando.execute();
        } catch (SQLException e) {
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);
        }
    }
    public ReportarIrregularidades obterIrregularidade (Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        ReportarIrregularidades irregularidade = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from irregularidade where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, irregularidade.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            irregularidade = new ReportarIrregularidades(rs.getLong("id"),

                    rs.getString("informacao"),
                    espaco null;
            irregularidade.setId(rs.getLong("nome"));

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);

        }
        return ReportarIrregularidades;
    }

    public List<ReportarIrregularidades> obterTodasIrregularidades() throws ClassNotFoundException{

        Connection conexao = null;
        Statement comando = null;

        /* List<ReportarIrregularidades> irregularidade = new ArrayList<ReportarIrregularidades>();  essa linha esta dando erro pq ? */
        ReportarIrregularidades irregularidade = null;

        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from irregularidade";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                irregularidade = new ReportarIrregularidades()rs.getLong("id"),
                        rs.getString("informacao"),
                        espaco null;
                irregularidade.setId(rs.getLong("nome"));
                irregularidade.add(irregularidade);
            }
        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return (List<ReportarIrregularidades>) irregularidade;
    }
}
