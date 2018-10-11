package Main;

import dao.AdministradorDAO;
import model.Administrador;
import java.sql.SQLException;

public class MainAdmin {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Administrador admin = new Administrador((long)8,"Victor", "viictor.wagner@lul.br", "123123");
        /*Administrador admin = new Administrador((long)9,"Luis", "luis.zano@lul.br", "321321");
        Administrador admin = new Administrador((long)10,"Iza", "iza.ribe@lul.br", "123412");
        Administrador admin = new Administrador((long)11, "WW", "ww.w@lul.com.br", "456321");*/
                                                /*ID        NOME            EMAIL                           SENHA*/
       //AdministradorDAO.gravar(admin);


        //obter todos os administradores

        for(int x=0;x<=3;x++) {
            System.out.println(AdministradorDAO.obterTodosAdministradores().get(x).getNome());
        }




    }
}
