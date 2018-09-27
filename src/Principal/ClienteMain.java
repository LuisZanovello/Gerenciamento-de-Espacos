package Principal;

import dao.ClienteDAO;
import model.Cliente;

import java.sql.SQLException;

public class ClienteMain {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Cliente cliente = new Cliente((long) 123, "luis", "guilherme", "1222", "26/01/98", "luis@hotmail.com");

        //System.out.println(cliente.getCpf()+"\n"+ cliente.getEmail());
        ClienteDAO.gravar(cliente);
    }
}
