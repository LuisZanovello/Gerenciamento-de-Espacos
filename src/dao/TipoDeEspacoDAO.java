package dao;

import model.TipoDeEspaco;

import java.awt.*;
import java.sql.*;

public class TipoDeEspacoDAO {

    public static void gravar(TipoDeEspaco tp) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into tp(id, nome, descricao,espaco)"
                    + " values(?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1,tp.getId());
            comando.setString(2,tp.getNome());
            comando.setString(3,tp.getDescricao());

            if(espaco.getId() == null){
                comando.setNull(4, Types.NULL);
            }else{
                comando.setString(4,espaco.getId());
            }
            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }
    }
    public static void alterar(TipoDeEspaco tp) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update tp set nome = ?, descricao = ?, espaco=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString(1,tp.getNome());
            comando.setString(2,tp.getDescricao());

            if(espaco.getId() == null){
                comando.setNull(3, Types.NULL);
            }else{
                comando.setString(3,espaco.getId());
            }
            comando.setLong(4,tp.getId());
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(TipoDeEspaco tp) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from tp where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tp.getId());
            comando.execute();
        } catch (SQLException e) {
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);
        }
    }
    public TipoDeEspaco tp (Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        TipoDeEspaco tp = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from tp where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, tp.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            tp = new TipoDeEspaco(rs.getLong("id"),

                    rs.getString("nome"),
                    rs.getString("descricao"),
                    espaco null;
            espaco.setId(rs.getLong("id"));

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);

        }
        return tp;
    }

    public List<TipoDeEspaco> obterTodosTiposEspacos) throws ClassNotFoundException{

        Connection conexao = null;
        Statement comando = null;

        /* List<Espaco> espaco = new ArrayList<Espaco>();  essa linha esta dando erro pq ? */
        TipoDeEspaco tp = null;

        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from tp";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                tp = new TipoDeEspaco()rs.getLong("id"),
                        rs.getString("nome"),
                        rs.getString("descricao"),
                        espaco null;
                tp.setId(rs.getLong("nome"));
                tp.add(tp);
            }
        }catch (SQLException e){
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

        }
        return (List<TipoDeEspaco>) tp;
    }
}
