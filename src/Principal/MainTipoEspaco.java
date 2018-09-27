package Principal;

import model.TipoDeEspaco;

public class MainTipoEspaco {

    public static void main(String[] args) {
        TipoDeEspaco tipoEspaco = new TipoDeEspaco((long)123,"luis");

        System.out.println(tipoEspaco.getNome());
    }
}
