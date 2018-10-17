package main;

import dao.ContatoDAO;
import model.Contato;

import java.sql.SQLException;

public class MainContato {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Contato contato = new Contato((long) 10,"545455", (long)124);

        //ContatoDAO.gravar(contato); //FUNCIONANDO
         //ContatoDAO.alterar(contato); //FUNCIONANDO
       // ContatoDAO.excluir(contato); //FUNCIONANDO
       System.out.println(ContatoDAO.obterContato((long)10).getNumero()); //FUNCIONANDO
    }
}
