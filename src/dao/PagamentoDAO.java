package dao;


import model.Administrador;
import model.Pagamento;

import java.sql.*;
import java.util.List;

public class PagamentoDAO {

    public static void gravar(Pagamento pag) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into pagamento(id, vencimento, num_cod_barras, valor_total)"
                    + " values(?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, pag.getId());
            comando.setString   (2, pag.getVencimento());
            comando.setLong     (3, pag.getNumeroCodBarras());
            comando.setDouble   (4, pag.getValorTotal());


            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Pagamento pag) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update pagamento set vencimento=?, num_cod_barras=?, valor_total=? where id=?";
            comando = conexao.prepareStatement(sql);

            comando.setString   (1, pag.getVencimento());
            comando.setLong     (2, pag.getNumeroCodBarras());
            comando.setDouble   (3, pag.getValorTotal());


        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(Pagamento pag) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from pagamento where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong (1, pag.getId());


            comando.execute();

        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }
    }


    public Pagamento obterAdministrador (Long id) throws ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;
        Pagamento pag = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from pagamento where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, pag.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            pag = new Pagamento(rs.getLong("id"),

                    rs.getString("vencimento"),
                    rs.getLong("num_cod_barras"),
                    rs.getDouble("valor_total")); /*  null ? */
            pag.setIdReserva(rs.getLong("reservas"));

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);

        }
        return pag;
    }

    public List<Pagamento> obterTodosAdministradores() throws ClassNotFoundException{

        Connection conexao = null;
        Statement comando = null;

        /* List<Pagamento> pag = new ArrayList<Pagamento>();  essa linha esta dando erro pq ? */
        Pagamento pag = null;

        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from pagamento";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                pag = new Pagamento(rs.getLong("id"),
                        rs.getString("vencimento"),
                        rs.getLong("num_cod_barras"),
                        rs.getDouble("valor_total")); /*  null ? */
                pag.setIdReserva(rs.getLong("reservas"));
                pag.add(pag);
            }
        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

            return (List<Pagamento>) pag;
        }
    }

}
