
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

        $(document).ready(function() {

            function limpa_formulário_cep() {
                // Limpa valores do formulário de cep.
                $("#rua").val("");
                $("#bairro").val("");
                $("#cidade").val("");
                $("#uf").val("");
                $("#ibge").val("");
            }
            
            //Quando o campo cep perde o foco.
            $("#cep").blur(function() {

                //Nova variável "cep" somente com dígitos.
                var cep = $(this).val().replace(/\D/g, '');

                //Verifica se campo cep possui valor informado.
                if (cep != "") {

                    //Expressão regular para validar o CEP.
                    var validacep = /^[0-9]{8}$/;

                    //Valida o formato do CEP.
                    if(validacep.test(cep)) {

                        //Preenche os campos com "..." enquanto consulta webservice.
                        $("#rua").val("...");
                        $("#bairro").val("...");
                        $("#cidade").val("...");
                        $("#uf").val("...");
                        $("#ibge").val("...");

                        //Consulta o webservice viacep.com.br/
                        $.getJSON("https://viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {

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
        </style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Gerencia Espaço - ${operacao}</title>
    </head>

    <body>

        <!-- INICIO Navegador superior-->
 <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="indexAdmin.jsp">iSport</a> <!-- Nome do site emblema no canto esquerdo superior-->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">


                        
                     
                            <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Sair</a> <!-- primeiro link direita superior-->
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- FIM Navegador superior-->

        <br>
         <div class="container"><!--Div centralizadora-->
        <div class="col">
            <div>
                <h1 class="text-center"> Espaço - ${operacao} </h1> <hr>  <br><br>

            </div>
        </div>      

        <form action="ManterEspacoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterEspaco">


            <!--Inicio Tabela-->

            <div class="col-lg-7">

                <!--Div centralizadora-->
            </div>
            <div class="col-lg-9">
                <table class="table table-striped">
                    <thead>
                    <tbody>
                     <br>

                    <tr>
                        <td>Codigo Espaco</td>
                        <td><input type="number" placeholder="Digite apenas numeros" class="form-control"  name="txtIdEspaco"size="60" value="${espaco.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Espaço</td>
                            <td><input type="text" placeholder="Nome do Local" class="form-control"  name="txtNome" size="60" value="${espaco.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>CNPJ</td>
                            <td><input type="text"  placeholder="00.000.000/0000-00"class="form-control" name="txtCnpj" size="60" value="${espaco.cnpj}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Cep</td>
                            <td><input type="number" placeholder="00000-000" id="cep" class="form-control"  name="txtCep" size="60" value="${espaco.cep}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Logradouro</td>
                            <td><input type="text" id="rua"  class="form-control" name="txtLogradouro" size="60" value="${espaco.logradouro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Numero</td>
                            <td><input type="number"  class="form-control" name="txtNumero" size="60" value="${espaco.numero}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Complemento</td>
                            <td><input type="text"  class="form-control" name="txtComplemento" size="60" value="${espaco.complemento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Bairro</td>
                            <td><input type="text" id="bairro" class="form-control" name="txtBairro" size="60" value="${espaco.bairro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Cidade</td>
                            <td><input type="text" id="cidade"  class="form-control" name="txtCidade" size="60" value="${espaco.cidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Uf</td>
                            <td><input type="text"  id="uf" class="form-control" name="txtUf" size="60" value="${espaco.uf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Area</td>
                            <td><input type="number" class="form-control"  name="txtArea" size="60" value="${espaco.area}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Quantidade  de pessoas</td>
                            <td><input type="number"  class="form-control" name="txtQuantidadePessoas" size="60" value="${espaco.quantidadePessoas}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Horario de funcionamento - Inicio</td>
                            <td><input type="time" class="form-control"  name="txtHoraFuncionamentoInicio" size="60" value="${espaco.horaFuncionamentoInicio}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Horario de funcionamento - Fim</td>
                            <td><input type="time"  class="form-control" name="txtHoraFuncionamentoFinal" value="${espaco.horaFuncionamentoFinal}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>


                        </tbody>
                    </table>

                    <td>Tipo Espaco:</td>
                    <td>
                        <select class="form-control" name="optTipoEspaco" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                       <option>Selecione uma opção</option>   
                        <c:forEach items="${tiposEspacos}" var="tipoEspaco">
                            <option value="${tipoEspaco.id}" <c:if test="${tipoEspaco.id == espaco.idTipoEspaco}"> selected</c:if>>${tipoEspaco.nome}</option>  
                        </c:forEach>
                    </select>
                </td>
                </tr>
                </table>
                <br><br>
                <input type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">
                </form>
                <a href="PesquisaEspacoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>

            </div>
                        </div> <!--FIM Div centralizadora-->
        
                        


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
