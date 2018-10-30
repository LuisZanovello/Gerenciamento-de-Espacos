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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Long getIdPagamento() {
        return idPagamento;
    }

    public void setIdPagamento(Long idPagamento) {
        this.idPagamento = idPagamento;
    }

    public Pagamento getPagamento() {
        return pagamento;
    }

    public void setPagamento(Pagamento pagamento) {
        this.pagamento = pagamento;
    }

}
