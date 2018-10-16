package main;

import dao.IrregularidadeDAO;
import model.Irregularidade;

import java.sql.SQLException;

public class MainIrregularidade {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Irregularidade irregularidade = new Irregularidade((long)1234,"luiis","é uma descrição",(long)6);
        Irregularidade irregularidade1 = new Irregularidade((long)123,"luiis","é uma descrição",(long)6);

        //IrregularidadeDAO.gravar(irregularidade);
        //IrregularidadeDAO.alterar(irregularidade);
        //IrregularidadeDAO.excluir(irregularidade);

        //IrregularidadeDAO.gravar(irregularidade1);
        //IrregularidadeDAO.alterar(irregularidade1);
        //IrregularidadeDAO.excluir(irregularidade1);

         //System.out.println(IrregularidadeDAO.obterIrregularidade((long)1234).getDescricao());
        //System.out.println(IrregularidadeDAO.obterIrregularidade((long)123).getDescricao());
        System.out.println(IrregularidadeDAO.obterTodasIrregularidades().get(0));
        System.out.println(IrregularidadeDAO.obterTodasIrregularidades().get(1));
    }
}
