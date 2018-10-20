package model;

import dao.TipoEspacoDAO;

import java.sql.SQLException;
import java.util.List;

public class TipoEspaco {
    private Long id;
    private String nome;
    private Long modalidadeId;

    public TipoEspaco() {
    }

    public TipoEspaco(Long id, String nome, Long modalidadeId) {
        this.id = id;
        this.nome = nome;
        this.modalidadeId = modalidadeId;
    }

  
    public void gravar() throws SQLException, ClassNotFoundException {
        TipoEspacoDAO.gravar(this);
    }
    public void alterar() throws SQLException, ClassNotFoundException {
        TipoEspacoDAO.alterar(this);
    }
    public void excluir() throws SQLException, ClassNotFoundException {
        TipoEspacoDAO.excluir(this);
    }
    public TipoEspaco obterTipoEspaco(Long id) throws SQLException, ClassNotFoundException {
        return TipoEspacoDAO.obterTipoEspaco((long)id);
    }
    public static List<TipoEspaco> obterTodosTiposEspacos() throws  SQLException, ClassNotFoundException {
        return TipoEspacoDAO.obterTodosEspacos();
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
    public Long getModalidadeId() {
        return modalidadeId;
    }

    /**
     * @param modalidadeId
     */
    public void setModalidadeId(Long modalidadeId) {
        this.modalidadeId = modalidadeId;
    }
    
}
