package Principal;

import model.Cliente;

public class ClienteMain {
    public static void main(String[] args) {
        Cliente cliente = new Cliente("Fulano", "De Tal", "123456", "22/02/1999",
                "fulano@gmail.com");

        System.out.println(cliente.getCpf());
    }
}
