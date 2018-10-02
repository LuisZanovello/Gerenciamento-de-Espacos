package controller;

import dao.DisponibilidadeDAO;
import model.Contato;
import model.Disponibilidade;

import java.sql.SQLException;

public class controllerDisponibilidade {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Disponibilidade disponibilidade = new Disponibilidade((long) 1234567, "test",
                "123123", "12312351", (long) 123);

        //DisponibilidadeDAO.gravar(disponibilidade); //FUNCIONANDO
        //DisponibilidadeDAO.alterar(disponibilidade); //FUNCIONANDO
        //DisponibilidadeDAO.excluir(disponibilidade); //FUNCIONANDO
        //System.out.println(DisponibilidadeDAO.obterDisponibilidade((long) 1234567).getDataDisponivel()); //FUNCIONANDO
        //System.out.println(DisponibilidadeDAO.obterTodosAsDisponibilidades().get(1).getDataDisponivel()); //FUNCIONANDO
    }
}
