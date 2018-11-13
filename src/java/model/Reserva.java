package model;

import dao.ReservaDAO;

import java.sql.SQLException;
import java.util.List;

public class Reserva {
    private Long id;
    private String dataLocacao;
    private String horaInicioLocacao;
    private String horaFimLocacao;
    private Long qtPessoas;
    private Double valorLocacao;
    private Long notaAvaliacao;
    private Long idCliente;
    private Cliente cliente;
    private Long idEspaco;
    private Espaco espaco;

    /* Construtor da controller Reserva*/
    public Reserva(long id, String dataLocacao, String horaInicioLocacao, String horaFimLocacao,
                   long qtPessoas, double valorLocacao, long notaAvaliacao, long idEspaco, long idCliente) {
        this.id = id;
        this.dataLocacao = dataLocacao;
        this.horaInicioLocacao = horaInicioLocacao;
        this.horaFimLocacao = horaFimLocacao;
        this.qtPessoas = qtPessoas;
        this.valorLocacao = valorLocacao;
        this.notaAvaliacao = notaAvaliacao;
        this.idEspaco = idEspaco;
        this.idCliente = idCliente;
    }

    /*Construtor DAO*/
    public Reserva(Long id, String dataLocacao, String horaInicioLocacao, String horaFimLocacao,
                   Long qtPessoas, Double valorLocacao, Long notaAvaliacao) {
        this.id = id;
        this.dataLocacao = dataLocacao;
        this.horaInicioLocacao = horaInicioLocacao;
        this.horaFimLocacao = horaFimLocacao;
        this.qtPessoas = qtPessoas;
        this.valorLocacao = valorLocacao;
        this.notaAvaliacao = notaAvaliacao;

    }
    
    public Reserva(Long id, String dataLocacao, String horaInicioLocacao, String horaFimLocacao) {
        this.id = id;
        this.dataLocacao = dataLocacao;
        this.horaInicioLocacao = horaInicioLocacao;
        this.horaFimLocacao = horaFimLocacao;
    }

    public Reserva() {
    }
    
    

    public void gravar() throws SQLException, ClassNotFoundException{
        ReservaDAO.gravar(this);
    }


    public void alterar() throws SQLException, ClassNotFoundException{
        ReservaDAO.alterar(this);
    }


    public void excluir() throws SQLException, ClassNotFoundException{
        ReservaDAO.excluir(this);
    }


    public static Reserva obterReserva(Long id) throws SQLException, ClassNotFoundException{

        return ReservaDAO.obterReserva((long)id);
    }

    public static List<Reserva> obterTodasReservas() throws SQLException, ClassNotFoundException{
        return ReservaDAO.obterTodasReservas();
    }

    /**
     * @return the id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return the dataLocacao
     */
    public String getDataLocacao() {
        return dataLocacao;
    }

    /**
     * @param dataLocacao the dataLocacao to set
     */
    public void setDataLocacao(String dataLocacao) {
        this.dataLocacao = dataLocacao;
    }

    /**
     * @return the horaInicioLocacao
     */
    public String getHoraInicioLocacao() {
        return horaInicioLocacao;
    }

    /**
     * @param horaInicioLocacao the horaInicioLocacao to set
     */
    public void setHoraInicioLocacao(String horaInicioLocacao) {
        this.horaInicioLocacao = horaInicioLocacao;
    }

    /**
     * @return the horaFimLocacao
     */
    public String getHoraFimLocacao() {
        return horaFimLocacao;
    }

    /**
     * @param horaFimLocacao the horaFimLocacao to set
     */
    public void setHoraFimLocacao(String horaFimLocacao) {
        this.horaFimLocacao = horaFimLocacao;
    }

    /**
     * @return the qtPessoas
     */
    public Long getQtPessoas() {
        return qtPessoas;
    }

    /**
     * @param qtPessoas the qtPessoas to set
     */
    public void setQtPessoas(Long qtPessoas) {
        this.qtPessoas = qtPessoas;
    }

    /**
     * @return the valorLocacao
     */
    public Double getValorLocacao() {
        return valorLocacao;
    }

    /**
     * @param valorLocacao the valorLocacao to set
     */
    public void setValorLocacao(Double valorLocacao) {
        this.valorLocacao = valorLocacao;
    }

    /**
     * @return the notaAvaliacao
     */
    public Long getNotaAvaliacao() {
        return notaAvaliacao;
    }

    /**
     * @param notaAvaliacao the notaAvaliacao to set
     */
    public void setNotaAvaliacao(Long notaAvaliacao) {
        this.notaAvaliacao = notaAvaliacao;
    }

    /**
     * @return the idCliente
     */
    public Long getIdCliente() {
        return idCliente;
    }

    /**
     * @param idCliente the idCliente to set
     */
    public void setIdCliente(Long idCliente) {
        this.idCliente = idCliente;
    }

    /**
     * @return the cliente
     */
    public Cliente getCliente() {
        return cliente;
    }

    /**
     * @param cliente the cliente to set
     */
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    /**
     * @return the idEspaco
     */
    public Long getIdEspaco() {
        return idEspaco;
    }

    /**
     * @param idEspaco the idEspaco to set
     */
    public void setIdEspaco(Long idEspaco) {
        this.idEspaco = idEspaco;
    }

    /**
     * @return the espaco
     */
    public Espaco getEspaco() {
        return espaco;
    }

    /**
     * @param espaco the espaco to set
     */
    public void setEspaco(Espaco espaco) {
        this.espaco = espaco;
    }
    
    
}
