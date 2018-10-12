package model;

import dao.ModalidadePredominanteDAO;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.sql.SQLException;
import java.util.List;

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
    public void gravar() throws SQLException, ClassNotFoundException {
        ModalidadePredominanteDAO.gravar(this);
    }
    public void alterar() throws SQLException, ClassNotFoundException {
        ModalidadePredominanteDAO.alterar(this);
    }
    public void excluir() throws SQLException, ClassNotFoundException {
        ModalidadePredominanteDAO.excluir(this);
    }
    public ModalidadePredominante obterModalidade(Long id) throws SQLException, ClassNotFoundException {
        return ModalidadePredominanteDAO.obterModalidade((long)id);
    }
    public static List<ModalidadePredominante> obterTodasAsModalidadesPredominantes() throws  SQLException, ClassNotFoundException {
        return ModalidadePredominanteDAO.obterTodasModalidade();
    }
}