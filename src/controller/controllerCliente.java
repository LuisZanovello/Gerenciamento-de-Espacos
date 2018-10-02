package controller;

import dao.ClienteDAO;
import model.Cliente;

import java.sql.SQLException;

public class controllerCliente {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Cliente cliente = new Cliente((long) 124, "issssssa", "ribeiro", "655325484", "22/02/99", "iza@wow.com");

        //System.out.println(cliente.getCpf()+"\n"+ cliente.getEmail());
        //ClienteDAO.gravar(cliente); FUNCIONANDO
        //ClienteDAO.alterar(cliente); FUNCIONANDO
        //ClienteDAO.excluir(cliente); FUNCIONANDO
    }
}
