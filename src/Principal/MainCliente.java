package Principal;

import dao.ClienteDAO;
import model.Cliente;

import java.sql.SQLException;

public class MainCliente {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Cliente cliente = new Cliente((long) 123, "luis", "guilherme", "1222", "26/01/98", "luis@hotmail.com");

        ClienteDAO.gravar(cliente);
    }
}
