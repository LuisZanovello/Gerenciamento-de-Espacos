package principal;

import dao.AdministradorDAO;
import model.Administrador;
import java.sql.SQLException;

public class PrincipalAdmin {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Administrador admin = new Administrador((long)132,"Victor", "viictor.wagmer@lul.br", "123123");
                                                /*ID        NOME            EMAIL                           SENHA*/
        AdministradorDAO.gravar(admin);
    }
}
