package model;

import dao.TipoDeEspacoDAO;

import java.sql.SQLException;
import java.util.List;

public class TipoDeEspaco {
    private Long id;
    private String nome;
    private Long modalidadePredominanteId;

    public TipoDeEspaco() {
    }

    public TipoDeEspaco(Long id, String nome, Long modalidadePredominanteId) {
        this.id = id;
        this.nome = nome;
        this.modalidadePredominanteId = modalidadePredominanteId;
    }

  
    public void gravar() throws SQLException, ClassNotFoundException {
        TipoDeEspacoDAO.gravar(this);
    }
    public void alterar() throws SQLException, ClassNotFoundException {
        TipoDeEspacoDAO.alterar(this);
    }
    public void excluir() throws SQLException, ClassNotFoundException {
        TipoDeEspacoDAO.excluir(this);
    }
    public TipoDeEspaco obterTipoEspaco(Long id) throws SQLException, ClassNotFoundException {
        return TipoDeEspacoDAO.obterTipoEspaco((long)id);
    }
    public static List<TipoDeEspaco> obterTodosOsTiposEspacos() throws  SQLException, ClassNotFoundException {
        return TipoDeEspacoDAO.obterTodosEspacos();
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
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the modalidadePredominanteId
     */
    public Long getModalidadePredominanteId() {
        return modalidadePredominanteId;
    }

    /**
     * @param modalidadePredominanteId the modalidadePredominanteId to set
     */
    public void setModalidadePredominanteId(Long modalidadePredominanteId) {
        this.modalidadePredominanteId = modalidadePredominanteId;
    }
    
}
