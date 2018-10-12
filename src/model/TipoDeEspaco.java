package model;

import dao.TipoDeEspacoDAO;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.sql.SQLException;
import java.util.List;

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
    public void gravar() throws SQLException, ClassNotFoundException {
        TipoDeEspacoDAO.gravar(this);
    }
    public void alterar() throws SQLException, ClassNotFoundException {
        TipoDeEspacoDAO.alterar(this);
    }
    public void excluir() throws SQLException, ClassNotFoundException {
        TipoDeEspacoDAO.excluir(this);
    }
    public TipoDeEspaco obterTipoEspaco(Long id) throws SQLException, ClassNotFoundException {
        return TipoDeEspacoDAO.obterTipoEspaco((long)id);
    }
    public static List<TipoDeEspaco> obterTodosOsTiposEspacos() throws  SQLException, ClassNotFoundException {
        return TipoDeEspacoDAO.obterTodosEspacos();
    }
}
