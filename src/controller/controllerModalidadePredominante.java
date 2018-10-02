package controller;

import dao.ModalidadePredominanteDAO;
import model.ModalidadePredominante;

import java.sql.SQLException;

public class controllerModalidadePredominante {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ModalidadePredominante modalidade = new ModalidadePredominante((long)124,"bbb","ooooo");
        ModalidadePredominante modalidade1 = new ModalidadePredominante((long)1245,"bbb","ooooo");

        //ModalidadePredominanteDAO.gravar(modalidade);
        //ModalidadePredominanteDAO.alterar(modalidade);
        //ModalidadePredominanteDAO.excluir(modalidade);

         //ModalidadePredominanteDAO.gravar(modalidade1);
        //ModalidadePredominanteDAO.alterar(modalidade1);
        //ModalidadePredominanteDAO.excluir(modalidade1);

        // System.out.println(ModalidadePredominanteDAO.obterModalidade((long)124).getDescricao());
        // System.out.println(ModalidadePredominanteDAO.obterModalidade((long)1245).getDescricao());
        System.out.println(ModalidadePredominanteDAO.obterTodasModalidade().get(0));
        System.out.println(ModalidadePredominanteDAO.obterTodasModalidade().get(1));
    }
}
