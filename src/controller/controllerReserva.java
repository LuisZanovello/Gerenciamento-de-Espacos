package controller;

import dao.ReservaDAO;
import model.Reserva;
import java.sql.SQLException;

public class controllerReserva {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Reserva resv = new Reserva((long)55, "25/01/1995", "08:00", "22:00", (long)95,
                (double)150.00, (long)5, (long)124,(long)124);

        ReservaDAO.gravar(resv);
    }
}
