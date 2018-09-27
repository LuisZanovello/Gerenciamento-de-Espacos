package principal;

import dao.CartaoDAO;
import model.Cartao;

import java.sql.SQLException;


public class PrincipalCartao{

    public static void main (String[] args) throws SQLException, ClassNotFoundException {

        Cartao cartao = new Cartao ((long)1,"visa", "18/08/1994", (long)2, 123);

        CartaoDAO.gravar(cartao);


        /*System.out.println( "Bandeira: "            + cartao.getBandeira() +
                "/n validade: "            + cartao.getValidade() +
                "/n numero do cartão: "    + cartao.getNumeroCartao()+
                "/n codigo de segurança: " + cartao.getCodigoSeguranca()
        );*/





    }
}
