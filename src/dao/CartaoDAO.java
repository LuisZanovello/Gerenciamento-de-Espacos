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
            String sql = "insert into cartao (id, bandeira, validade, numero, codigo_seguranca, cliente_id)"
                    + " values(?,?,?,?,?, ?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, cartao.getId());
            comando.setString   (2, cartao.getBandeira());
            comando.setString   (3, cartao.getValidade());
            comando.setLong     (4, cartao.getNumeroCartao());
            comando.setInt      (5, cartao.getCodigoSeguranca());


            if(cartao.getIdCliente() == null){
                comando.setNull(6, Types.NULL);
            }
            else{
                comando.setLong(6, cartao.getIdCliente());
            }

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
            String sql = "update cartao set bandeira=?, validade=?,numero=?,codigo_seguranca=?,cliente_id=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString   (1, cartao.getBandeira());
            comando.setString   (2, cartao.getValidade());
            comando.setLong     (3, cartao.getNumeroCartao());
            comando.setInt      (4, cartao.getCodigoSeguranca());

            comando.setLong     (5, cartao.getId());


            if(cartao.getCliente() == null){
                comando.setNull(6, Types.NULL);
            }
            else{
                comando.setLong(6, cartao.getCliente().getId());
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
            String sql = "delete from cartao where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cartao.getId());


            comando.execute();

        } catch (SQLException e) {
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);

        }
    }

    public static Cartao obterCartao (Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Cartao cartao = null;
        try {
            conexao = BD.getConexao();
            String sql = "select * from cartao where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, id);
            ResultSet rs = comando.executeQuery();
            rs.first();

            cartao = new Cartao(rs.getLong("id"),
                    rs.getString    ("bandeira"),
                    rs.getString    ("validade"),
                    rs.getLong      ("numero"),
                    rs.getInt       ("cod_seguranca"),
            cartao.setIdCliente(rs.getLong("cliente_id"));

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