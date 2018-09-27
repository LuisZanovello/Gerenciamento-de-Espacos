package dao;

import model.Administrador;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdministradorDAO {

    public static void gravar(Administrador admin) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into administrador (id, nome, email, senha)"
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
                String sql = "update administrador set nome=?, email=?,senha=? where id=?";

                comando = conexao.prepareStatement(sql);

                comando.setString   (1, admin.getNome());
                comando.setString   (2, admin.getEmail());
                comando.setString   (3, admin.getSenha());
                comando.setLong(4, admin.getId());
                comando.execute();


            } catch (SQLException e) {
                throw e;
            }
        }

    public static void excluir(Administrador admin) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from administrador where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, admin.getId());


            comando.execute();

        } catch (SQLException e) {
            throw e;
        }finally {
            BD.fecharConexao(conexao, comando);

        }
    }


    public Administrador obterAdministrador (Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Administrador admin = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from administrador where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, admin.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            admin = new Administrador(rs.getLong("id"),

                    rs.getString    ("nome"),
                    rs.getString    ("email"),
                    rs.getString    ("senha")); /*  null ? */
        } catch (SQLException e) {
         e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);
        }
        return admin;
    }

    public List<Administrador> obterTodosAdministradores() throws ClassNotFoundException{

        Connection conexao = null;
        Statement comando = null;
        /* List<Administrador> admin = new ArrayList<Administrador>();  essa linha esta dando erro pq ? */
        Administrador admin = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from administrador";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                admin = new Administrador(rs.getLong("id"),
                        rs.getString    ("nome"),
                        rs.getString    ("email"),
                        rs.getString    ("senha"));
                admin.add(admin);
            }
        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
return (List<Administrador>) admin;
        }
    }
}
