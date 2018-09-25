package dao;

import model.Cliente;
import model.ClienteLocador;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClienteLocadorDAO {
    public static void gravar(ClienteLocador clienteLocador) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into clienteLocador (id, cnpj)"
                    + "values(?,?)";
            comando = ((Connection) conexao).prepareStatement(sql);
            comando.setLong(1, clienteLocador.getId());
            comando.setString(2, clienteLocador.getCnpj());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }

    }
    public static void alterar(ClienteLocador clienteLocador) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "update clienteLocador set  cnpj = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, clienteLocador.getCnpj());
            comando.setLong( 2, clienteLocador.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }
    }

    public static void excluir (Cliente clienteLocador) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;

        try{
            conexao = BD.getConexao();
            String sql = "delete from clienteLocador where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, clienteLocador.getId());
            comando.execute();
        }catch (SQLException e){
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);
        }
    }

    public static Cliente obterClienteLocador(long id) throws  ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        Cliente clienteLocador = null;

        try{
            conexao = BD.getConexao();
            String sql = "select * from clienteLocador where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, id);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            clienteLocador = new ClienteLocador (rs.getLong("id"),
                    rs.getString("cnpj"));


        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);
        }
        return clienteLocador;
    }

    public static List<ClienteLocador> obterTodosOsClientesLocadores() throws  ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        List<ClienteLocador> clientesLocadores = new ArrayList<ClienteLocador>();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM clienteLocador";
            ResultSet rs = comando.executeQuery(sql);
            while(rs.next()){
                ClienteLocador cliente = new ClienteLocador(rs.getLong("id"),
                        rs.getString("cnpj"));

                clientesLocadores.add(cliente);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            BD.fecharConexao(conexao, comando);
        }

        return clientesLocadores;
    }
}