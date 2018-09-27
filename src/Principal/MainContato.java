package Principal;

import dao.ContatoDAO;
import model.Contato;

import java.sql.SQLException;

public class MainContato {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Contato contato = new Contato((long) 1,"3217896", (long)123);

        //System.out.println(contato.);
        ContatoDAO.gravar(contato);
    }
}
