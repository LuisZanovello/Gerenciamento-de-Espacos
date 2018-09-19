package model;

public class Reserva {
    private Long id;
    private String dataLocacao;
    private String horaInicioLocacao;
    private String horaFimLocacao;
    private Long qtPessoas;
    private Float valorLocacao;
    private Integer NotaAvaliacao;

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

    public Float getValorLocacao() {

        return valorLocacao;
    }

    public void setValorLocacao(Float valorLocacao) {
        this.valorLocacao = valorLocacao;
    }

    public int getNotaAvaliacao() {

        return NotaAvaliacao;
    }

    public void setNotaAvaliacao(int notaAvaliacao) {
        NotaAvaliacao = notaAvaliacao;
    }

    public Long getId() {
        return id;
    }
}
