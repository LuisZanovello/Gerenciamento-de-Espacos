package Main;

import dao.ClienteDAO;
import model.Cliente;

import java.sql.SQLException;
import java.util.ArrayList;

public class MainCliente {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        /*Cliente cliente = new Cliente((long) 1243, "Luis", "Zano", "652195325484", "5/02/98", "luis@wow.com");

        System.out.println(cliente.getCpf()+"\n"+ cliente.getEmail());
        ClienteDAO.gravar(cliente); //FUNCIONANDO
        ClienteDAO.alterar(cliente); //FUNCIONANDO
        ClienteDAO.excluir(cliente); //FUNCIONANDO
        System.out.println(ClienteDAO.obterCliente((long) 124).getNome()); //FUNCIONANDO


            ClienteDAO.gravar(cliente);

        System.out.println(ClienteDAO.obterTodosOsClientes().get(0).getCpf());*/

        ArrayList<Cliente> clientes = ClienteDAO.obterTodosOsClientes();
        clientes.forEach(x -> {
            System.out.println(x.getNome());
        });
    }

}
