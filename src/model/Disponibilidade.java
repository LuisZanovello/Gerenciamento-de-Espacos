package model;

import dao.DisponibilidadeDAO;
import lombok.Data;

import java.sql.SQLException;
import java.util.List;

@Data
public class Disponibilidade {
    private Long id;
    private String dataDisponivel;
    private String hora_inicio;
    private String hora_fim;
    private  Long idEspaco;
    private Espaco espaco;

    public Disponibilidade(long id, String dataDisponivel) {
    }

    public Disponibilidade(long id, String dataDisponivel, String hora_inicio, String hora_fim, Long idEspaco) {
        this.id = id;
        this.dataDisponivel = dataDisponivel;
        this.hora_inicio = hora_inicio;
        this.hora_fim = hora_fim;
        this.idEspaco = idEspaco;
    }

    public Disponibilidade(long id, String dataDisponivel, String hora_inicio, String hora_fim) {
    }



    public void gravar() throws SQLException, ClassNotFoundException {
        DisponibilidadeDAO.gravar(this);
    }
    public void alterar() throws SQLException, ClassNotFoundException {
        DisponibilidadeDAO.alterar(this);
    }
    public void excluir() throws SQLException, ClassNotFoundException {
        DisponibilidadeDAO.excluir(this);
    }
    public Disponibilidade obterDisponibildiade(Long id) throws SQLException, ClassNotFoundException {
        return  DisponibilidadeDAO.obterDisponibilidade((long)id);
    }
    public static List<Disponibilidade> obterTodasAsDisponibilidades() throws  SQLException, ClassNotFoundException {
        return  DisponibilidadeDAO.obterTodosAsDisponibilidades();
    }
}
