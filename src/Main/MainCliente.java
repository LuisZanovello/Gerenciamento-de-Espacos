package Main;

import dao.ClienteDAO;
import model.Cliente;

import java.sql.SQLException;
import java.util.ArrayList;

public class MainCliente {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        Cliente cliente = new Cliente((long) 126, "Luis", "Zano", "652195325484", "5/02/98", "luis@wow.com");


       // Cliente cliente = new Cliente((long) 124, "Iza", "Ribeiro", "55555", "22/02/99", "iz4rib@wow.com");
        //Cliente cliente = new Cliente((long) 127, "ZE das COVES", "Bezerra", "meiaduzia", "dez/08/umnovequatro", "zeuai@wow.com");
       // Cliente cliente = new Cliente((long) 1243, "Luis", "Zano", "652195325484", "5/02/98", "luis@wow.com");
        //Cliente cliente = new Cliente((long) 125, "Victor", "Wagner", "888556648", "55/02/89", "viictor@wow.com");



      //  System.out.println(cliente.getCpf()+"\n"+ cliente.getEmail());
       // ClienteDAO.gravar(cliente); //FUNCIONANDO
      //  ClienteDAO.alterar(cliente); //FUNCIONANDO
        //ClienteDAO.excluir(cliente); //FUNCIONANDO
        System.out.println(ClienteDAO.obterCliente((long) 124).getNome()); //FUNCIONANDO




        //System.out.println(ClienteDAO.obterTodosOsClientes().get(0).getCpf());

        //ArrayList<Cliente> clientes = ClienteDAO.obterTodosOsClientes();
       // clientes.forEach(x -> {
      //      System.out.println(x.getNome());
      //  });



        //ClienteDAO.gravar(cliente);

    }

}
