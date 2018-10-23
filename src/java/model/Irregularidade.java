package model;

import dao.IrregularidadeDAO;

import java.sql.SQLException;
import java.util.List;

public class Irregularidade {

    public static Irregularidade obterTodasIrregularidades(long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private Long id;
    private String autor;
    private String descricao;
    private Long idEspaco;

    public Irregularidade() {
    }

    public Irregularidade(Long id, String autor, String descricao, Long idEspaco) {
        this.id = id;
        this.autor = autor;
        this.descricao = descricao;
        this.idEspaco = idEspaco;
    }

  

    public void gravar() throws SQLException, ClassNotFoundException {
        IrregularidadeDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException {
        IrregularidadeDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        IrregularidadeDAO.excluir(this);
    }

    public Irregularidade obterIrregularidade(Long id) throws SQLException, ClassNotFoundException {
        return IrregularidadeDAO.obterIrregularidade((long) id);
    }

    public static List<Irregularidade> obterTodasIrregularidades() throws SQLException, ClassNotFoundException {
        return IrregularidadeDAO.obterTodasIrregularidades();
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
     * @return the autor
     */
    public String getAutor() {
        return autor;
    }

    /**
     * @param autor the autor to set
     */
    public void setAutor(String autor) {
        this.autor = autor;
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

    /**
     * @return the idEspaco
     */
    public Long getIdEspaco() {
        return idEspaco;
    }

    /**
     * @param idEspaco the idEspaco to set
     */
    public void setIdEspaco(Long idEspaco) {
        this.idEspaco = idEspaco;
    }

}
