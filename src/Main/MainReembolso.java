package Main;

import dao.ReembolsoDAO;
import model.Reembolso;

import java.sql.SQLException;

public class MainReembolso {
    public static void main(String[] args) throws SQLException , ClassNotFoundException {
        Reembolso reembol = new Reembolso((long)1, "Em Analise", (long)1);

        ReembolsoDAO.gravar(reembol);

    }
}