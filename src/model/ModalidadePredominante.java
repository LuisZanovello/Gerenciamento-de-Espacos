package model;

public class ModalidadePredominante {
    private Long id;
    private String modalidadePredominante;
    private String descricao;

    public ModalidadePredominante(Long id, String modalidadePredominante, String descricao) {
        this.id = id;
        this.modalidadePredominante = modalidadePredominante;
        this.descricao = descricao;
    }

    public ModalidadePredominante() {
    }

    public Long getId() {
        return id;
    }

    public ModalidadePredominante setId(Long id) {
        this.id = id;
        return this;
    }

    public String getModalidadePredominante() {
        return modalidadePredominante;
    }

    public ModalidadePredominante setModalidadePredominante(String modalidadePredominante) {
        this.modalidadePredominante = modalidadePredominante;
        return this;
    }

    public String getDescricao() {
        return descricao;
    }

    public ModalidadePredominante setDescricao(String descricao) {
        this.descricao = descricao;
        return this;
    }
}
