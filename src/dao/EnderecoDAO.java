package dao;

import model.Endereco;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

public class EnderecoDAO {

    public static void gravar(Endereco endereco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into endereco(id, cep, logradouro, bairro, cidade, uf,espaco)"
                    + " values(?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, endereco.getId());
            comando.setInt     (2, endereco.getCep());
            comando.setString   (3, endereco.getLogradouro());
            comando.setString   (4, endereco.getBairro());
            comando.setString   (5, endereco.getCidade());
            comando.setString   (6, endereco.getUf());

            if(endereco.getEspaco() == null){
                comando.setNull(7, Types.NULL);
            }else{
                comando.setString(7,espaco.getId());
            }
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Endereco endereco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update endereco set cep=?, logradouro=?, bairro=?, cidade=?, uf=?, espaco=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setLong     (1, endereco.getCep());
            comando.setString   (2, endereco.getLogradouro());
            comando.setString   (3, endereco.getBairro());
            comando.setString   (4, endereco.getCidade());
            comando.setString   (5, endereco.getUf());

            if(endereco.getEspaco() == null){
                comando.setNull(6,Types.NULL);
            }else{
                comando.setString(6,espaco.getId());
            }
            comando.setLong(6,endereco.getId());
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public Boolean excluir(Endereco endereco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from endereco where id= espaco.getId()";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, endereco.getId());


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
