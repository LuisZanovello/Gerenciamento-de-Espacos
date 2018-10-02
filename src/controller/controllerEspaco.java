package controller;


import dao.EspacoDAO;
import model.Espaco;

import java.sql.SQLException;

public class controllerEspaco {

    public static void main(String[] args) {
        Espaco espaco = new Espaco((long)5,"SportMania" ,"1234567890" ,"36045000",
                "Logradouro" ,1 ,"compl" ,"Bairro" ,
                "Cidade","UF" ,80.5,900 ,
                "6:00","23:00",(long)12399);

        System.out.println(espaco.getNome());

        try {
            EspacoDAO.gravar(espaco);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
