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
        <!--inicio Header-->
        <%@ include file = "Header.jsp" %>
        <!--fim Header-->


        <!-- JavaScript pasta ( js/scriptJSP.js  )-->
        <script language="javascript"  type="text/javascript" src="js/scriptJSP.js">
        </script>
        <!-- Fim JavaScript--> 


        <style>


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




        <div class="container">
            <!--INICIO Div formulario-->

            <div class="col">
                <div>
                    <h1 class="text-center"> Reserva - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>

            <form name="form1" action="ManterReservaController?acao=confirmarOperacao&operacao=${operacao}" method="post">

                <!-- INICIO TABELA-->


                <div class="col-lg-12">
                    <table class="table table-striped">

                        <tbody>
                        <br>

                        <tr>
                            <td>Codigo da reserva</td>
                            <td><input type="text" onkeyup="validare(this, 'numero')" data-ls-module="charCounter" maxlength="9" required="required" autocomplete="off" max="999999999"  placeholder="Digite apenas numeros" class="form-control"  name="txtCodReserva" value="${reserva.id}" required autofocus<c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                            <p class="help-block"></p>
                            </tr>

                            <tr>
                                <td>Data da locação:</td>

                                <td><input type="date" class="form-control" placeholder="00/00/0000" name="txtDataLocacao" required="required"  maxlength="10" pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" autocomplete="off" min="1500-01-01" max="3000-12-31"  value="${reserva.dataLocacao}" required<c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            </tr>


                            <tr>
                                <td>Hora de Início</td>
                                <td><input type="time" placeholder="00:00" maxlength="8"pattern="[0-9]{2}:[0-9]{2} [0-9]{2}$"  autocomplete="off" type=horai class="form-control" name="txtHrInicio" value="${reserva.horaInicioLocacao}" required<c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            </tr>

                            <tr>
                                <td>Hora Fim</td>
                                <td><input type="time" maxlength="8" pattern="[0-9]{2}:[0-9]{2} [0-9]{2}$"  autocomplete="off" class="form-control" id="horaf" placeholder="00:00" name="txtHrFim" value="${reserva.horaFimLocacao}" required<c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            </tr>

                            <tr>
                                <td>Quantidade Estimada de Pessoas</td>
                                <td>    <input type="text" class="form-control" data-ls-module="charCounter" onkeyup="validare(this, 'numero')" maxlength="9" required="required" autocomplete="off" max="999999999" id="qtpessoas" placeholder="Digite apenas números" name="txtqtPessoas" value="${reserva.qtPessoas}" required<c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            </tr>

                            <tr>
                                <td>Preço</td>
                                <td> <input type="text" class="form-control" data-ls-module="charCounter" min="1" maxlength="9" autocomplete="off" max="999999999" placeholder="R$ 00.00" name="txtvalorLocacao" value="${reserva.valorLocacao}" required<c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                            </tr>

                            <tr>
                                <td>Avaliação</td>
                                <td> <input  type="text" class="form-control" max="5" pattern="[0-5]{1}" onkeyup="validare(this, 'numero')" id="horaf" required="required" autocomplete="off" min="0"  placeholder="Nota de 1 a 5" maxlength="1"name="txtAvaliacao" value="${reserva.notaAvaliacao}" required<c:if test="${operacao == 'Excluir'}">readonly</c:if>> </td>
                            </tr>

                            <td>Local de Reserva:</td>
                            <td>
                                <select class="form-control" name="optEspaco" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>                                            
                                <c:forEach items="${espacos}" var="espaco">
                                    <option value="${espaco.id}" <c:if test="${espaco.id == reserva.idEspaco}"> selected</c:if>>${espaco.nome}</option>  
                                </c:forEach>
                            </select>
                        </td> 
                        </tr>
                        <td>Nome do Cliente:</td>
                        <td>
                            <select class="form-control" name="optCliente" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                <c:forEach items="${clientes}" var="cliente">
                                    <option value="${cliente.id}" <c:if test="${cliente.id == reserva.idCliente}"> selected</c:if>>${cliente.nome}</option>  
                                </c:forEach>
                            </select>
                        </td>



                        </tbody>


                    </table>
                    <br>

                    <input onclick="return funcReserva()" type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">
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