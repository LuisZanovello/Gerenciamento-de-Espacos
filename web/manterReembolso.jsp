<%-- 
    Document   : manterReembolso
    Created on : 26/10/2018, 12:18:31
    Author     : viict
--%>

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
                position:absolute; 
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
        <title>Manter Reembolso - ${operacao}</title>
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
                            <a class="nav-link" href="indexAdmin.jsp">Área do Admin</a> <!-- primeiro link direita superior-->
                        </li>



                    </ul>
                </div>

                <!-- INICIO DROPDOWN-->
                <div>

                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Classes
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">

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
                    <h1 class="text-center"> Reembolso - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>
            <!--FIM Div Nome da Pagina-->

            <form action="ManterReembolsoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterReembolso">

                <!--Inicio Tabela-->

                <div class="col-lg-12">
                    <table class="table table-striped">

                        <tbody>
                        <br>

                        <tr>
                            <td>Codigo do Reembolso</td>
                            <td>    <input type="number" placeholder="Digite apenas números" class="form-control" name="txtCodReembolso" value="${reembolso.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                            </tr>

                            <tr>

                                <td>Status: </td>
                                <td>
                                    <select class="form-control" name="txtNomeReembolso" 
                                            value="${reembolso.estado}" <c:if test="${operacao == 'Excluir'}">disabled</c:if>>
                                    <option>${reembolso.estado}</option> 
                                    <option>Aprovado</option> 
                                    <option>Em Analise</option> 
                                    <option>Recusado</option> 
                                </select>
                            </td>
                        </tr>


                        <!--INICIO Div Chave estrangeira-->

                        <tr>
                            <td>Número do Codigo de Barras:</td>

                            <td>
                                <select class="form-control" name="optPagamento" <c:if test="${operacao == 'Excluir'}"> readonly</c:if><c:if test="${operacao == 'Editar'}"> readonly</c:if>>

                                    <c:forEach items="${pagamentos}" var="pagamento">                                        
                                        <option value="${pagamento.id}" <c:if test="${pagamento.id == reembolso.idPagamento}"> disabled</c:if>>${pagamento.numeroCodBarras}</option>  
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        </tbody>


                    </table>
                    <br><br>

                    <input type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">
                    <a href="PesquisaReembolsoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>
                </div>
            </form>
        </div>
        <!--FIM Div Chave estrangeira-->

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