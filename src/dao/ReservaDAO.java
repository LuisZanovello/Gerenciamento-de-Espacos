package dao;

import model.Administrador;
import model.Reserva;

import java.sql.*;
import java.util.List;

public class ReservaDAO {
    public static void gravar(Reserva resv) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into reserva(id, dt_reserva, hr_inicio, hr_fim, qt_pessoas, valor_espaco, nota_avaliacao)"
                    + " values(?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, resv.getId());
            comando.setString   (2, resv.getDataLocacao());
            comando.setString   (3, resv.getHoraInicioLocacao());
            comando.setString   (4, resv.getHoraFimLocacao());
            comando.setLong     (5, resv.getQtPessoas());
            comando.setDouble   (6, resv.getValorLocacao());
            comando.setLong     (7, resv.getNotaAvaliacao());


            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Reserva resv) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update reserva set dt_reserva=?, hr_inicio=?, hr_fim=?, qt_pessoas=?, valor_espaco=?, nota_avaliacao=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString   (1, resv.getDataLocacao());
            comando.setString   (2, resv.getHoraInicioLocacao());
            comando.setString   (3, resv.getHoraFimLocacao());
            comando.setLong     (4, resv.getQtPessoas());
            comando.setDouble   (5, resv.getValorLocacao());
            comando.setLong     (6, resv.getNotaAvaliacao());
        } catch (SQLException e) {
            throw e;
        }
    }

    public Boolean excluir(Reserva resv) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from reserva where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, resv.getId());


            comando.execute();
            BD.fecharConexao(conexao, comando);
            return true;
        } catch (SQLException e) {
            throw e;
        }
    }


    public Reserva obterReserva (Long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Reserva resv = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from administrador where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, resv.getId());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();

            resv = new Reserva(rs.getLong("id"),

                    rs.getString("dt_reserva"),
                    rs.getString("hr_inicio"),
                    rs.getString("hr_fim]"),
                    rs.getLong("qt_pessoas"),
                    rs.getDouble("valor_espaco"),
                    rs.getLong("nota_avaliacao")); /*  null ? */

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);

        }
        return resv;
    }

    public List<Reserva> obterTodasReservas() throws ClassNotFoundException{

        Connection conexao = null;
        Statement comando = null;

        /* List<Reserva> admin = new ArrayList<Reserva>();  essa linha esta dando erro pq ? */
        Reserva resv = null;

        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from reserva";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                resv = new Reserva(rs.getLong("id"),
                        rs.getString("dt_reserva"),
                        rs.getString("hr_inicio"),
                        rs.getString("hr_fim]"),
                        rs.getLong("qt_pessoas"),
                        rs.getDouble("valor_espaco"),
                        rs.getLong("nota_avaliacao"));
                resv.add(resv);
            }
        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);

            return (List<Reserva>) resv;
        }
    }

}