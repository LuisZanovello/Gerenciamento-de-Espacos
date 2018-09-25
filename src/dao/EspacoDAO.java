package dao;

import model.Espaco;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EspacoDAO {

    public static void gravar(Espaco espaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into espaco(id, nome, descricao, area, quantidadePessoas, cliente)"
                    + " values(?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, espaco.getId());
            comando.setString(2, espaco.getNome());
            comando.setString(3, espaco.getDescricao());
            comando.setDouble(4, espaco.getArea());
            comando.setInt(5, espaco.getQuantidadePessoas());

            if (espaco.getId() == null) {
                comando.setNull(6, Types.NULL);
            } else {
                comando.setString(6, espaco.getId().getNome());
            }
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Espaco espaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update espaco set nome = ?, descricao = ?, area = ?, quantidadePessoas = ?, cliente=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString(1, espaco.getNome());
            comando.setString(2, espaco.getDescricao());
            comando.setDouble(3, espaco.getArea());
            comando.setInt(4, espaco.getQuantidadePessoas());

            if (espaco.getId() == null) {
                comando.setNull(5, Types.NULL);
            } else {
                comando.setString(5, espaco.getId().getNome());
            }
            comando.setLong(6, espaco.getId());
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(Espaco espaco) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from espaco where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, espaco.getId());
            comando.execute();
        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }
    }
    public Espaco obterEspaco (Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Espaco espaco = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from espaco where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, espaco.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            espaco = new Espaco(rs.getLong("id"),

                    rs.getString("nome"),
                    rs.getString("descricao"),
                    rs.getInt("area"), /*  null ? */
                    rs.getInt("quantidadePessoas"),
                    cliente null;
                    espaco.setId(rs.getLong("nome"));

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);

        }
        return Espaco;
    }

    public List<Espaco> obterTodosEspacos() throws ClassNotFoundException{

        Connection conexao = null;
        Statement comando = null;

        /* List<Espaco> admin = new ArrayList<Espaco>();  essa linha esta dando erro pq ? */
        Espaco espaco = null;

        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from espaco";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                espaco = new Espaco(rs.getLong("id"),
                        rs.getString("nome"),
                        rs.getString("descricao"),
                        rs.getInt("area"),
                        rs.getInt("quantidadePessoas"),
                cliente null;
                espaco.setId(rs.getLong("nome"));
                espaco.add(espaco);
            }
        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return (List<Espaco>) espaco;
    }
}