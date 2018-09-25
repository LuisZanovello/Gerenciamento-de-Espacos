package Principal;

import dao.EnderecoDAO;
import model.Endereco;

public class MainEndereco {

    public static void main(String[] args) {
        Endereco endereco = new Endereco("rua x","jf","morro da gloria","36035180","mg");


        System.out.println("rua:",endereco.getLogradouro());
    }
}
