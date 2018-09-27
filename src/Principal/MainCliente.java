package Principal;

import dao.ClienteDAO;
import model.Cliente;

import java.sql.SQLException;

public class MainCliente {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Cliente cliente = new Cliente((long) 124, "iza", "ribeiro", "655325484", "22/02/99", "iza@wow.com");

        //System.out.println(cliente.getCpf()+"\n"+ cliente.getEmail());
        ClienteDAO.gravar(cliente);
    }
}
