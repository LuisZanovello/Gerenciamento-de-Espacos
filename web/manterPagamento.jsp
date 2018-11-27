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
        
        
            <!-- INICIO JavaScript para o formulario-->

        <script language="javascript" type="text/javascript">
            function validar() {
                var txtCodPagamento = form1.txtCodPagamento.value;
                var txtVencimentoPagamento = form1.txtVencimentoPagamento.value;
                var txtCodBarrasPagamento = form1.txtCodBarrasPagamento.value;
                var txtValorTotalPagamento = form1.txtValorTotalPagamento.value;
                var optReserva = form1.optReserva.value;
       
        
            




                

                if (txtCodPagamento === "") {
                    alert('Preencha o campo com um código, não permita que seja vazio');
                    form1.txtCodPagamento.focus();
                    return false;
                }

                if (txtCodPagamento >= 9999999999) {
                    alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
                    form1.txtCodPagamento.focus();
                    return false;
                }

                if (txtCodPagamento <= 0) {
                    alert('Preencha o campo com um código ACIMA de número NEGATIVO');
                    form1.txtCodPagamento.focus();
                    return false;
                }

                if (txtVencimentoPagamento === "") {
                    alert('Preencha o campo "Vencimento"');
                    form1.txtVencimentoPagamento.focus();
                    return false;
                }
                if (txtCodBarrasPagamento === "") {
                    alert('Preencha o campo "Cod Barras"');
                    form1.txtCodBarrasPagamento.focus();
                    return false;
                }

                if (txtValorTotalPagamento === "") {
                    alert('Preencha o campo "Valor de pagamento"');
                    form1.txtValorTotalPagamento.focus();
                    return false;
                }


                if (optReserva === "") {
                    alert('Preencha o campo "Local Reservado"');
                    form1.optReserva.focus();
                    return false;
                }



            }
        </script>

        <!-- FIM JavaScript para o formulario-->

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Pagamento - ${operacao}</title>
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
                    <h1 class="text-center"> Pagamento - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>

            <form name="form1" action="ManterPagamentoController?acao=confirmarOperacao&operacao=${operacao}" method="post">

                <!-- INICIO TABELA-->


                <div class="col-lg-8">
                    <table class="table table-striped">

                        <tbody>
                        <br>

                        <tr>                            
                            <td>Codigo do Pagamento: </td>
                            <td><input type="number" class="form-control" placeholder="Digite apenas números" name="txtCodPagamento" value="${pagamento.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>> </td>
                            </tr>
                            <tr>
                                <td>Vencimento: </td>
                                <td><input type="date" class="form-control" placeholder="00/00/0000" name="txtVencimentoPagamento" value="${pagamento.vencimento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>      
                            <tr>  
                                <td>Codigo de Barras: </td>
                                <td><input type="number" class="form-control" placeholder="Digite apenas números"name="txtCodBarrasPagamento" value="${pagamento.numeroCodBarras}"<c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            <tr>
                                <td>Valor Total: </td>
                                <td><input type="number" class="form-control" placeholder="R$ 00" name="txtValorTotalPagamento" value="${pagamento.valorTotal}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            </tr> 

                            <tr>
                                <td>ID Reserva:</td>


                                <td>
                                    <select class="form-control" name="optReserva" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                                        <option>Selecione uma opção</option>
                                    <c:forEach items="${reservas}" var="reserva">
                                        <option value="${reserva.id}" <c:if test="${reserva.id == pagamento.idReserva}"> selected</c:if>>${reserva.id}</option>  
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>

                        </tbody>
                    </table>

                    <br>

                    <input onclick="return validar()"  type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

                    <a href="PesquisaPagamentoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>


                </div>
            </form>
        </div>
<br>
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