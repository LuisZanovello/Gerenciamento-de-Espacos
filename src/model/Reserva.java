package model;

import dao.ReservaDAO;
import lombok.Data;

import java.sql.SQLException;
import java.util.List;

@Data

public class Reserva {
    private Long id;
    private String dataLocacao;
    private String horaInicioLocacao;
    private String horaFimLocacao;
    private Long qtPessoas;
    private Double valorLocacao;
    private Long notaAvaliacao;
    private Long idCliente;
    private Cliente cliente;
    private Long idEspaco;
    private Espaco espaco;

    /* Construtor da controller Reserva*/
    public Reserva(long id, String dataLocacao, String horaInicioLocacao, String horaFimLocacao,
                   long qtPessoas, double valorLocacao, long notaAvaliacao, long idEspaco, long idCliente) {
        this.id = id;
        this.dataLocacao = dataLocacao;
        this.horaInicioLocacao = horaInicioLocacao;
        this.horaFimLocacao = horaFimLocacao;
        this.qtPessoas = qtPessoas;
        this.valorLocacao = valorLocacao;
        this.notaAvaliacao = notaAvaliacao;
        this.idEspaco = idEspaco;
        this.idCliente = idCliente;
    }

    /*Construtor DAO*/
    public Reserva(Long id, String dataLocacao, String horaInicioLocacao, String horaFimLocacao,
                   Long qtPessoas, Double valorLocacao, Long notaAvaliacao) {
        this.id = id;
        this.dataLocacao = dataLocacao;
        this.horaInicioLocacao = horaInicioLocacao;
        this.horaFimLocacao = horaFimLocacao;
        this.qtPessoas = qtPessoas;
        this.valorLocacao = valorLocacao;
        this.notaAvaliacao = notaAvaliacao;

    }


    public void gravar() throws SQLException, ClassNotFoundException{
        ReservaDAO.gravar(this);
    }


    public void alterar() throws SQLException, ClassNotFoundException{
        ReservaDAO.alterar(this);
    }


    public void excluir() throws SQLException, ClassNotFoundException{
        ReservaDAO.excluir(this);
    }


    public static Reserva obterReserva(Long id) throws SQLException, ClassNotFoundException{

        return ReservaDAO.obterReserva((long)id);
    }

    public static List<Reserva> obterTodasReservas() throws SQLException, ClassNotFoundException{
        return ReservaDAO.obterTodasReservas();
    }
}
