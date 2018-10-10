package Main;

import dao.PagamentoDAO;
import model.Pagamento;

import java.sql.SQLException;

public class MainPagamento {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        Pagamento pag = new Pagamento((long)3, "01/10/2018", (long)5555, (double)150.00, (long)33);
/*
        Pagamento pag = new Pagamento((long)2, "01/10/2018", (long)5555, (double)250.00, (long)11);
        Pagamento pag = new Pagamento((long)1, "01/10/2018", (long)8888, (double)150.00, (long)55);



*/
        PagamentoDAO.gravar(pag);
    }
}
