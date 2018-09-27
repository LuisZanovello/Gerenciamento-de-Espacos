package dao;

import model.Cartao;
import model.Reembolso;

import java.sql.*;
import java.util.List;

public class ReembolsoDAO {



    public static void gravar(Reembolso reembol) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into reembolso(id, estado)"
                    + " values(?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, reembol.getId());
            comando.setString   (2, reembol.getStatus());


            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Reembolso reembol) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update reembolso set estado=? where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setString   (1, reembol.getStatus());

        } catch (SQLException e) {
            throw e;
        }
    }


    public Boolean excluir(Reembolso reembol) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from reembolso where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, reembol.getId());


            comando.execute();
            BD.fecharConexao(conexao, comando);
            return true;
        } catch (SQLException e) {
            throw e;
        }
    }


    public Reembolso obterReembolso (Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Reembolso reembol = null;


        try {
            conexao = BD.getConexao();
            String sql = "select * from reembolso where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, reembol.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            reembol = new Reembolso (rs.getLong("id"),

                    rs.getString("estado")); /*  null ? */
            reembol.setIdPagamento(rs.getLong("pagamento"));

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);

        }
        return reembol;
    }

    public List<Reembolso> obterTodosReembolsos() throws ClassNotFoundException{

        Connection conexao = null;
        Statement comando = null;

        /* List<Reembolso> resv = new ArrayList<Reembolso>();  essa linha esta dando erro pq ? */
        Reembolso reembol = null;

        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from reembolso";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                reembol = new Reembolso (rs.getLong("id"),
                        rs.getString("estado"));
                reembol.setIdPagamento(rs.getLong("pagamento"));
                reembol.add(reembol);
            }
        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

            return (List<Reembolso>) reembol;
        }
    }




}