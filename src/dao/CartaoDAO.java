package dao;

import model.Cartao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CartaoDAO {

    public static void gravar(Cartao cartao) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into cartao (id, bandeira, validade, numero, cod_seguranca)"
                    + " values(?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, cartao.getId());
            comando.setString   (2, cartao.getBandeira());
            comando.setString   (3, cartao.getValidade());
            comando.setLong     (4, cartao.getNumeroCartao());
            comando.setInt      (5, cartao.getCodigoSeguranca());


            if(cartao.getCliente() == null){
                comando.setNull(2, Types.NULL);
            }
            else{
                comando.setLong(2, cartao.getCliente().getId());
            }

  /* é possível usar setObject
            comando.setObject(6, cartao.getBandeira());

             if (curso.getCoordenador() == null) {
             comando.setNull(6, Types.NULL);
             } else{
             comando.setInt(6, curso.getCoordenador).getMatricula());
             }

            */

            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }


    public static void alterar(Cartao cartao) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update cartoes set numero=?, validade=?,cod_seguranca=?,bandeira=?,Cliente_id=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setLong     (1, cartao.getNumeroCartao());
            comando.setString   (2, cartao.getValidade());
            comando.setInt      (3, cartao.getCodigoSeguranca());
            comando.setString   (4, cartao.getBandeira());
            comando.setLong     (5, cartao.getId());

            if(cartao.getCliente() == null){
                comando.setNull(2, Types.NULL);
            }
            else{
                comando.setLong(2, cartao.getCliente().getId());
            }

            comando.execute();

        } catch (SQLException e) {
            throw e;
        }

    }


    public static void excluir(Cartao cartao) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from cartoes where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cartao.getId());


            comando.execute();

        } catch (SQLException e) {
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);

        }
    }

    public Cartao obterCartao (Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Cartao cartao = null;
        try {
            conexao = BD.getConexao();
            String sql = "select * from cartoes where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, cartao.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            cartao = new Cartao(rs.getLong("id"),
                    rs.getString    ("bandeira"),
                    rs.getString    ("validade"),
                    rs.getLong      ("numero"),
                    rs.getInt       ("cod_seguranca")); /*  null ? */
            cartao.setIdCliente(rs.getLong("cliente"));
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);

        }
        return cartao;
    }

    public static ArrayList<Cartao> obterTodosCartoes() throws ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
       ArrayList<Cartao> lista = new ArrayList<Cartao>();
        Cartao cartao = null;

        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from cartoes";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                cartao = new Cartao(rs.getLong("id"),
                        rs.getString    ("bandeira"),
                        rs.getString    ("validade"),
                        rs.getLong      ("numero"),
                        rs.getInt       ("cod_seguranca")); /*  null ? */
                cartao.setIdCliente(rs.getLong("cliente")); /* De onde vem o Set ? "SetMatriculaProfessorCoordenador"*/
                lista.add(cartao);
            }
        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
            return lista;
        }
    }




}