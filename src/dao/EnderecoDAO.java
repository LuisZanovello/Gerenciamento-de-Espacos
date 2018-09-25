package dao;

import model.Endereco;

import java.sql.*;
import java.util.List;

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
                comando.setString(7,endereco.getId());
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

            if(endereco.get() == null){
                comando.setNull(6,Types.NULL);
            }else{
                comando.setString(6,endereco.getId());
            }
            comando.setLong(6,endereco.getId());
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(Endereco endereco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from endereco where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, endereco.getId());
            comando.execute();
        } catch (SQLException e) {
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);
        }
    }
    public Endereco obterEndereco (Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Endereco endereco = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from espaco where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, endereco.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            endereco = new Endereco(rs.getLong("id"),

                    rs.getString("cep"),
                    rs.getString("logradouro"),
                    rs.getString("bairro"), /*  null ? */
                    rs.getString("cidade"),
                    rs.getString("uf"),
                    espaco null;
            endereco.setId(rs.getLong("nome"));

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);

        }
        return Endereco;
    }

    public List<Endereco> obterTodosEnderecos() throws ClassNotFoundException{

        Connection conexao = null;
        Statement comando = null;

        /* List<Endereco> endereco = new ArrayList<Endereco>();  essa linha esta dando erro pq ? */
        Endereco endereco = null;

        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from endereco";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                endereco = new Endereco(rs.getLong("id"),
                        rs.getString("cep"),
                        rs.getString("logradouro"),
                        rs.getString("bairro"),
                        rs.getString("cidade"),
                        rs.getString("uf"),
                        espaco null;
                endereco.setId(rs.getLong("nome"));
                endereco.add(endereco);
            }
        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return (List<Endereco>) endereco;
}
