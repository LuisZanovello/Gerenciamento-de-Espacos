package model;

import dao.ContatoDAO;


import java.sql.SQLException;
import java.util.List;


public class Contato {
    private Long id;
    private String numero;
    private Long idCliente;
    private Cliente cliente;

    public Contato(long id, String numero, long idCliente) {
        this.id = id;
        this.numero = numero;
        this.idCliente = idCliente;
    }

    public Long getIdCliente() {
        return idCliente;
    }

    public Contato setIdCliente(Long idCliente) {
        this.idCliente = idCliente;
        return this;
    }

    public Contato(long id, String numero) {
        this.id = id;
        this.numero = numero;
    }


    public Cliente getCliente() {
        return cliente;
    }

    public Contato setCliente(Cliente cliente) {
        this.cliente = cliente;
        return this;
    }


    public void gravar() throws SQLException, ClassNotFoundException {
        ContatoDAO.gravar(this);
    }
    public void alterar() throws SQLException, ClassNotFoundException {
        ContatoDAO.alterar(this);
    }
    public void excluir() throws SQLException, ClassNotFoundException {
        ContatoDAO.excluir(this);
    }
    public Contato obterContato(Long id) throws SQLException, ClassNotFoundException {
        return  ContatoDAO.obterContato((long)id);
    }
    public static List<Contato> obterTodosEspacos() throws  SQLException, ClassNotFoundException {
        return  ContatoDAO.obterTodosOsContatos();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }
    
}
