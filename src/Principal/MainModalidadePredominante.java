package Principal;

import model.ModalidadePredominante;

public class MainModalidadePredominante {

    public static void main(String[] args) {
        ModalidadePredominante modalidade = new ModalidadePredominante((long)123,"aaa","iiii");

        System.out.println(modalidade.getModalidadePredominante());
    }
}
