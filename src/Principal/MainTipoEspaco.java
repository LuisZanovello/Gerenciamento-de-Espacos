package Principal;

import dao.TipoDeEspacoDAO;
import model.ModalidadePredominante;
import model.TipoDeEspaco;

import java.sql.SQLException;

public class MainTipoEspaco {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        TipoDeEspaco tipo = new TipoDeEspaco((long)1274,"luis",(long)123);




        TipoDeEspacoDAO.gravar(tipo);
    }
}
