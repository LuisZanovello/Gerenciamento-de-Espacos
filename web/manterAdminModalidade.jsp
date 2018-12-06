<%-- 
    Document   : manterAdminModalidade
    Created on : 18/11/2018, 11:15:51
    Author     : viict
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html  lang="en, pt-br">
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
<%@ include file = "HeaderAdmin.jsp" %>
<!--fim Header-->

 
 <!-- JavaScript pasta ( js/scriptJSP.js  )-->
  <script language="javascript"  type="text/javascript" src="js/scriptJSP.js">
  </script>
     <!-- Fim JavaScript--> 

      


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Gerencia Modalidade - ${operacao}</title>
    </head>

    <body>

        

        <br>
        <div class="container"><!--Div centralizadora-->
            <div class="col">
                <div>
                    <h1 class="text-center"> Modalidade - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>      

            <form name="form1" action="ManterAdminModalidadeController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterAdminModalidade">

                <!--Inicio Tabela-->

                <div class="col-lg-7">

                    <!--Div centralizadora-->
                </div>
                <div class="col-lg-12">
                    <table class="table table-striped">
                        <thead>
                        <tbody>
                        <br>


                        <tr>
                            <td>Código Modalidade</td>
                            <td><input type="number" onkeyup="validare(this,'numero')" min="1" placeholder="Digite apenas numeros" class="form-control" name="txtIdModalidade" maxlength="9" value="${modalidade.id}" autofocus<c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Modalidade</td>
                                <td><input type="text" onkeyup="validare(this,'texto')" min="1" placeholder="Ex: Volei de praia" class="form-control" name="txtModalidade" maxlength="45" value="${modalidade.modalidade}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Descrição</td>
                                <td><input type="text"  class="form-control" name="txtDescricao" maxlength="45" value="${modalidade.descricao}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div>
                    <input type="submit" onclick="return funcAdminModalidade()"  name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">
                    <a href="PesquisaAdminModalidadeController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>

                </div>
            </form>

        </div>        <!--FIM Div centralizadora-->


        <hr>
                
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->


    </body>
</html>