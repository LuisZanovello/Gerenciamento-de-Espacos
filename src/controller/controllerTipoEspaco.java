package controller;

import dao.TipoDeEspacoDAO;
import model.ModalidadePredominante;
import model.TipoDeEspaco;

import java.sql.SQLException;

public class controllerTipoEspaco {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        TipoDeEspaco tipo = new TipoDeEspaco((long)1274,"luiis",(long)124);



       // System.out.println(TipoDeEspacoDAO.obterTodosEspacos().get(0).getNome());
        System.out.println(TipoDeEspacoDAO.obterTipoEspaco((long)1274).getNome());
    }
}
