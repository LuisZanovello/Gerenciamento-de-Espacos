package model;

import dao.ModalidadePredominanteDAO;
import java.sql.SQLException;
import java.util.List;

public class ModalidadePredominante {
    private Long id;
    private String modalidadePredominante;
    private String descricao;

    public ModalidadePredominante() {
    }

    public ModalidadePredominante(Long id, String modalidadePredominante, String descricao) {
        this.id = id;
        this.modalidadePredominante = modalidadePredominante;
        this.descricao = descricao;
    }


    public void gravar() throws SQLException, ClassNotFoundException {
        ModalidadePredominanteDAO.gravar(this);
    }
    public void alterar() throws SQLException, ClassNotFoundException {
        ModalidadePredominanteDAO.alterar(this);
    }
    public void excluir() throws SQLException, ClassNotFoundException {
        ModalidadePredominanteDAO.excluir(this);
    }
    public ModalidadePredominante obterModalidade(Long id) throws SQLException, ClassNotFoundException {
        return ModalidadePredominanteDAO.obterModalidade((long)id);
    }
    public static List<ModalidadePredominante> obterTodasAsModalidadesPredominantes() throws  SQLException, ClassNotFoundException {
        return ModalidadePredominanteDAO.obterTodasModalidade();
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
    public String getModalidadePredominante() {
        return modalidadePredominante;
    }

    /**
     * @param modalidadePredominante the modalidadePredominante to set
     */
    public void setModalidadePredominante(String modalidadePredominante) {
        this.modalidadePredominante = modalidadePredominante;
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