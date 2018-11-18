                                                           
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
        <title>Manter Cartão - ${operacao}</title>




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
                            <a class="nav-link" href="indexCartao.jsp">Área do Cartao</a> <!-- primeiro link direita superior-->
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- FIM Navegador superior-->

        <br>
        <div class="col">
            <div>
                <h1 class="text-center"> Cartao - ${operacao} </h1> <hr>  <br><br>

            </div>
        </div>


        <form action="ManterCartaoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterCartao">

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
            <td>Código do cartao: </td>
            <td><input type="text" name="txtIdCartao" value="${cartao.id}"  <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
        </tr>
        <tr>
            <td>Bandeira do cartao: </td>
            <td><input type="text" name="txtBandeiraCartao" value="${cartao.bandeira}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
                <tr>
            <td>Validade do cartao: </td>
            <td><input type="text" name="txtValidadeCartao" value="${cartao.validade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
                <tr>
            <td>Número do cartao: </td>
            <td><input type="text" name="txtNumeroCartao" value="${cartao.numeroCartao}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
                <tr>
            <td>Codigo do cartao: </td>
            <td><input type="text" name="txtCodCartao" value="${cartao.codigoSeguranca}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
                 <td>Cliente:</td>
                    <td>
                        <select name="optCliente" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                            <c:forEach items="${clientes}" var="cliente">
                                <option value="${cliente.id}" <c:if test="${cliente.id == cartao.idCliente}"> selected</c:if>>${cliente.nome}</option>  
                            </c:forEach>
                        </select>
                    </td>
                </tr>
  
                    </tbody>
                </table>


                <input type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

                </form>
                <a href="PesquisaCartaoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>


                </body>
                </html>



