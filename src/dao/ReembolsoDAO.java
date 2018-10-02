package dao;

import model.Cartao;
import model.Reembolso;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReembolsoDAO {
    public static void gravar(Reembolso reembol) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into reembolso(id, estado, pagamento_id)"
                    + " values(?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, reembol.getId());
            comando.setString   (2, reembol.getEstado());

            if(reembol.getIdPagamento()== null){
                comando.setNull(3, Types.NULL);
            }
            else{
                comando.setLong(3, reembol.getIdPagamento());
            }


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
            comando.setString   (1, reembol.getEstado());

            if(reembol.getPagamento() == null){
                comando.setNull(2, Types.NULL);
            }
            else{
                comando.setLong(2, reembol.getPagamento().getId());
            }
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
            comando.setLong     (1, id);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            reembol = new Reembolso (rs.getLong("id"),
                        rs.getString("estado"));


        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);
        }
        return reembol;
    }

    public static ArrayList<Reembolso> obterTodosReembolsos() throws ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;

        ArrayList<Reembolso> lista = new ArrayList<Reembolso>();
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
                lista.add(reembol);
            }
        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

            return lista;
        }
    }




}