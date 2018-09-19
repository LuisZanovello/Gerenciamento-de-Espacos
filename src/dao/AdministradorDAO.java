package dao;

import model.Administrador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AdministradorDAO {

    public static void gravar(Administrador admin) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into admin(id, nome, email, senha)"
                    + " values(?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, admin.getId());
            comando.setString   (2, admin.getNome());
            comando.setString   (3, admin.getEmail());
            comando.setString   (4, admin.getSenha());

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
                String sql = "update admin set nome=?, email=?,senha=? where id=?";

                comando = conexao.prepareStatement(sql);

                comando.setString   (2, admin.getNome());
                comando.setString   (3, admin.getEmail());
                comando.setString   (4, admin.getSenha());
            } catch (SQLException e) {
                throw e;
            }
        }

    public Boolean excluir(Administrador admin) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from administrador where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, admin.getId());


            comando.execute();
            BD.fecharConexao(conexao, comando);
            return true;
        } catch (SQLException e) {
            throw e;
        }
    }

    }
