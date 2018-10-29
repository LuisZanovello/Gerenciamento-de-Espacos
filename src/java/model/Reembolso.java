package model;

import dao.ReembolsoDAO;

import java.sql.SQLException;
import java.util.List;

public class Reembolso {

    private Long id;
    private String estado;
    private Long idPagamento;
    private Pagamento pagamento;

    public Reembolso(Long id, String estado, Long idPagamento, Pagamento pagamento) {
        this.id = id;
        this.estado = estado;
        this.idPagamento = idPagamento;
        this.pagamento = pagamento;
    }

/*Construtor da controller Reembolso*/
    public Reembolso(long id, String estado, long idPagamento) {
        this.id = id;
        this.estado = estado;
        this.idPagamento = idPagamento;
    }

    /*Construtor ReembolsoDAO */
        public Reembolso(long id, String estado) {
                this.id = id;
                this.estado = estado;
    }

    public Reembolso() {
    }

        

    public void gravar() throws SQLException, ClassNotFoundException{
        ReembolsoDAO.gravar(this);
    }


    public void alterar() throws SQLException, ClassNotFoundException{
        ReembolsoDAO.alterar(this);
    }


    public void excluir() throws SQLException, ClassNotFoundException{
        ReembolsoDAO.excluir(this);
    }


    public static Reembolso obterReembolso(Long id) throws SQLException, ClassNotFoundException{

        return ReembolsoDAO.obterReembolso((long)id);
    }

    public static List<Reembolso> obterTodosReembolsos() throws SQLException, ClassNotFoundException{
        return ReembolsoDAO.obterTodosReembolsos();
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
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the idPagamento
     */
    public Long getIdPagamento() {
        return idPagamento;
    }

    /**
     * @param idPagamento the idPagamento to set
     */
    public void setIdPagamento(Long idPagamento) {
        this.idPagamento = idPagamento;
    }

    /**
     * @return the pagamento
     */
    public Pagamento getPagamento() {
        return pagamento;
    }

    /**
     * @param pagamento the pagamento to set
     */
    public void setPagamento(Pagamento pagamento) {
        this.pagamento = pagamento;
    }
    
    
}
