package dao;

import model.Espaco;
import model.Irregularidade;

import java.sql.*;
import java.util.ArrayList;

public class IrregularidadeDAO {
    public static void gravar(Irregularidade irregularidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into irregularidade(id,autor,descricao,espaco_id) values(?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, irregularidade.getId());
            comando.setString(2,irregularidade.getAutor());
            comando.setString   (3, irregularidade.getDescricao());

            if (irregularidade.getIdEspaco() == null) {
                comando.setNull(4, Types.NULL);
            } else {
                comando.setLong(4, irregularidade.getIdEspaco());
            }

            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Irregularidade irregularidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Espaco espaco = new Espaco();
        try {
            conexao = BD.getConexao();
            String sql = "update irregularidade set autor=?,descricao=?,nome=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString   (1, irregularidade.getAutor());
            comando.setString(2,irregularidade.getDescricao());

            if (espaco.getId() == null) {
                comando.setNull(3, Types.NULL);
            } else {
                comando.setString(3, espaco.getNome());
            }

            comando.setLong(4,irregularidade.getId());
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(Irregularidade irregularidade) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from irregularidade where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, irregularidade.getId());
            comando.execute();
        } catch (SQLException e) {
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);
        }
    }
    public Irregularidade obterIrregularidade (Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Espaco espaco = new Espaco();
        Irregularidade irregularidade = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from irregularidade where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, irregularidade.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            irregularidade = new Irregularidade();
                    irregularidade.setId(rs.getLong("id"));
                    irregularidade.setAutor(rs.getString("autor"));
                    irregularidade.setDescricao(rs.getString("descricao"));
            espaco.setNome(rs.getString("nome"));

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);

        }
        return irregularidade;
    }

    public ArrayList<Irregularidade> obterTodasIrregularidades() throws ClassNotFoundException{

        Connection conexao = null;
        Statement comando = null;
        ArrayList<Irregularidade> lista = new ArrayList<>();
        Irregularidade irregularidade = null;

        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from irregularidade";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                lista.add(new Irregularidade()
                        .setId(rs.getLong("id"))
                        .setAutor(rs.getString("autor"))
                        .setDescricao(rs.getString("descricao"))
                );
            }

        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return lista;
    }
}
