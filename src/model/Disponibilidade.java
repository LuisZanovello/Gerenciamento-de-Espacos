package model;

import dao.DisponibilidadeDAO;

import java.sql.SQLException;
import java.util.List;

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

    public Long getIdEspaco() {
        return idEspaco;
    }

    public Disponibilidade setIdEspaco(Long idEspaco) {
        this.idEspaco = idEspaco;
        return this;
    }

    public Espaco getEspaco() {
        return espaco;
    }

    public Disponibilidade setEspaco(Espaco espaco) {
        this.espaco = espaco;
        return this;
    }

    public Long getId() {
        return id;
    }

    public Disponibilidade setId(Long id) {
        this.id = id;
        return this;
    }

    public String getDataDisponivel() {
        return dataDisponivel;
    }

    public Disponibilidade setDataDisponivel(String dataDisponivel) {
        this.dataDisponivel = dataDisponivel;
        return this;
    }

    public String getHora_inicio() {
        return hora_inicio;
    }

    public Disponibilidade setHora_inicio(String hora_inicio) {
        this.hora_inicio = hora_inicio;
        return this;
    }

    public String getHora_fim() {
        return hora_fim;
    }

    public Disponibilidade setHora_fim(String hora_fim) {
        this.hora_fim = hora_fim;
        return this;
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
