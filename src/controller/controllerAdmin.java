package controller;

import dao.AdministradorDAO;
import model.Administrador;
import java.sql.SQLException;

public class controllerAdmin {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Administrador admin = new Administrador((long)8,"Victor", "viictor.wagner@lul.br", "123123");
                                                /*ID        NOME            EMAIL                           SENHA*/
       AdministradorDAO.gravar(admin);
    }
}