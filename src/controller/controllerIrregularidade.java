package controller;

import dao.IrregularidadeDAO;
import model.Irregularidade;

import java.sql.SQLException;

public class controllerIrregularidade {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Irregularidade irregularidade = new Irregularidade((long)123,"luiis","é uma descrição",(long)2);

        IrregularidadeDAO.gravar(irregularidade);
    }
}
