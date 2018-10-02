package controller;

import dao.ContatoDAO;
import model.Contato;

import java.sql.SQLException;

public class controllerContato {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Contato contato = new Contato((long) 10,"545454", (long)124);

        //System.out.println(contato.);
       // ContatoDAO.gravar(contato); FUNCIONANDO
        // ContatoDAO.alterar(contato); FUNCIONANDO
       // ContatoDAO.excluir(contato); FUNCIONANDO
    }
}
