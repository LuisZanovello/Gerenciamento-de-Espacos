package model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@NoArgsConstructor
@Accessors(chain = true)
public class Espaco {
    private Long id;
    private String nome;
    private String cnpj;
    private String cep;
    private String logradouro;
    private Integer numero;
    private String complemento;
    private String bairro;
    private String cidade;
    private String uf;
    private Double area;
    private Integer quantidadePessoas;
    private String horaFuncionamentoInicio;
    private String horaFuncionamentoFinal;
    private Long idTipoEspaco;

    public Espaco(long id, String nome, String cnpj, String cep, String logradouro, int numero, String complemento,
                  String bairro, String cidade, String uf, double area, int quantidadePessoas, String horaFuncionamentoInicio,
                  String horaFuncionamentoFinal, long idTipoEspaco) {
     this.setId(id).setNome(nome).setCnpj(cnpj).setCep(cep).setLogradouro(logradouro).setNumero(numero)
             .setComplemento(complemento).setBairro(bairro).setCidade(cidade).setUf(uf).setArea(area)
             .setQuantidadePessoas(quantidadePessoas).setHoraFuncionamentoInicio(horaFuncionamentoInicio)
             .setHoraFuncionamentoFinal(horaFuncionamentoFinal).setIdTipoEspaco(idTipoEspaco);

    }
}