package controller;

import dao.ModalidadePredominanteDAO;
import model.ModalidadePredominante;

import java.sql.SQLException;

public class controllerModalidadePredominante {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ModalidadePredominante modalidade = new ModalidadePredominante((long)124,"bbb","ooooo");


        ModalidadePredominanteDAO.gravar(modalidade);

    }
}
