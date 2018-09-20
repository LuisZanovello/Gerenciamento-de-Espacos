package dao;

import model.TipoDeDenuncia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TipoDeDenunciaDAO {



        public static void gravar(TipoDeDenuncia tpd) throws SQLException, ClassNotFoundException {
            Connection conexao = null;
            PreparedStatement comando = null;
            try {
                conexao = BD.getConexao();
                String sql = "insert into tpd(id,nome, descricao) values(?,?,?)";
                comando = conexao.prepareStatement(sql);
                comando.setLong     (1, tpd.getId());
                comando.setString   (3, tpd.getNome());
                comando.setString   (2, tpd.getDescricao());


                comando.execute();
                BD.fecharConexao(conexao, comando);
            } catch (SQLException e) {
                throw e;
            }
        }

        public static void alterar(TipoDeDenuncia tpd) throws SQLException, ClassNotFoundException {
            Connection conexao = null;
            PreparedStatement comando = null;
            try {
                conexao = BD.getConexao();
                String sql = "update tpd set nome=?, descricao=? where id=?";

                comando = conexao.prepareStatement(sql);

                comando.setString   (1, tpd.getNome());
                comando.setString   (2, tpd.getDescricao());
                comando.setLong(3,tpd.getId());
                BD.fecharConexao(conexao, comando);
            } catch (SQLException e) {
                throw e;
            }
        }

        public Boolean excluir(TipoDeDenuncia tpd) throws SQLException, ClassNotFoundException {
            Connection conexao = null;
            PreparedStatement comando = null;
            try {
                conexao = BD.getConexao();
                String sql = "delete from tpd where id=tpd.getId()";
                comando = conexao.prepareStatement(sql);
                comando.setLong(1, tpd.getId());


                comando.execute();
                BD.fecharConexao(conexao, comando);
                return true;
            } catch (SQLException e) {
                throw e;
            }finally {
                BD.fecharConexao(conexao, comando);
            }
        }
}
