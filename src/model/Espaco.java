package model;

import dao.EspacoDAO;

import java.sql.SQLException;
import java.util.List;

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

    public Espaco() {
    }

    public Espaco(long id, String nome, String cnpj, String cep, String logradouro, int numero, String complemento,
            String bairro, String cidade, String uf, double area, int quantidadePessoas, String horaFuncionamentoInicio,
            String horaFuncionamentoFinal, long idTipoEspaco) {
        this.setId(id);
        this.setNome(nome);
        this.setCnpj(cnpj);
        this.setCep(cep);
        this.setLogradouro(logradouro);
        this.setNumero(numero);
        this.setComplemento(complemento);
        this.setBairro(bairro);
        this.setCidade(cidade);
        this.setUf(uf);
        this.setArea(area);
        this.setQuantidadePessoas(quantidadePessoas);
        this.setHoraFuncionamentoInicio(horaFuncionamentoInicio);
        this.setHoraFuncionamentoFinal(horaFuncionamentoFinal);
        this.setIdTipoEspaco(idTipoEspaco);

    }

    public void gravar() throws SQLException, ClassNotFoundException {
        EspacoDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException {
        EspacoDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        EspacoDAO.excluir(this);
    }

    public Espaco obterEspaco(Long id) throws SQLException, ClassNotFoundException {
        return EspacoDAO.obterEspaco((long) id);
    }

    public static List<Espaco> obterTodosEspacos() throws SQLException, ClassNotFoundException {
        return EspacoDAO.obterTodosEspacos();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public Integer getNumero() {
        return numero;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public Double getArea() {
        return area;
    }

    public void setArea(Double area) {
        this.area = area;
    }

    public Integer getQuantidadePessoas() {
        return quantidadePessoas;
    }

    public void setQuantidadePessoas(Integer quantidadePessoas) {
        this.quantidadePessoas = quantidadePessoas;
    }

    public String getHoraFuncionamentoInicio() {
        return horaFuncionamentoInicio;
    }

    public void setHoraFuncionamentoInicio(String horaFuncionamentoInicio) {
        this.horaFuncionamentoInicio = horaFuncionamentoInicio;
    }

    public String getHoraFuncionamentoFinal() {
        return horaFuncionamentoFinal;
    }

    public void setHoraFuncionamentoFinal(String horaFuncionamentoFinal) {
        this.horaFuncionamentoFinal = horaFuncionamentoFinal;
    }

    public Long getIdTipoEspaco() {
        return idTipoEspaco;
    }

    public void setIdTipoEspaco(Long idTipoEspaco) {
        this.idTipoEspaco = idTipoEspaco;
    }

}
