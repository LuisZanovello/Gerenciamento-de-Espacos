package main;

import dao.ReservaDAO;
import model.Reserva;
import java.sql.SQLException;

public class MainReserva {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        Reserva resv = new Reserva((long)33, "25/01/1995", "08:00", "22:00", (long)55,
                (double)150.00, (long)5, (long)1,(long)125);
        /*
         Reserva resv = new Reserva((long)55, "25/01/1995", "08:00", "22:00", (long)95,
                (double)150.00, (long)5, (long)124,(long)124);

        Reserva resv = new Reserva((long)11, "25/01/1995", "08:00", "22:00", (long)150,
                (double)250.00, (long)4, (long)2,(long)126);
*/
        ReservaDAO.gravar(resv);
    }
}
