package model;

import dao.ReembolsoDAO;
import lombok.Data;

import java.sql.SQLException;
import java.util.List;

@Data
public class Reembolso {

    private Long id;
    private String estado;
    private Long idPagamento;
    private Pagamento pagamento;

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
}
