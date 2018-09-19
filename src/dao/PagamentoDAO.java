package dao;


import model.Pagamento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PagamentoDAO {

        public static void gravar(Pagamento pagamento) throws SQLException, ClassNotFoundException {
            Connection conexao = null;
            PreparedStatement comando = null;
            try {
                conexao = BD.getConexao();
                String sql = "insert into pagametno(id, vencimento, num_cod_barras, valor_total)"
                        + " values(?,?,?,?)";
                comando = conexao.prepareStatement(sql);
                comando.setLong     (1, pagamento.getId());
                comando.setString   (2, pagamento.getDiasExpiracao());
                comando.setLong     (3, pagamento.getNumeroCodBarras());
                comando.setDouble   (4, pagamento.getValorTotal());






                comando.execute();
                BD.fecharConexao(conexao, comando);
            } catch (SQLException e) {
                throw e;
            }
        }

        public static void alterar(Pagamento pagamento) throws SQLException, ClassNotFoundException {
            Connection conexao = null;
            PreparedStatement comando = null;
            try {
                conexao = BD.getConexao();
                String sql = "update pagamento set vencimento=?, num_cod_barras=?, valor_total=? where id=?";
                comando = conexao.prepareStatement(sql);

                comando.setString   (2, pagamento.getDiasExpiracao());
                comando.setLong     (3, pagamento.getNumeroCodBarras());
                comando.setFloat  (4, pagamento.getValorTotal());


            } catch (SQLException e) {
                throw e;
            }
        }

}
