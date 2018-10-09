package Main;

import dao.PagamentoDAO;
import model.Pagamento;

import java.sql.SQLException;

public class MainPagamento {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        Pagamento pag = new Pagamento((long)1, "31/01/2019", (long)8888, (double)150.00, (long)55);

        PagamentoDAO.gravar(pag);
    }
}
