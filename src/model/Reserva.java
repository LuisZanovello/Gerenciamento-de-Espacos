package model;

public class Reserva {
    private Long id;
    private String dataLocacao;
    private String horaInicioLocacao;
    private String horaFimLocacao;
    private Long qtPessoas;
    private Double valorLocacao;
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

    public Integer getNotaAvaliacao() {
        return NotaAvaliacao;
    }

    public void setNotaAvaliacao(Integer notaAvaliacao) {
        NotaAvaliacao = notaAvaliacao;
    }
}
