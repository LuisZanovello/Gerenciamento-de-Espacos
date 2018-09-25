package dao;

import com.sun.security.ntlm.Client;
import model.Cliente;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {
    public static void gravar(Cliente cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "insert into cliente (id, nome, sobrenome, cpf, dt_nascimento, email)"
                    + "values(?,?,?,?,?,?)";
            comando = ((Connection) conexao).prepareStatement(sql);
            comando.setLong( 1, cliente.getId());
            comando.setString(2, cliente.getNome());
            comando.setString(3, cliente.getSobrenome());
            comando.setString(4, cliente.getCpf());
            comando.setString(5, cliente.getDataNascimento());
            comando.setString(6, cliente.getEmail());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }

    }

    public static void alterar(Cliente cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "update cliente set  nome = ?, sobrenome = ?, cpf = ?, dt_nascimento = ?, email = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, cliente.getNome());
            comando.setString(2, cliente.getSobrenome());
            comando.setString(3, cliente.getCpf());
            comando.setString(4, cliente.getDataNascimento());
            comando.setString(5, cliente.getEmail());

            comando.setLong( 6, cliente.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch(SQLException e){
            throw e;
        }
    }

    public static void excluir (Cliente cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;

        try{
            conexao = BD.getConexao();
            String sql = "delete from cliente where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cliente.getId());
            comando.execute();
        }catch (SQLException e){
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);
        }
    }

    public static Cliente obterCliente(long id) throws  ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        Cliente cliente = null;

        try{
            conexao = BD.getConexao();
            String sql = "select * from cliente where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, id);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            cliente = new Cliente (rs.getLong("id"),
                    rs.getString("nome"),
                    rs.getString("sobrenome"),
                    rs.getString("dataNascimento"),
                    rs.getString("email"));


        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);
        }
        return cliente;
    }


    public static List<Cliente> obterTodosOsClientes() throws  ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        List<Cliente> clientes = new ArrayList<Cliente>();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM cliente";
            ResultSet rs = comando.executeQuery(sql);
            while(rs.next()){
                Cliente cliente = new Cliente(rs.getLong("id"),
                        rs.getString("nome"),
                        rs.getString("sobrenome"),
                        rs.getString("dataNascimento"),
                        rs.getString("email"));

                 clientes.add(cliente);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            BD.fecharConexao(conexao, comando);
        }

        return clientes;
        }
    }


