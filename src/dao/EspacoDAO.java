package dao;

import model.Espaco;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

public class EspacoDAO {

    public static void gravar(Espaco espaco) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into espaco(id, nome, descricao, area, quantidadePessoas, cliente)"
                    + " values(?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1,espaco.getId());
            comando.setString(2,espaco.getNome());
            comando.setString(3,espaco.getDescricao());
            comando.setDouble(4,espaco.getArea());
            comando.setInt(5,espaco.getQuantidadePessoas());

            if(espaco.getCliente() == null){
                comando.setNull(6, Types.NULL);
            }else {
                comando.setString(6,espaco.getCliente().getId());
            }
            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }
    }
    public static void alterar(Espaco espaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update espaco set nome = ?, descricao = ?, area = ?, quantidadePessoas = ?, cliente=?";

            comando = conexao.prepareStatement(sql);

            comando.setString(1,espaco.getNome());
            comando.setString(2,espaco.getDescricao());
            comando.setDouble(3,espaco.getArea());
            comando.setInt(4,espaco.getQuantidadePessoas());

            if(espaco.getCliente() == null){
                comando.setNull(5,Types.NULL);
            }else{
                comando.setString(5,espaco.getCliente().getId());
            }
            comando.setLong(6,espaco.getId());
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public Boolean excluir(Espaco espaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from espaco where id= espaco.getId()";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, espaco.getId());


            comando.execute();
            BD.fecharConexao(conexao, comando);
            return true;
        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }
    }

}
