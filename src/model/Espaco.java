package model;

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
    TipoDeEspaco tipoEspaco = new TipoDeEspaco();

    public Espaco(long id, String nome, String cnpj, String cep, String logradouro, int numero, String complemento,
                  String bairro, String cidade, String uf, double area, int quantidadePessoas, String horaFuncionamentoInicio,
                  String horaFuncionamentoFinal, long idTipoEspaco) {
        this.id = id;
        this.nome = nome;
        this.cnpj = cnpj;
        this.cep = cep;
        this.logradouro = logradouro;
        this.numero = numero;
        this.complemento = complemento;
        this.bairro = bairro;
        this.cidade = cidade;
        this.uf = uf;
        this.area = area;
        this.quantidadePessoas = quantidadePessoas;
        this.horaFuncionamentoInicio = horaFuncionamentoInicio;
        this.horaFuncionamentoFinal = horaFuncionamentoFinal;
        this.idTipoEspaco = idTipoEspaco;
    }

    public Long getIdTipoEspaco() {
        return idTipoEspaco;
    }

    public Espaco setIdTipoEspaco(Long idTipoEspaco) {
        this.idTipoEspaco = idTipoEspaco;
        return this;
    }

    public TipoDeEspaco getTipoEspaco() {
        return tipoEspaco;
    }

    public Espaco setTipoEspaco(TipoDeEspaco tipoEspaco) {
        this.tipoEspaco = tipoEspaco;
        return this;
    }
/*
    public Espaco(Long id, String nome, String cnpj, String cep, String logradouro, Integer numero, String complemento,
                  String bairro, String cidade, String uf, Double area, Integer quantidadePessoas, String horaFuncionamentoInicio,
                  String horaFuncionamentoFinal, Long idTipoEspaco, TipoDeEspaco tipoEspaco) {
        this.id = id;
        this.nome = nome;
        this.cnpj = cnpj;
        this.cep = cep;
        this.logradouro = logradouro;
        this.numero = numero;
        this.complemento = complemento;
        this.bairro = bairro;
        this.cidade = cidade;
        this.uf = uf;
        this.area = area;
        this.quantidadePessoas = quantidadePessoas;
        this.horaFuncionamentoInicio = horaFuncionamentoInicio;
        this.horaFuncionamentoFinal = horaFuncionamentoFinal;
        this.idTipoEspaco = idTipoEspaco;
        this.tipoEspaco = tipoEspaco;
    }*/

    public Espaco() {
    }

    public Long getId() {
        return id;
    }

    public Espaco setId(Long id) {
        this.id = id;
        return this;
    }

    public String getNome() {
        return nome;
    }

    public Espaco setNome(String nome) {
        this.nome = nome;
        return this;
    }

    public String getCnpj() {
        return cnpj;
    }

    public Espaco setCnpj(String cnpj) {
        this.cnpj = cnpj;
        return this;
    }

    public String getCep() {
        return cep;
    }

    public Espaco setCep(String cep) {
        this.cep = cep;
        return this;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public Espaco setLogradouro(String logradouro) {
        this.logradouro = logradouro;
        return this;
    }

    public Integer getNumero() {
        return numero;
    }

    public Espaco setNumero(Integer numero) {
        this.numero = numero;
        return this;
    }

    public String getComplemento() {
        return complemento;
    }

    public Espaco setComplemento(String complemento) {
        this.complemento = complemento;
        return this;
    }

    public String getBairro() {
        return bairro;
    }

    public Espaco setBairro(String bairro) {
        this.bairro = bairro;
        return this;
    }

    public String getCidade() {
        return cidade;
    }

    public Espaco setCidade(String cidade) {
        this.cidade = cidade;
        return this;
    }

    public String getUf() {
        return uf;
    }

    public Espaco setUf(String uf) {
        this.uf = uf;
        return this;
    }

    public Double getArea() {
        return area;
    }

    public Espaco setArea(Double area) {
        this.area = area;
        return this;
    }

    public Integer getQuantidadePessoas() {
        return quantidadePessoas;
    }

    public Espaco setQuantidadePessoas(Integer quantidadePessoas) {
        this.quantidadePessoas = quantidadePessoas;
        return this;
    }

    public String getHoraFuncionamentoInicio() {
        return horaFuncionamentoInicio;
    }

    public Espaco setHoraFuncionamentoInicio(String horaFuncionamentoInicio) {
        this.horaFuncionamentoInicio = horaFuncionamentoInicio;
        return this;
    }

    public String getHoraFuncionamentoFinal() {
        return horaFuncionamentoFinal;
    }

    public Espaco setHoraFuncionamentoFinal(String horaFuncionamentoFinal) {
        this.horaFuncionamentoFinal = horaFuncionamentoFinal;
        return this;
    }
}
