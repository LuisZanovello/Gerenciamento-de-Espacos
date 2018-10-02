package dao;
import model.Reserva;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReservaDAO {
    public static void gravar(Reserva resv) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "insert into reserva(id, data_reserva, hora__inicio, hora_fim, quantidade_pessoas, valor_espaco, nota_avaliacao, espaco_id, cliente_id)"
                    + " values(?,?,?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, resv.getId());
            comando.setString   (2, resv.getDataLocacao());
            comando.setString   (3, resv.getHoraInicioLocacao());
            comando.setString   (4, resv.getHoraFimLocacao());
            comando.setLong     (5, resv.getQtPessoas());
            comando.setDouble   (6, resv.getValorLocacao());
            comando.setLong     (7, resv.getNotaAvaliacao());

            if(resv.getIdCliente() == null){
                comando.setNull(8, Types.NULL);
            }
            else{
                comando.setLong(8, resv.getIdCliente());
            }

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

            if(resv.getCliente() == null){
                comando.setNull(7, Types.NULL);
            }
            else{
                comando.setLong(7, resv.getCliente().getId());
            }

            if(resv.getEspaco() == null){
                comando.setNull(7, Types.NULL);
            }
            else{
                comando.setLong(7, resv.getEspaco().getId());
            }

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


    public static Reserva obterReserva(long id) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Reserva resv = null;

        try {
            conexao = BD.getConexao();
            String sql = "select * from reserva where id=?";
            comando = conexao.prepareStatement(sql);
            comando.setLong     (1, id);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            resv = new Reserva (rs.getLong("id"),
                    rs.getString    ("dataLocacao"),
                    rs.getString    ("horaInicioLocacao"),
                    rs.getString    ("horaFimLocacao"),
                    rs.getLong      ("qtPessoas"),
                    rs.getDouble    ("valorLocacao"),
                    rs.getLong      ("notaAvaliacao")); /*  null ? */


        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BD.fecharConexao(conexao, comando);
        }
        return resv;
    }

    public ArrayList<Reserva> obterTodasReservas() throws ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        ArrayList<Reserva> lista = new ArrayList<Reserva>();
        Reserva resv = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "select * from reserva";
            ResultSet rs = comando.executeQuery(sql);
            while(rs.next()) {
                resv = new Reserva(rs.getLong("id"),
                        rs.getString("dataLocacao"),
                        rs.getString("horaInicioLocacao"),
                        rs.getString("horaFimLocacao"),
                        rs.getLong("qtPessoas"),
                        rs.getDouble("valorLocacao"),
                        rs.getLong("notaAvaliacao"));

                resv.setId(rs.getLong("id"));
                lista.add(resv);
            }
        }catch (SQLException e){
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
            return lista;
        }
    }
}