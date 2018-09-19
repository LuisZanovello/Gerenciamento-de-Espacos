package dao;

import model.Endereco;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EnderecoDAO {

    public static void gravar(Endereco endereco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into endereco(id, cep, logradouro, bairro, cidade, uf)"
                    + " values(?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, endereco.getId());
            comando.setInt     (2, endereco.getCep());
            comando.setString   (3, endereco.getLogradouro());
            comando.setString   (4, endereco.getBairro());
            comando.setString   (5, endereco.getCidade());
            comando.setString   (6, endereco.getUf());


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
            String sql = "update endereco set cep=?, logradouro=?, bairro=?, cidade=?, uf=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setLong     (1, endereco.getCep());
            comando.setString   (2, endereco.getLogradouro());
            comando.setString   (3, endereco.getBairro());
            comando.setString   (4, endereco.getCidade());
            comando.setString   (5, endereco.getUf());
        } catch (SQLException e) {
            throw e;
        }
    }

    public Boolean excluir(Endereco endereco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from endereco where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, endereco.getId());


            comando.execute();
            BD.fecharConexao(conexao, comando);
            return true;
        } catch (SQLException e) {
            throw e;
        }
    }
}
