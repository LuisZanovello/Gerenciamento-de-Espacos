package model;


import dao.PagamentoDAO;
import lombok.Data;

import java.sql.SQLException;
import java.util.List;

@Data

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
    public Pagamento(long id, String vencimento, Long num_cod_barras, double valor_total) {
        this.id = id;
        this.vencimento = vencimento;
        this.numeroCodBarras = numeroCodBarras;
        this.valorTotal = valorTotal;
    }

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
}
