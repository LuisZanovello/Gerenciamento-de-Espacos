package dao;

import model.Cartao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CartaoDAO {

    public static void gravar(Cartao cartao) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into cartao(id, numero, validade, cod_seguranca, tipo)" // tipo = bandeira do cartão
                    + " values(?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, cartao.getId());
            comando.setInt      (2, cartao.getNumeroCartao());
            comando.setString   (3, cartao.getValidade());
            comando.setInt      (4, cartao.getCodigoSeguranca());
            comando.setString   (5, cartao.getBandeira());



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
            String sql = "update cartoes set numero=?, validade=?,cod_seguranca=?,tipo=?,Cliente_id=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setInt(2, cartao.getNumeroCartao());
            comando.setString(4, cartao.getValidade());
            comando.setInt(5, cartao.getCodigoSeguranca());
            comando.setString(6, cartao.getBandeira());

        } catch (SQLException e) {
            throw e;
        }

    }


    public Boolean excluir(Cartao cartao) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from cartao where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cartao.getId());


            comando.execute();
            BD.fecharConexao(conexao, comando);
            return true;
        } catch (SQLException e) {
            throw e;
        }
    }
}