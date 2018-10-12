package dao;


import model.Cliente;

import java.sql.*;
import java.util.ArrayList;

public class ClienteDAO {
    public static void gravar(Cliente cliente) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into cliente (id, nome, sobrenome, data_nascimento, email, cpf)"
                    + "values(?,?,?,?,?,?)";
            comando = ((Connection) conexao).prepareStatement(sql);
            comando.setLong(1, cliente.getId());
            comando.setString(2, cliente.getNome());
            comando.setString(3, cliente.getSobrenome());
            comando.setString(4, cliente.getDataNascimento());
            comando.setString(5, cliente.getEmail());
            comando.setString(6, cliente.getCpf());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }

    }

    public static void alterar(Cliente cliente) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update cliente set  nome = ?, sobrenome = ?, cpf = ?, data_nascimento = ?, email = ?"
                    + "where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, cliente.getNome());
            comando.setString(2, cliente.getSobrenome());
            comando.setString(3, cliente.getCpf());
            comando.setString(4, cliente.getDataNascimento());
            comando.setString(5, cliente.getEmail());

            comando.setLong(6, cliente.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(Cliente cliente) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;

        try {
            conexao = BD.getConexao();
            String sql = "delete from cliente where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cliente.getId());
            comando.execute();
        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }
    }

    public static Cliente obterCliente(long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Cliente cliente = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from cliente where id = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, id);
            ResultSet rs = comando.executeQuery();
            rs.first();

            /* antes
            cliente = getClient(rs);
            */

            cliente = new Cliente(rs.getLong("id"),
                    rs.getString("nome"),
                    rs.getString("sobrenome"),
                    rs.getString("data_nascimento"),
                    rs.getString("email"),
                    rs.getString("cpf"));

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return cliente;
    }

/*
    Isso esta ajudando e atrapalhando
    private static Cliente getClient(ResultSet rs) throws SQLException {
        return new Cliente(rs.getLong("id"),
                rs.getString("nome"),
                rs.getString("sobrenome"),
                rs.getString("data_nascimento"),
                rs.getString("email"),
                rs.getString("cpf"));
    }


    public static ArrayList<Cliente> obterTodosOsClientes() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        ArrayList<Cliente> clientes = new ArrayList<>();

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM cliente";
            ResultSet rs = comando.executeQuery(sql);
            while (rs.next()) {
                clientes.add(getClient(rs));
            }

            */

    public static ArrayList<Cliente> obterTodosOsClientes() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        ArrayList<Cliente> lista = new ArrayList<Cliente>();
        Cliente cliente = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM cliente";
            ResultSet rs = comando.executeQuery(sql);

            while (rs.next()) {

                cliente = new Cliente(rs.getLong("id"),
                        rs.getString("nome"),
                        rs.getString("sobrenome"),
                        rs.getString("data_nascimento"),
                        rs.getString("email"),
                        rs.getString("cpf"));
                lista.add(cliente);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return lista;
    }
}


