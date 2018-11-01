package main;

import dao.CartaoDAO;
import model.Cartao;

import java.sql.SQLException;


public class MainCartao {

    public static void main (String[] args) throws SQLException, ClassNotFoundException {

        Cartao cartao = new Cartao (12L,"bbbbb", "18/08/2004", (long)2, "123", 123L);

        //CartaoDAO.gravar(cartao); //FUNCIONANDO
        CartaoDAO.alterar(cartao);
        //CartaoDAO.excluir(cartao); //FUNCIONANDO
        //System.out.println(CartaoDAO.obterCartao((long)1).getBandeira());
        //System.out.println(CartaoDAO.obterTodosCartoes().get(0).getBandeira()); //FUNCIONANDO

        /*System.out.println( "Bandeira: "            + cartao.getBandeira() +
                "/n validade: "            + cartao.getValidade() +
                "/n numero do cartão: "    + cartao.getNumeroCartao()+
                "/n codigo de segurança: " + cartao.getCodigoSeguranca()
        );*/





    }
}
