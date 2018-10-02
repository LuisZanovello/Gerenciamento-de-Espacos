package model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@Accessors(chain = true)
public class Irregularidade {
    private Long id;
    private String autor;
    private String descricao;
    private Long idEspaco;

    public Irregularidade(Long id, String autor, String descricao, Long idEspaco) {
        this.setId(id).setAutor(autor).setDescricao(descricao).setIdEspaco(idEspaco);
    }
}