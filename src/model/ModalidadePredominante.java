package model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@Accessors(chain = true)
public class ModalidadePredominante {
    private Long id;
    private String modalidadePredominante;
    private String descricao;

    public ModalidadePredominante(Long id, String modalidadePredominante, String descricao) {
        this.setId(id).setModalidadePredominante(modalidadePredominante).setDescricao(descricao);
    }
}