package dao;

import model.Denuncia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DenunciaDAO {

    public static void gravar(Denuncia denuncia) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into denuncia(id, descricao,autor,espaco)"
                    + " values(?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, denuncia.getId());
            comando.setString   (2, denuncia.getDescricao());
            comando.setString   (3, denuncia.getAutor());

          /*  if(denuncia.getEspaco() == null){
                comando.setNull(4, Types.NULL);
            }else{
                comando.setString(4,espaco.getId());
            }*/

            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Denuncia denuncia) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update denuncia set descricao=?, autor=?, espaco=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString   (1, denuncia.getDescricao());
            comando.setString   (2, denuncia.getAutor());

         /*   if(denuncia.getEspaco() == null){
                comando.setNull(3,Types.NULL);
            }else{
                comando.setString(3,espaco.getId());
            }*/
            comando.setLong(4,denuncia.getId());
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public Boolean excluir(Denuncia denuncia) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from denuncia where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, denuncia.getId());


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
