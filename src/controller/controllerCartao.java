package controller;

import dao.CartaoDAO;
import model.Cartao;

import java.sql.SQLException;


public class controllerCartao {

    public static void main (String[] args) throws SQLException, ClassNotFoundException {

        Cartao cartao = new Cartao ((long)1,"brrrasdr", "18/08/2004", (long)2, 123, (long)123);

        //CartaoDAO.gravar(cartao); FUNCIONANDO
        //CartaoDAO.alterar(cartao);
        //CartaoDAO.excluir(cartao); FUNCIONANDO
        System.out.println(CartaoDAO.obterCartao((long)1).getBandeira());


        /*System.out.println( "Bandeira: "            + cartao.getBandeira() +
                "/n validade: "            + cartao.getValidade() +
                "/n numero do cartão: "    + cartao.getNumeroCartao()+
                "/n codigo de segurança: " + cartao.getCodigoSeguranca()
        );*/





    }
}
