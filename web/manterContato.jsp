                 
<%-- 
    Document   : manterAdmin
    Created on : 23/10/2018, 09:43:17
    Author     : viict
--%>

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
                position: absolute; 
                bottom: 0; 
                left: 0px; 
                right: 0px;
                width: 100%;
                text-align: center;
            }
        </style>

<script language="javascript"  type="text/javascript" src="js/scriptJSP.js"></script>

        <!-- INICIO JavaScript para o formulario-->

        <script language="javascript" type="text/javascript">
            function validar() {
                var txtIdContato = form1.txtIdContato.value;
                var txtNumeroContato = form1.txtNumeroContato.value;
                var optCliente = form1.optCliente.value;




                if (txtIdContato === "") {
                    alert('Preencha o campo com um código, não permita que seja vazio');
                    form1.txtIdContato.focus();
                    return false;
                }

                if (txtIdContato >= 999999999) {
                    alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
                    form1.txtIdContato.focus();
                    return false;
                }

                if (txtIdContato <= 0) {
                    alert('Preencha o campo com um código ACIMA de número NEGATIVO');
                    form1.txtIdContato.focus();
                    return false;
                }

                if (txtNumeroContato === "") {
                    alert('Preencha o campo "Nº do Contato"');
                    form1.txtNumeroContato.focus();
                    return false;
                }

                if (optCliente === "") {
                    alert('Preencha o campo "Cliente"');
                    form1.optContato.focus();
                    return false;
                }

            }
        </script>

        <!-- FIM JavaScript para o formulario-->

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Contato - ${operacao}</title>




    </head>
    <body>




        <br>
        <div class="container">
            <div class="col-lg-12">
                <div>
                    <h1 class="text-center"> Contato - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>


            <form name="form1" action="ManterContatoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterContato">

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
                            <td>Código do contato: </td>
                            <td><input type="text"   min="1" onkeyup="validare(this, 'numero')" placeholder="Digite apenas numeros"  required="required" maxlength="9" autocomplete="off" max="999999999"  class="form-control" name="txtIdContato" value="${contato.id}"  required autofocus<c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Número de contato: </td>
                                <td><input type="text" class="form-control" data-ls-module="charCounter" placeholder="Digite apenas numeros" onkeyup="validare(this, 'numero')" maxlength="9" autocomplete="off" min="1" max="999999999" name="txtNumeroContato" value="${contato.numero}"   required="required" required<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <td>Cliente:</td>
                            <td>
                                <select class="form-control" id="cliente" name="optCliente"  <c:if test="${operacao == 'Excluir'}" > readonly </c:if>>
                                <c:forEach items="${clientes}" var="cliente">
                                    <option value="${cliente.id}" <c:if test="${cliente.id == contato.idCliente}"> selected</c:if>>${cliente.nome}</option>  
                                </c:forEach>
                            </select>
                        </td>
                        </tr>

                        </tbody>
                    </table>


                    <input type="submit" onclick="return validar()"  name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

                    <a href="PesquisaContatoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>


                </div>      
            </form>

            <hr>
            
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>

        </div>

        <!--inicio Footer-->
        <%@ include file = "Footer.jsp" %>
        <!--fim Footer-->



    </body>
</html>