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

 
        
<!--inicio Header-->
<%@ include file = "Header.jsp" %>
<!--fim Header-->


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

        <!-- INICIO JavaScript para o formulario-->
<script language="javascript"  type="text/javascript" src="js/scriptJSP.js"></script>


        <script language="javascript" type="text/javascript">
            function validar() {
                var txtCodReserva = form1.txtCodReserva.value;
                var txtDataLocacao = form1.txtDataLocacao.value;
                var txtHrInicio = form1.txtHrInicio.value;
                var txtHrFim = form1.txtHrFim.value;
                var txtqtPessoas = form1.txtqtPessoas.value;
                var txtvalorLocacao = form1.txtvalorLocacao.value;
                var txtAvaliacao = form1.txtAvaliacao.value;
                var optCliente = form1.optCliente.value;
                var optEspaco = form1.optEspaco.value;


                if (txtCodReserva === "") {
                    alert('Preencha o campo com um código, não permita que seja vazio');
                    form1.txtCodReserva.focus();
                    return false;
                }

                if (txtCodReserva >= 9999999999) {
                    alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
                    form1.txtCodReserva.focus();
                    return false;
                }

                if (txtCodReserva <= 0) {
                    alert('Preencha o campo com um código ACIMA de número NEGATIVO');
                    form1.txtCodReserva.focus();
                    return false;
                }

                if (txtDataLocacao === "") {
                    alert('Preencha o campo "Data locação"');
                    form1.txtDataLocacao.focus();
                    return false;
                }
                if (txtHrInicio === "") {
                    alert('Preencha o campo "Hora inicio"');
                    form1.txtHrInicio.focus();
                    return false;
                }

                if (txtHrFim === "") {
                    alert('Preencha o campo "Hora fim"');
                    form1.txtHrFim.focus();
                    return false;
                }


                if (txtAvaliacao === "") {
                    alert('Preencha o campo "Avaliação"');
                    form1.txtAvaliacao.focus();
                    return false;
                }


                if (txtqtPessoas === "") {
                    alert('Preencha o campo "Quantidade de Pessoas"');
                    form1.txtqtPessoas.focus();
                    return false;
                }

                if (txtvalorLocacao === "") {
                    alert('Preencha o campo "Valor de locação"');
                    form1.txtvalorLocacao.focus();
                    return false;
                }

                if (optCliente === "") {
                    alert('Preencha o campo "Cliente"');
                    form1.optCliente.focus();
                    return false;
                }
                if (optEspaco === "") {
                    alert('Preencha o campo "Espaço"');
                    form1.optEspaco.focus();
                    return false;
                }




            }
        </script>

        <!-- FIM JavaScript para o formulario-->


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Manter Reserva - ${operacao} </title>
    </head>
    <body>

        


        <div class="container">
            <!--INICIO Div formulario-->

            <div class="col">
                <div>
                    <h1 class="text-center"> Reserva - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>

            <form name="form1" action="ManterReservaController?acao=confirmarOperacao&operacao=${operacao}" method="post">

                <!-- INICIO TABELA-->


                <div class="col-lg-8">
                    <table class="table table-striped">

                        <tbody>
                        <br>

                        <tr>
                            <td>Codigo da reserva</td>
                            <td><input type="number" class="form-control" onkeyup="validare(this, 'numero')" placeholder="Digite apenas números" name="txtCodReserva" value="${reserva.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                            <p class="help-block"></p>
                            </tr>

                            <tr>
                                <td>Data da locação:</td>

                                <td><input type="date" class="form-control"  placeholder="00/00/0000" name="txtDataLocacao" value="${reserva.dataLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
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
                                <td> <input  type="number" class="form-control" id="horaf" placeholder="Nota de 1 a 5" maxlength="1"name="txtAvaliacao" value="${reserva.notaAvaliacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>> </td>
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

                    <input onclick="return validar()" type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">
                    <a href="PesquisaReservaController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>


                </div>


            </form>

        </div>





                            
                            
      <hr>
                
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->




    </body>
</html>