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
        <title>Manter Reembolso - ${operacao}</title>
    </head>
    <body>




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

            <form name="form1" action="ManterReembolsoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterReembolso">

                <!--Inicio Tabela-->

                <div class="col-lg-12">
                    <table class="table table-striped">

                        <tbody>
                        <br>

                        <tr>
                            <td>Codigo do Reembolso</td>
                            <td>    <input type="text" onkeyup="validare(this,'numero')"required="required" min="1" max="9999999999" autocomplete="off" placeholder="Digite apenas numeros" maxlength="10"  class="form-control" name="txtCodReembolso" value="${reembolso.id}" required autofocus<c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
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
                                
                                                       <select class="form-control" id="pagamento" name="optPagamento"  <c:if test="${operacao == 'Excluir'}" > readonly </c:if>>
                                <c:forEach items="${pagamentos}" var="pagamento">
                                    <option value="${pagamento.id}" <c:if test="${pagamento.id == reembolso.idPagamento}"> selected</c:if>>${pagamento.numeroCodBarras}</option>  
                                </c:forEach>
                            </select>
            
                            </td>
                        </tr>
                        </tbody>


                    </table>
                    <br><br>

                    <input onclick="return funcReembolso()" type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">
                    <a href="PesquisaReembolsoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>
                </div>
            </form>
        </div>
        <!--FIM Div Chave estrangeira-->



        <br>
        <br>
        <br>      
        <br>

        <hr>

        <!--inicio Footer-->
        <%@ include file = "Footer.jsp" %>
        <!--fim Footer-->




    </body>
</html>