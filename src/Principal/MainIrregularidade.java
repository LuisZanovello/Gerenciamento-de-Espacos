package Principal;

import dao.IrregularidadeDAO;
import model.Irregularidade;

import java.sql.SQLException;

public class MainIrregularidade {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Irregularidade irregularidade = new Irregularidade((long)123,"luis","iiiii",(long)2);

        System.out.println(irregularidade.getAutor());

        IrregularidadeDAO.gravar(irregularidade);
    }
}
