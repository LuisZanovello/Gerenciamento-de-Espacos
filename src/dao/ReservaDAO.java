package dao;

import model.Reserva;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReservaDAO {
    public static void gravar(Reserva reserva) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into reserva(id, dt_reserva, hr_inicio, hr_fim, qt_pessoas)"
                    + " values(?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, reserva.getId());
            comando.setString(2, reserva.getDataLocacao());
            comando.setString(3, reserva.getHoraInicioLocacao());
            comando.setString(4, reserva.getHoraFimLocacao());
            comando.setLong(5, reserva.getQtPessoas());


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
            String sql = "update cartoes set dt_reserva=?, hr_inicio=?, hr_fim=?, qt_pessoas=? where id=?";

            comando = conexao.prepareStatement(sql);

            comando.setString(2, reserva.getDataLocacao());
            comando.setString(3, reserva.getHoraInicioLocacao());
            comando.setString(4, reserva.getHoraFimLocacao());
            comando.setLong(5, reserva.getQtPessoas());



        } catch (SQLException e) {
            throw e;
        }
    }
}