package model;

import dao.IrregularidadeDAO;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.sql.SQLException;
import java.util.List;

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
    public void gravar() throws SQLException, ClassNotFoundException {
        IrregularidadeDAO.gravar(this);
    }
    public void alterar() throws SQLException, ClassNotFoundException {
        IrregularidadeDAO.alterar(this);
    }
    public void excluir() throws SQLException, ClassNotFoundException {
        IrregularidadeDAO.excluir(this);
    }
    public Irregularidade obterIrregularidade(Long id) throws SQLException, ClassNotFoundException {
       return IrregularidadeDAO.obterIrregularidade((long)id);
    }
    public static List<Irregularidade> obterTodasIrregularidades() throws  SQLException, ClassNotFoundException {
        return IrregularidadeDAO.obterTodasIrregularidades();
    }
}