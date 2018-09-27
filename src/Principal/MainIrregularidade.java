package Principal;

import model.Irregularidade;

public class MainIrregularidade {
    public static void main(String[] args) {
        Irregularidade irregularidade = new Irregularidade((long)123,"luis","iiiii");

        System.out.println(irregularidade.getAutor());
    }
}
