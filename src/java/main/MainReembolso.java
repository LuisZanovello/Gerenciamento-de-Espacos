package main;

import dao.ReembolsoDAO;
import model.Reembolso;

import java.sql.SQLException;

public class MainReembolso {
    public static void main(String[] args) throws SQLException , ClassNotFoundException {

        Reembolso reembol = new Reembolso((long)3, "Recusado", (long)3);
        /*
        Reembolso reembol = new Reembolso((long)1, "Em Analise", (long)1);
        Reembolso reembol = new Reembolso((long)2, "Aprovado", (long)2);

        */
        ReembolsoDAO.gravar(reembol);

    }
}
