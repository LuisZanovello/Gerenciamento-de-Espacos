package principal;

import model.Contato;

import java.sql.SQLException;

public class MainDisponibilidade {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Disponibilidade contato = new Contato((long) 123456, "32737397");

        System.out.println(contato.getNumero());

    }
}
