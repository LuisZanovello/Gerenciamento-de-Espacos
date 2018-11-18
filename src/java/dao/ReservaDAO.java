package dao;

import model.Reserva;

import java.sql.*;
import java.util.ArrayList;

public class ReservaDAO {

    public static void gravar(Reserva reserva) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into reserva(id, data_reserva, hora_inicio, hora_fim, quantidade_pessoas, valor_espaco, nota_avaliacao, espaco_id, cliente_id)"
                    + " values(?,?,?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, reserva.getId());
            comando.setString(2, reserva.getDataLocacao());
            comando.setString(3, reserva.getHoraInicioLocacao());
            comando.setString(4, reserva.getHoraFimLocacao());
            comando.setLong(5, reserva.getQtPessoas());
            comando.setDouble(6, reserva.getValorLocacao());
            comando.setLong(7, reserva.getNotaAvaliacao());

            if (reserva.getIdEspaco() == null) {
                comando.setNull(8, Types.NULL);
            } else {
                comando.setLong(8, reserva.getIdEspaco());
            }
            if (reserva.getIdCliente() == null) {
                comando.setNull(9, Types.NULL);
            } else {
                comando.setLong(9, reserva.getIdCliente());
            }

            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Reserva reserva) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update reserva set data_reserva=?, hora_inicio=?, hora_fim=?, quantidade_pessoas=?, valor_espaco=?, nota_avaliacao=?, espaco_id=?, cliente_id=? where id=?";

            comando = conexao.prepareStatement(sql);
            comando.setString(1, reserva.getDataLocacao());
            comando.setString(2, reserva.getHoraInicioLocacao());
            comando.setString(3, reserva.getHoraFimLocacao());
            comando.setLong(4, reserva.getQtPessoas());
            comando.setDouble(5, reserva.getValorLocacao());
            comando.setLong(6, reserva.getNotaAvaliacao());
            comando.setLong(7, reserva.getId());
            
            if (reserva.getIdEspaco() == null) {
                comando.setNull(7, Types.NULL);
            } else {
                comando.setLong(7, reserva.getIdEspaco());
            }
      
            
            if (reserva.getIdCliente() == null) {
                comando.setNull(8, Types.NULL);
            } else {
                comando.setLong(8, reserva.getIdCliente());
            }

            comando.setLong(9, reserva.getId());
            comando.execute();
            BD.fecharConexao(conexao, comando);

        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(Reserva reserva) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from reserva where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, reserva.getId());
            comando.execute();

            BD.fecharConexao(conexao, comando);

        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);

        }
    }

    public static Reserva obterReserva(long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Reserva reserva = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from reserva where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, id);
            ResultSet rs = comando.executeQuery();
            rs.first();

            reserva = new Reserva(rs.getLong("id"),
                    rs.getString("data_reserva"),
                    rs.getString("hora_inicio"),
                    rs.getString("hora_fim"),
                    rs.getLong("quantidade_pessoas"),
                    rs.getDouble("valor_espaco"),
                    rs.getLong("nota_avaliacao"),
                    rs.getLong("espaco_id"),
                    rs.getLong("cliente_id"));

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return reserva;
    }

    public static ArrayList<Reserva> obterTodasReservas() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;

        ArrayList<Reserva> lista = new ArrayList<>();
        Reserva reserva = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from reserva";
            ResultSet rs = comando.executeQuery(sql);
            while (rs.next()) {
                lista.add(new Reserva(rs.getLong("id"),
                        rs.getString("data_reserva"),
                        rs.getString("hora_inicio"),
                        rs.getString("hora_fim"),
                        rs.getLong("quantidade_pessoas"),
                        rs.getDouble("valor_espaco"),
                        rs.getLong("nota_avaliacao"),
                        rs.getLong("espaco_id"),
                        rs.getLong("cliente_id")));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
            return lista;
        }
    }
}
