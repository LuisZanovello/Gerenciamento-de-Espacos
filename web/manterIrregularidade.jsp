<%-- 
    Document   : manterIrregularidade
    Created on : 23/10/2018, 10:43:57
    Author     : luisg
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
                var txtIdIrregularidade = form1.txtIdIrregularidade.value;
                var txtAutorIrregularidade = form1.txtAutorIrregularidade.value;
                var txtDescricaoIrregularidade = form1.txtDescricaoIrregularidade.value;
                var optEspaco = form1.optEspaco.value;


                if (txtIdIrregularidade === "") {
                    alert('Preencha o campo com um código, não permita que seja vazio');
                    form1.txtIdIrregularidade.focus();
                    return false;
                }

                if (txtIdIrregularidade >= 999999999) {
                    alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
                    form1.txtIdIrregularidade.focus();
                    return false;
                }

                if (txtIdIrregularidade <= 0) {
                    alert('Preencha o campo com um código ACIMA de número NEGATIVO');
                    form1.txtIdIrregularidade.focus();
                    return false;
                }


                if (txtAutorIrregularidade <= 0) {
                    alert('Preencha o campo "Autor"');
                    form1.txtAutorIrregularidade.focus();
                    return false;
                }

                if (txtDescricaoIrregularidade <= 0) {
                    alert('Preencha o campo "Descrição"');
                    form1.txtDescricaoIrregularidade.focus();
                    return false;
                }

                if (optEspaco <= 0) {
                    alert('Preencha o campo "Espaço"');
                    form1.optEspaco.focus();
                    return false;
                }






            }
        </script>

        <!-- FIM JavaScript para o formulario-->




        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Irregularidade</title>
    </head>
    <body>

     
        

        <br>
        <br>
        <div class="container"><!--Div centralizadora-->
            <div class="col">
                <div>
                    <h1 class="text-center">Irregularidade - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>
            <form name="form1" action="ManterIrregularidadeController?acao=confirmarOperacao&operacao=${operacao}" method="post">

                <!--Inicio Tabela-->


                <div class="col-lg-9">
                    <table class="table table-striped">
                        <thead>
                        <tbody>
                        <br>

                        <tr>

                            <td>Código Irregularidade</td>
                            <td><input type="text" min="1" class="form-control" placeholder="Digite apenas numeros"  maxlength="9" required="required" autocomplete="off" max="999999999" onkeyup="validare(this, 'numero')" name="txtIdIrregularidade" value="${irregularidade.id}" required autofocus<c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Autor</td>
                                <td><input type="text" maxlength="45" data-ls-module="charCounter" placeholder="Autor" class="form-control" autocomplete="off" onkeyup="validare(this,'texto')" name="txtAutorIrregularidade" value="${irregularidade.autor}" required<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td> 
                            </tr>

                            <tr>
                                <td>Descrição</td>
                                <td><input type="text" maxlength="45" data-ls-module="charCounter" placeholder="Descrição da Irregularidade" class="form-control" autocomplete="off" onkeyup="validare(this,'texto')" name="txtDescricaoIrregularidade" value="${irregularidade.descricao}" required<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td> 
                            </tr>

                            <td>Espaco:</td>
                            <td>
                                <select  class="form-control" name="optEspaco" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                <c:forEach items="${espacos}" var="espaco">
                                    <option value="${espaco.id}" <c:if test="${espaco.id == irregularidade.idEspaco}"> selected</c:if>>${espaco.nome}</option>  
                                </c:forEach>
                            </select>
                        </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div>
                    <input onclick="return validar()" type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">
                    </form>
                    <a href="PesquisaIrregularidadeController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>


                </div> <!--FIM da Div centralizadora-->

                <hr>
                </div>
                                <br>
                                <br>
            
                            
                            
      <hr>
                
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->




                </body>
                </html>
