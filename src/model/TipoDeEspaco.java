package model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@Accessors(chain = true)
public class TipoDeEspaco {
    private Long id;
    private String nome;
    private Long modalidadePredominanteId;

    public TipoDeEspaco(Long id, String nome, Long modalidadeId) {
        this.setId(id).setNome(nome).setModalidadePredominanteId(modalidadeId);
    }
}
