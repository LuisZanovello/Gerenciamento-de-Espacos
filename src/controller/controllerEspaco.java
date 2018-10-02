package controller;


import dao.EspacoDAO;
import model.Espaco;

import java.sql.SQLException;

public class controllerEspaco {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Espaco espaco = new Espaco((long)6,"SportMania" ,"2234567890" ,"36045000",
                "Logradouro" ,1 ,"compl" ,"Bairro" ,
                "Cidade","UF" ,80.5,900 ,
                "6:00","23:00",(long)1274);

        EspacoDAO.gravar(espaco);
    }

}
