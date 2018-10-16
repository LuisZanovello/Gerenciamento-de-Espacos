package main;

import dao.DisponibilidadeDAO;
import model.Contato;
import model.Disponibilidade;

import java.sql.SQLException;

public class MainDisponibilidade {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Disponibilidade disponibilidade = new Disponibilidade((long) 1234567, "teste",
                "123123", "12312351", (long) 6);

        //DisponibilidadeDAO.gravar(disponibilidade); //FUNCIONANDO
        DisponibilidadeDAO.alterar(disponibilidade); //FUNCIONANDO
        //DisponibilidadeDAO.excluir(disponibilidade); //FUNCIONANDO
        System.out.println(DisponibilidadeDAO.obterDisponibilidade((long) 1234567).getDataDisponivel()); //FUNCIONANDO
        //System.out.println(DisponibilidadeDAO.obterTodosAsDisponibilidades().get(0).getDataDisponivel()); //FUNCIONANDO
    }
}
