package model;

import dao.ModalidadeDAO;
import java.sql.SQLException;
import java.util.List;

public class Modalidade {

    private Long id;
    private String modalidade;
    private String descricao;

    public Modalidade() {
    }

    public Modalidade(Long id, String modalidade, String descricao) {
        this.id = id;
        this.modalidade = modalidade;
        this.descricao = descricao;
    }


    public void gravar() throws SQLException, ClassNotFoundException {
        ModalidadeDAO.gravar(this);
    }
    public void alterar() throws SQLException, ClassNotFoundException {
        ModalidadeDAO.alterar(this);
    }
    public void excluir() throws SQLException, ClassNotFoundException {
        ModalidadeDAO.excluir(this);
    }
    public static Modalidade obterModalidade(Long id) throws SQLException, ClassNotFoundException {
        return ModalidadeDAO.obterModalidade((long)id);
    }
    public static List<Modalidade> obterTodasModalidades() throws  SQLException, ClassNotFoundException {
        return ModalidadeDAO.obterTodasModalidades();
    }

    /**
     * @return the id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return the modalidadePredominante
     */
    public String getModalidade() {
        return modalidade;
    }

    /**
     * @param modalidade
     */
    public void setModalidade(String modalidade) {    
        this.modalidade = modalidade;
    }

    /**
     * @return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @param descricao the descricao to set
     */
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
}