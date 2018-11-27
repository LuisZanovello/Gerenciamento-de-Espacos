
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- Bootstrap core CSS -->

        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/modern-business.css" rel="stylesheet">



        <!-- Adicionando JQuery -->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"
                integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous"></script>

        <!-- Adicionando Javascript -->
        <script type="text/javascript" >

            $(document).ready(function () {

                function limpa_formulário_cep() {
                    // Limpa valores do formulário de cep.
                    $("#rua").val("");
                    $("#bairro").val("");
                    $("#cidade").val("");
                    $("#uf").val("");
                    $("#ibge").val("");
                }

                //Quando o campo cep perde o foco.
                $("#cep").blur(function () {

                    //Nova variável "cep" somente com dígitos.
                    var cep = $(this).val().replace(/\D/g, '');

                    //Verifica se campo cep possui valor informado.
                    if (cep != "") {

                        //Expressão regular para validar o CEP.
                        var validacep = /^[0-9]{8}$/;

                        //Valida o formato do CEP.
                        if (validacep.test(cep)) {

                            //Preenche os campos com "..." enquanto consulta webservice.
                            $("#rua").val("...");
                            $("#bairro").val("...");
                            $("#cidade").val("...");
                            $("#uf").val("...");
                            $("#ibge").val("...");

                            //Consulta o webservice viacep.com.br/
                            $.getJSON("https://viacep.com.br/ws/" + cep + "/json/?callback=?", function (dados) {

                                if (!("erro" in dados)) {
                                    //Atualiza os campos com os valores da consulta.
                                    $("#rua").val(dados.logradouro);
                                    $("#bairro").val(dados.bairro);
                                    $("#cidade").val(dados.localidade);
                                    $("#uf").val(dados.uf);
                                    $("#ibge").val(dados.ibge);
                                } //end if.
                                else {
                                    //CEP pesquisado não foi encontrado.
                                    limpa_formulário_cep();
                                    alert("CEP não encontrado.");
                                }
                            });
                        } //end if.
                        else {
                            //cep é inválido.
                            limpa_formulário_cep();
                            alert("Formato de CEP inválido.");
                        }
                    } //end if.
                    else {
                        //cep sem valor, limpa formulário.
                        limpa_formulário_cep();
                    }
                });
            });


        </script>

        <!-- INICIO JavaScript para o formulario-->

        <script language="javascript" type="text/javascript">
            function validar() {
                var txtIdEspaco = form1.txtIdEspaco.value;
                var txtNome = form1.txtNome.value;
                var txtCep = form1.txtCep.value;
                var txtLogradouro = form1.txtLogradouro.value;
                var txtNumero = form1.txtNumero.value;
                var txtCnpj = form1.txtCnpj.value;
                var txtBairro = form1.txtBairro.value;
                var txtUf = form1.txtUf.value;
                var txtCidade = form1.txtCidade.value;
                var txtArea = form1.txtArea.value;
                var txtHoraFuncionamentoInicio = form1.txtHoraFuncionamentoInicio.value;
                var txtHoraFuncionamentoFinal = form1.txtHoraFuncionamentoFinal.value;
                var txtQuantidadePessoas = form1.txtQuantidadePessoas.value;
                var txtComplemento = form1.txtComplemento.value;




                if (txtIdEspaco === "") {
                    alert('Preencha o campo com um código, não permita que seja vazio');
                    form1.txtIdEspaco.focus();
                    return false;
                }
                if (txtIdEspaco <= 0) {
                    alert('Preencha o campo com um código ACIMA de número NEGATIVO');
                    form1.txtIdEspaco.focus();
                    return false;
                }
                    if (txtIdEspaco >= 9999999999) {
                    alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
                    form1.txtIdEspaco.focus();
                    return false;
                }
                
                if (txtNome === "") {
                    alert('Preencha o campo "Nome", não o deixe em branco');
                    form1.txtNome.focus();
                    return false;
                }


                if (txtCep === "") {
                    alert('Preencha o campo do "Cep", não o deixe em branco');
                    form1.txtCep.focus();
                    return false;
                }




                if (txtLogradouro === "") {
                    alert('Preencha o campo "Logradouro", não o deixe em branco');
                    form1.txtLogradouro.focus();
                    return false;
                }

                if (txtNumero === "") {
                    alert('Preencha o campo "Nº residencial", não o deixe em branco');
                    form1.txtNumero.focus();
                    return false;
                }

                if (txtCnpj === "") {
                    alert('Preencha o campo "CNPJ", não o deixe em branco');
                    form1.txtCnpj.focus();
                    return false;
                }

                if (txtBairro === "") {
                    alert('Preencha o campo "Bairro", não o deixe em branco');
                    form1.txtBairro.focus();
                    return false;
                }
                if (txtUf === "") {
                    alert('Preencha o campo "UF", não o deixe em branco');
                    form1.txtUf.focus();
                    return false;
                }

                if (txtCidade === "") {
                    alert('Preencha o campo "Cidade", não o deixe em branco');
                    form1.txtCidade.focus();
                    return false;
                }




                if (txtArea === "") {
                    alert('Preencha o campo "Área" , não o deixe em branco');
                    form1.txtArea.focus();
                    return false;
                }

                if (txtHoraFuncionamentoInicio === "") {
                    alert('Preencha o campo "Inicio de Funcionamento", não o deixe em branco');
                    form1.txtHoraFuncionamentoInicio.focus();
                    return false;
                }
                if (txtHoraFuncionamentoFinal === "") {
                    alert('Preencha o campo "Fim  de Funcionamento", não o deixe em branco');
                    form1.txtHoraFuncionamentoFinal.focus();
                    return false;
                }
                if (txtQuantidadePessoas === "") {
                    alert('Preencha o campo "Quantidade de Pessoas", não o deixe em branco');
                    form1.txtQuantidadePessoas.focus();
                    return false;
                }


            }
        </script>

        <!-- FIM JavaScript para o formulario-->


        <style>
            footer{
                bottom: 0;
                position: relative; 
                bottom: 0; 
                left: 0px; 
                right: 0px;
                width: 100%;
                text-align: center;
            }

            /*  FIM TAG PARA BARRAR A SELECT NO EXCLUIR*/
            select[readonly] {
                background: #eee;
                pointer-events: none;
                touch-action: none;
            }
            /*  FIM TAG PARA BARRAR A SELECT NO EXCLUIR*/
        </style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Gerencia Espaço - ${operacao}</title>
    </head>

    <body>
        <!-- INICIO Navegador superior-->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">iSport</a> <!-- Nome do site emblema no canto esquerdo superior-->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">





                    </ul>
                </div>

                <!-- INICIO DROPDOWN-->
                <div>

                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" 
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Classes
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" 
                                 aria-labelledby="navbarDropdownPortfolio">

                                <a class="dropdown-item" href="PesquisaClienteController">Cliente</a>                                
                                <a class="dropdown-item" href="indexContato.jsp">Contato</a>
                                <a class="dropdown-item" href="PesquisaCartaoController">Cartão</a>
                                <a class="dropdown-item" href="PesquisaDisponibilidadeController">Disponibilidade</a>

                                <a class="dropdown-item" href="PesquisaEspacoController">Espaços</a>
                                <a class="dropdown-item" href="PesquisaTipoEspacoController">Tipo de Espaço</a>
                                <a class="dropdown-item" href="PesquisaModalidadeController">Modalidade</a>
                                <a class="dropdown-item" href="PesquisaIrregularidadeController">Irregularidade</a>


                                <a class="dropdown-item" href="PesquisaReservaController">Reservas</a>
                                <a class="dropdown-item" href="PesquisaPagamentoController">Pagamento</a>
                                <a class="dropdown-item" href="PesquisaReembolsoController">Reembolso</a>
                                <a class="dropdown-item" href="indexAdmin.jsp">Administrador</a>

                            </div>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Sair</a> <!-- primeiro link direita superior-->
                        </li>
                    </ul>
                </div>
                <!-- FIM DROPDOWN-->

            </div>
        </nav>
        <!-- FIM Navegador superior-->

        <br>



        <!--INICIO Div formulario-->

        <div class="container">

            <!--INICIO Div Nome da Pagina-->
            <div class="col">
                <div>
                    <h1 class="text-center"> Admin ${operacao} - Espaço  </h1> <hr>  <br><br>

                </div>
            </div>
            <!--FIM Div Nome da Pagina-->

            <form name="form1"action="ManterAdminEspacoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterEspaco">


                <!--Inicio Tabela-->

                <div class="col-lg-12">
                    <table class="table table-striped">

                        <tbody>
                        <br>

                     <tr>
                            <td>Codigo Espaco</td>
                            <td><input type="number"min="1"placeholder="Digite apenas numeros" class="form-control"  name="txtIdEspaco"  value="${espaco.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Nome do Espaço</td>
                                <td><input type="text" maxlength="45" placeholder="Nome do Local" class="form-control"  name="txtNome"value="${espaco.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>CNPJ</td>
                                <td><input type="text" maxlength="15" placeholder="00.000.000/0000-00"class="form-control" name="txtCnpj"  value="${espaco.cnpj}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Cep</td>
                                <td><input type="number" placeholder="00000-000" id="cep" class="form-control"  name="txtCep"  value="${espaco.cep}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Logradouro</td>
                                <td><input type="text" id="rua"  placeholder="Endereço local" maxlength="45" class="form-control" name="txtLogradouro"  value="${espaco.logradouro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>                     
                                <td>Numero</td>
                                <td><input type="number"   placeholder="Nº do local" class="form-control" name="txtNumero" value="${espaco.numero}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Complemento</td>
                                <td><input type="text" placeholder="Complemento"  maxlength="45" class="form-control" name="txtComplemento"  value="${espaco.complemento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Bairro</td>
                                <td><input type="text" placeholder="Bairro"  id="bairro" maxlength="45" size="60" class="form-control" name="txtBairro" value="${espaco.bairro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Cidade</td>
                                <td><input type="text" placeholder="Cidade"  id="cidade" maxlength="45" class="form-control" name="txtCidade" value="${espaco.cidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Uf</td>
                                <td><input type="text" placeholder="Estado"   id="uf" maxlength="2"class="form-control" name="txtUf"  value="${espaco.uf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Area</td>
                                <td><input type="number" placeholder="M²(mestro quadrado)"  class="form-control"  name="txtArea" size="60" value="${espaco.area}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Quantidade  de pessoas</td>
                                <td><input type="number"  placeholder="Quantidade de pessoas suportadas"  class="form-control" name="txtQuantidadePessoas" size="60" value="${espaco.quantidadePessoas}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Horario de funcionamento - Inicio</td>
                                <td><input type="time" placeholder=""  class="form-control"  name="txtHoraFuncionamentoInicio" size="60" value="${espaco.horaFuncionamentoInicio}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Horario de funcionamento - Fim</td>
                                <td><input type="time"  placeholder="" class="form-control" name="txtHoraFuncionamentoFinal" value="${espaco.horaFuncionamentoFinal}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>



                            <td>Tipo Espaco:</td>
                            <td>
                                <select class="form-control" name="optTipoEspaco" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>

                                <c:forEach items="${tiposEspacos}" var="tipoEspaco">
                                    <option value="${tipoEspaco.id}" <c:if test="${tipoEspaco.id == espaco.idTipoEspaco}"> disabled</c:if>>${tipoEspaco.nome}</option>  
                                </c:forEach>
                            </select>
                        </td>
                        </tbody>


                    </table>
                    <br><br>
                    <input type="submit" onclick="return validar()" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

                    <a href="PesquisaAdminEspacoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>

                </div>
            </form>
        </div>

        <!--FIM Div formulario-->




        <hr>
        <!-- Footer -->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">LP2 - professor Marco Antonio &copy; Gerenciamento de Espaços 2018</p> 
                <p class="m-0 text-center text-gray"> Izabella R. - Luis G. - Victor W. </p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
