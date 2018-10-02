package controller;

import dao.DisponibilidadeDAO;
import model.Contato;
import model.Disponibilidade;

import java.sql.SQLException;

public class controllerDisponibilidade {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Disponibilidade disponibilidade = new Disponibilidade((long) 123456, "123123",
                "123123", "12312351", (long) 123);

        DisponibilidadeDAO.gravar(disponibilidade);
    }
}
