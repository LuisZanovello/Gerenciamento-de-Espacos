
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
        <title>Admin Gerencia Espaço - ${operacao}</title>
    </head>

    <body>

        <!-- INICIO Navegador superior-->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">iSport</a> <!-- Nome do site emblema no canto esquerdo superior-->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">


                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Gerenciamento de Espaços</a> <!-- primeiro link direita superior-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="indexAdmin.jsp">Área do Admin</a> <!-- primeiro link direita superior-->
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- FIM Navegador superior-->

        <br>
        <div class="col">
            <div>
                <h1 class="text-center"> Espaço - ${operacao} </h1> <hr>  <br><br>

            </div>
        </div>      

        <form action="ManterAdminEspacoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterAdminEspaco">


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
                        <td><input type="text" name="txtIdEspaco"size="60" value="${espaco.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Espaço</td>
                            <td><input type="text" name="txtNome" size="60" value="${espaco.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>CNPJ</td>
                            <td><input type="text" name="txtCnpj" size="60" value="${espaco.cnpj}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Cep</td>
                            <td><input type="text" name="txtCep" size="60" value="${espaco.cep}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Logradouro</td>
                            <td><input type="text" name="txtLogradouro" size="60" value="${espaco.logradouro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Numero</td>
                            <td><input type="text" name="txtNumero" size="60" value="${espaco.numero}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Complemento</td>
                            <td><input type="text" name="txtComplemento" size="60" value="${espaco.complemento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Bairro</td>
                            <td><input type="text" name="txtBairro" size="60" value="${espaco.bairro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Cidade</td>
                            <td><input type="text" name="txtCidade" size="60" value="${espaco.cidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Uf</td>
                            <td><input type="text" name="txtUf" size="60" value="${espaco.uf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Area</td>
                            <td><input type="text" name="txtArea" size="60" value="${espaco.area}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Quantidade  de pessoas</td>
                            <td><input type="text" name="txtQuantidadePessoas" size="60" value="${espaco.quantidadePessoas}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Horario de funcionamento - Inicio</td>
                            <td><input type="text" name="txtHoraFuncionamentoInicio" size="60" value="${espaco.horaFuncionamentoInicio}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Horario de funcionamento - Fim</td>
                            <td><input type="text" name="txtHoraFuncionamentoFinal" size="60" value="${espaco.horaFuncionamentoFinal}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>

                        </tbody>
                    </table>

                    <td>Tipo Espaco:</td>
                    <td>
                        <select name="optTipoEspaco" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                        <c:forEach items="${tiposEspacos}" var="tipoEspaco">
                            <option value="${tipoEspaco.id}" <c:if test="${tipoEspaco.id == espaco.idTipoEspaco}"> selected</c:if>>${tipoEspaco.nome}</option>  
                        </c:forEach>
                    </select>
                </td>
                </tr>
              
                
                
                <br><br>
                <input type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">
                </form>
                <a href="PesquisaAdminEspacoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>

            </div>        


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
