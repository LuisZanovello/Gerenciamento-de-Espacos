package model;

public class Reserva {
    private Long id;
    private String dataLocacao;
    private String horaInicioLocacao;
    private String horaFimLocacao;
    private Long qtPessoas;
    private Double valorLocacao;
    private Long notaAvaliacao;

    public Reserva(Long id, String dataLocacao, String horaInicioLocacao, String horaFimLocacao, Long qtPessoas, Double valorLocacao, Long notaAvaliacao) {
        this.id = id;
        this.dataLocacao = dataLocacao;
        this.horaInicioLocacao = horaInicioLocacao;
        this.horaFimLocacao = horaFimLocacao;
        this.qtPessoas = qtPessoas;
        this.valorLocacao = valorLocacao;
        this.notaAvaliacao = notaAvaliacao;
    }
    public Reserva() {
    }

    public Long getQtPessoas() {
        return qtPessoas;
    }

    public void setQtPessoas(Long qtPessoas) {
        this.qtPessoas = qtPessoas;
    }

    public String getDataLocacao() {
        return dataLocacao;
    }

    public void setDataLocacao(String dataLocacao) {
        this.dataLocacao = dataLocacao;
    }

    public String getHoraInicioLocacao() {
        return horaInicioLocacao;
    }

    public void setHoraInicioLocacao(String horaInicioLocacao) {
        this.horaInicioLocacao = horaInicioLocacao;
    }

    public String getHoraFimLocacao() {
        return horaFimLocacao;
    }

    public void setHoraFimLocacao(String horaFimLocacao) {
        this.horaFimLocacao = horaFimLocacao;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getValorLocacao() {
        return valorLocacao;
    }

    public void setValorLocacao(Double valorLocacao) {
        this.valorLocacao = valorLocacao;
    }

    public Long getNotaAvaliacao() {
        return notaAvaliacao;
    }

    public void setNotaAvaliacao(Long notaAvaliacao) {
        this.notaAvaliacao = notaAvaliacao;
    }

    public void setIdCliente(long cliente_id) {
    }
}
