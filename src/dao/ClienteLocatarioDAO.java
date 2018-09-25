package dao;

import model.Cliente;
import model.ClienteLocador;
import model.ClienteLocatario;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClienteLocatarioDAO {
    public static void gravar(ClienteLocatario clienteLocatario) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into clienteLocatario(id, cpf)"
                    + "values(?,?,?,?,?,?)";
            comando = ((Connection) conexao).prepareStatement(sql);
            comando.setLong(1, clienteLocatario.getId());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }

    }

    public static void alterar(ClienteLocatario clienteLocatario) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "update clienteLocatario set  cpf = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, clienteLocatario.getCpf());
            comando.setLong( 2, clienteLocatario.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }
    }

    public static void excluir (ClienteLocatario clienteLocatario) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;

        try{
            conexao = BD.getConexao();
            String sql = "delete from clienteLocatario where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, clienteLocatario.getId());
            comando.execute();
        }catch (SQLException e){
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);
        }
    }

    public static ClienteLocatario obterClienteLocatario(long id) throws  ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        ClienteLocatario clienteLocatario = null;

        try{
            conexao = BD.getConexao();
            String sql = "select * from clienteLocatario where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, id);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            clienteLocatario = new ClienteLocatario (rs.getLong("id"),
                    rs.getString("cpf"));


        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);
        }
        return clienteLocatario;
    }


    public static List<ClienteLocatario> obterTodosOsClientesLocatarios() throws  ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        List<ClienteLocatario> clientesLocatarios = new ArrayList<ClienteLocatario>();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM clienteLocatario";
            ResultSet rs = comando.executeQuery(sql);
            while(rs.next()){
                ClienteLocatario cliente = new ClienteLocatario(rs.getLong("id"),
                        rs.getString("cpf"));

                clientesLocatarios.add(cliente);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            BD.fecharConexao(conexao, comando);
        }

        return clientesLocatarios;
    }
}



