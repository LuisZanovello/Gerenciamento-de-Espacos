<%-- 
    Document   : manterPagamento
    Created on : 23/10/2018, 19:27:39
    Author     : viict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Cliente" %>
<%@ page import="model.Reserva" %>
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
        <title>Manter Pagamento - ${operacao}</title>
    </head>
    <body>

        <!-- Parte superior -->
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


                        <li>
                            <input class="form-control" type="text" placeholder="Pesquisa" aria-label="Pesquisa">
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <!--Inicio das migalhas do navegador superior-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.jsp">Inicio</a>
            </li>
            <li class="breadcrumb-item"> 
                <a href="PesquisaPagamentoController">Lista</a>
            </li>
            <li class="breadcrumb-item active">${operacao}</li>
        </ol>
        <!--Fim das migalhas do navegador superior-->


         <br>
        <div class="container">
            <div class="col">
                <div>
                    <h1 class="text-center"> Pagamento - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>


            <form action="ManterPagamentoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterPagamento">

                <div class="row">
                    <div class="col-lg-8 mb-4">

                        <form name="reserva" id="reserva" novalidate>
                            <div class="control-group form-group">
                                <div class="controls1">
                                    <label>Codigo do Pagamento: </label>
                                    <input type="text" class="form-control" placeholder="Digite apenas números" name="txtCodPagamento" value="${pagamento.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>>
                                        <p class="help-block"></p>
                                    </div>
                                </div>

                                <div class="control-group form-group">
                                    <div class="controls1">

                                        <label>Vencimento: </label>
                                        <input type="text" class="form-control" placeholder="00/00/0000" name="txtVencimentoPagamento" value="${pagamento.vencimento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                        <p class="help-block"></p>
                                    </div>
                                </div>


                                <div class="control-group form-group">
                                    <div class="controls1">
                                        <label>Codigo de Barras: </label>
                                        <input type="text" class="form-control" placeholder="Digite apenas números"name="txtCodBarrasPagamento" value="${pagamento.numeroCodBarras}"<c:if test="${operacao == 'Excluir'}">readonly</c:if>>
                                        <p class="help-block"></p>
                                    </div>
                                </div>


                                <div class="control-group form-group">                 
                                    <div class="controls1">
                                        <label>Valor Total: </label>
                                        <input type="text" class="form-control" placeholder="R$ 00" name="txtValorTotalPagamento" value="${pagamento.valorTotal}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>>
                                    </div></div>

                                <div>
                                    <td>ID Reserva:</td>


                                    <div class="form-group">
                                        <select class="form-control" name="optReserva" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                                            <option>Selecione uma opção</option>
                                        <c:forEach items="${reservas}" var="reserva">

                                            <option value="${reserva.id}" <c:if test="${reserva.id == pagamento.idReserva}"> selected</c:if>>${reserva.id}</option>  
                                        </c:forEach>
                                    </select>


                                </div>

                                <br>
                                <div>
                                    <input type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">
                                    </form>
                                    <a href="PesquisaPagamentoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>


                                </div>  
                            </div>
                    </div>
                </div>
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