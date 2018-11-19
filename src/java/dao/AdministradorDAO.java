package dao;

import model.Administrador;

import java.sql.*;
import java.util.ArrayList;

public class AdministradorDAO {

    public static void gravar(Administrador admin) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;

        try {
            conexao = BD.getConexao();
            String sql = "insert into administrador (id, nome, email, senha)"
                    + " values(?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, admin.getId());
            comando.setString(2, admin.getNome());
            comando.setString(3, admin.getEmail());
            comando.setString(4, admin.getSenha());

            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Administrador admin) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update administrador set nome=?, email=?,senha=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString(1, admin.getNome());
            comando.setString(2, admin.getEmail());
            comando.setString(3, admin.getSenha());
            comando.setLong(4, admin.getId());
            comando.execute();

        } catch (SQLException e) {
            throw e;
        }
    }

    public static Administrador logar(String email, String senha) throws ClassNotFoundException {
        Connection conexao = null;
        Administrador administrador = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM administrador WHERE email = ? AND senha = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, email);
            comando.setString(2, senha);
            ResultSet rs = comando.executeQuery();
            if (rs.first()) {
                administrador = new Administrador(
                        rs.getLong("id"),
                        rs.getString("nome"),
                        rs.getString("email"),
                        rs.getString("senha"));
            }

            comando.close();
            conexao.close();
        } catch (SQLException e) {
        } finally {
            fecharConexao(conexao, comando);
        }
        return administrador;
    }

    public static void excluir(Administrador admin) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from administrador where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, admin.getId());

            comando.execute();

        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);

        }
    }

    public static Administrador obterAdministrador(Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Administrador admin = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from administrador where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, id);
            ResultSet rs = comando.executeQuery();
            rs.first();

            admin = new Administrador(rs.getLong("id"),
                    rs.getString("nome"),
                    rs.getString("email"),
                    rs.getString("senha"));
        } catch (SQLException e) {
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return admin;
    }

    public static ArrayList<Administrador> obterTodosAdministradores() throws ClassNotFoundException {

        Connection conexao = null;
        Statement comando = null;
        ArrayList<Administrador> lista = new ArrayList<>();
        Administrador admin = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from administrador";
            ResultSet rs = comando.executeQuery(sql);

            while (rs.next()) {
                admin = new Administrador(rs.getLong("id"),
                        rs.getString("nome"),
                        rs.getString("email"),
                        rs.getString("senha"));

                lista.add(admin);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
            return lista;
        }

    }

    public static void fecharConexao(Connection conexao, Statement comando) {
        try {
            if (comando != null) {
                comando.close();
            }

            if (comando != null) {
                conexao.close();
            }

        } catch (SQLException e) {

        }
    }
}
