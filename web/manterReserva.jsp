<%-- 
    Document   : manterReserva
    Created on : 23/10/2018, 19:05:14
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

        <title>Manter Reserva - ${operacao} </title>
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



        <div class="container">
            <!--INICIO Div formulario-->

            <div class="col">
                <div>
                    <h1 class="text-center"> Reserva - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>

            <form action="ManterReservaController?acao=confirmarOperacao&operacao=${operacao}" method="post">

                <!-- INICIO TABELA-->


                <div class="col-lg-12">
                    <table class="table table-striped">

                        <tbody>
                        <br>

                        <tr>
                            <td>Codigo da reserva</td>
                            <td><input type="number" class="form-control" placeholder="Digite apenas números" name="txtCodReserva" value="${reserva.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                            <p class="help-block"></p>
                            </tr>

                            <tr>
                                <td>Data da locação:</td>

                                <td><input type="date" class="form-control" placeholder="00/00/0000" name="txtDataLocacao" value="${reserva.dataLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            </tr>


                            <tr>
                                <td>Hora de Início</td>
                                <td><input type="time" placeholder="00:00" type=horai class="form-control" name="txtHrInicio" value="${reserva.horaInicioLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            </tr>


                            <tr>
                                <td>Hora Fim</td>
                                <td><input type="time" class="form-control" id="horaf" placeholder="00:00" name="txtHrFim" value="${reserva.horaFimLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            </tr>

                            <tr>
                                <td>Quantidade Estimada de Pessoas</td>
                                <td>    <input type="number" class="form-control" id="qtpessoas" placeholder="Digite apenas números" name="txtqtPessoas" value="${reserva.qtPessoas}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            </tr>

                            <tr>
                                <td>Preço</td>
                                <td> <input type="number" class="form-control" placeholder="R$ 00.00" name="txtvalorLocacao" value="${reserva.valorLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            </tr>

                            <tr>
                                <td>Avaliação</td>
                                <td> <input  type="number" class="form-control" id="horaf" placeholder="Nota de 1 a 5" name="txtAvaliacao" value="${reserva.notaAvaliacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>> </td>
                            </tr>

                            <td>Nome do Cliente:</td>
                            <td>
                                <select class="form-control" name="optCliente" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                <c:forEach items="${clientes}" var="cliente">
                                    <option value="${cliente.id}" <c:if test="${cliente.id == reserva.idCliente}"> disabled</c:if>>${cliente.nome}</option>  
                                </c:forEach>
                            </select>
                        </td>
                        </tr>

                        <td>Local de Reserva:</td>
                        <td>
                            <select class="form-control" name="optEspaco" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>                                            
                                <c:forEach items="${espacos}" var="espaco">
                                    <option value="${espaco.id}" <c:if test="${espaco.id == reserva.idEspaco}"> disabled</c:if>>${espaco.nome}</option>  
                                </c:forEach>
                            </select>
                        </td>                
                        </tbody>


                    </table>
                    <br>

                    <input type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">
                    <a href="PesquisaReservaController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>


                </div>
            </form>

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