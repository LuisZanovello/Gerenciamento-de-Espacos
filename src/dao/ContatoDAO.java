package dao;

import model.Cliente;
import model.Contato;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ContatoDAO {
    public static void gravar(Contato contato) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into contato (id, numero)"
                    + "values(?,?)";
            comando = ((Connection) conexao).prepareStatement(sql);
            comando.setLong(1, contato.getId());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }

    }

    public static void alterar(Contato contato) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "update contato set  numero = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, contato.getNumero());
            comando.setLong(2, contato.getId());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }
    }

    public static void excluir (Contato contato) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;

        try{
            conexao = BD.getConexao();
            String sql = "delete from contato where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, contato.getId());
            comando.execute();
        }catch (SQLException e){
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);
        }
    }

    public static Contato obterContato(long id) throws  ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        Contato contato = null;

        try{
            conexao = BD.getConexao();
            String sql = "select * from contato where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, id);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            contato = new Contato (rs.getLong("id"),
                    rs.getString("numero"));


        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);
        }
        return contato;
    }


    public static List<Contato> obterTodosOsContatos() throws  ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        List<Contato> contatos = new ArrayList<Contato>();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM contato";
            ResultSet rs = comando.executeQuery(sql);
            while(rs.next()){
                Contato contato = new Contato(rs.getLong("id"),
                        rs.getString("numero"));

                contatos.add(contato);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            BD.fecharConexao(conexao, comando);
        }

        return contatos;
    }
}
