package model;


import dao.PagamentoDAO;

import java.sql.SQLException;
import java.util.List;


public class Pagamento {    //antiga classe Boleto

    private Long id;
    private String vencimento;
    private Long numeroCodBarras;
    private Double valorTotal;
    private Long idReserva;
    private Reserva reserva;

    public Pagamento(long id, String vencimento, Long numeroCodBarras, double valorTotal, long idReserva) {
        this.id = id;
        this.vencimento = vencimento;
        this.numeroCodBarras = numeroCodBarras;
        this.valorTotal = valorTotal;
        this.idReserva = idReserva;
    }

    /*Contrutor PagamentoDAO*/

    

    public void gravar() throws SQLException, ClassNotFoundException{
        PagamentoDAO.gravar(this);
    }


    public void alterar() throws SQLException, ClassNotFoundException{
        PagamentoDAO.alterar(this);
    }


    public void excluir() throws SQLException, ClassNotFoundException{
        PagamentoDAO.excluir(this);
    }


    public static Pagamento obterPagamento(Long id) throws SQLException, ClassNotFoundException{

        return PagamentoDAO.obterPagamento((long)id);
    }

    public static List<Pagamento> obterTodosPagamentos() throws SQLException, ClassNotFoundException{
        return PagamentoDAO.obterTodosPagamentos();
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
     * @return the vencimento
     */
    public String getVencimento() {
        return vencimento;
    }

    /**
     * @param vencimento the vencimento to set
     */
    public void setVencimento(String vencimento) {
        this.vencimento = vencimento;
    }

    /**
     * @return the numeroCodBarras
     */
    public Long getNumeroCodBarras() {
        return numeroCodBarras;
    }

    /**
     * @param numeroCodBarras the numeroCodBarras to set
     */
    public void setNumeroCodBarras(Long numeroCodBarras) {
        this.numeroCodBarras = numeroCodBarras;
    }

    /**
     * @return the valorTotal
     */
    public Double getValorTotal() {
        return valorTotal;
    }

    /**
     * @param valorTotal the valorTotal to set
     */
    public void setValorTotal(Double valorTotal) {
        this.valorTotal = valorTotal;
    }

    /**
     * @return the idReserva
     */
    public Long getIdReserva() {
        return idReserva;
    }

    /**
     * @param idReserva the idReserva to set
     */
    public void setIdReserva(Long idReserva) {
        this.idReserva = idReserva;
    }

    /**
     * @return the reserva
     */
    public Reserva getReserva() {
        return reserva;
    }

    /**
     * @param reserva the reserva to set
     */
    public void setReserva(Reserva reserva) {
        this.reserva = reserva;
    }
    
    
}
