package Main;

import dao.TipoDeEspacoDAO;
import model.ModalidadePredominante;
import model.TipoDeEspaco;

import java.sql.SQLException;

public class MainTipoEspaco {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        TipoDeEspaco tipo = new TipoDeEspaco((long)1274,"luiis",(long)124);
        TipoDeEspaco tipo1 = new TipoDeEspaco((long)123,"iza0",(long)124);

        // TipoDeEspacoDAO.gravar(tipo);
        // TipoDeEspacoDAO.alterar(tipo);
        // TipoDeEspacoDAO.excluir(tipo);

        // TipoDeEspacoDAO.gravar(tipo1);
        // TipoDeEspacoDAO.alterar(tipo1);
        // TipoDeEspacoDAO.excluir(tipo1);

        // System.out.println(TipoDeEspacoDAO.obterTipoEspaco((long)1274).getNome());
        // System.out.println(TipoDeEspacoDAO.obterTipoEspaco((long)123).getNome());

        System.out.println(TipoDeEspacoDAO.obterTodosEspacos().get(0));
        System.out.println(TipoDeEspacoDAO.obterTodosEspacos().get(1));
    }
}
