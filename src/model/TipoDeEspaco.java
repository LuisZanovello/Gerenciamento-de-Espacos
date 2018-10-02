package model;

public class TipoDeEspaco {
    private Long id;
    private String nome;
    private Long modalidade_predominante_id;

    public TipoDeEspaco(Long id, String nome, Long modalidade_predominante_id) {
        this.id = id;
        this.nome = nome;
        this.modalidade_predominante_id = modalidade_predominante_id;
    }

    public TipoDeEspaco(){
    }

    public Long getModalidade_predominante_id() {
        return modalidade_predominante_id;
    }

    public TipoDeEspaco setModalidade_predominante_id(Long modalidade_predominante_id) {
        this.modalidade_predominante_id = modalidade_predominante_id;
        return this;
    }

    public Long getId() {
        return id;
    }

    public TipoDeEspaco setId(Long id) {
        this.id = id;
        return this;
    }

    public String getNome() {
        return nome;
    }

    public TipoDeEspaco setNome(String nome) {
        this.nome = nome;
        return this;
    }
}
