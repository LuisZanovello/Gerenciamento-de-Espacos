<%-- 
    Document   : manterAdmin
    Created on : 23/10/2018, 09:43:17
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

       


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Administrador - ${operacao}</title>

        
        
  <!-- JavaScript pasta ( js/scriptJSP.js  )-->
  <script language="javascript"  type="text/javascript" src="js/scriptJSP.js">
  </script>
     <!-- Fim JavaScript--> 
     
     
     

    <!--inicio Header-->
<%@ include file = "HeaderAdmin.jsp" %>
<!--fim Header-->

    </head>
    <body>

       
        
        <br>
        <div class="container">
            <div class="col-lg-12">
                <div>
                    <h1 class="text-center"> Administrador - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>




            <!--Inicio Tabela-->





            <form name="form1" action="ManterAdministradorController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterAdmin">
                <table class="table table-striped">
                    <thead>
                    <tbody>
                    <br>

                    <tr>
                        <td>Codigo do admin: </td>
                        <td><input type="number" onkeyup="validare(this,'numero')" min="1" maxlength="11" required="required" autocomplete="off" max="9999999999" placeholder="Digite apenas numeros" class="form-control" name="txtCodAdmin"  maxlength="9" value="${admin.id}" autofocus<c:if test="${operacao != 'Incluir'}"> readonly</c:if>> </td>
                        </tr>

                        <tr>
                            <td>Nome do admin: </td>
                            <td> <input type="text" onkeyup="validare(this,'texto')" data-ls-module="charCounter" maxlength="45" autocomplete="off"   placeholder="Digite seu nome" class="form-control"  name="txtNomeAdmin" maxlength="45"value="${admin.nome}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>>  </td>
                        </tr>

                        <tr>
                            <td>Email do admin: </td>
                            <td> <input type="text"   placeholder="Digite seu e-mail" class="form-control" name="txtEmailAdmin" autocomplete="off" maxlength="45" value="${admin.email}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>>  </td>
                        </tr>

                        <tr>
                            <td>Senha do admin: </td>
                            <td> <input type="password"  placeholder="Digite uma senha de 6 digitos" class="form-control" autocomplete="off" name="txtSenhaAdmin" maxlength="6"  value="${admin.senha}" <c:if test="${operacao == 'Excluir' }">readonly</c:if>>  </td>
                        </tr>

                        <tr>
                            <td>Confirme a Senha</td>
                            <td> <input type="password"  placeholder="Confirme sua senha" class="form-control" name="rep_senha" autocomplete="off" value="${admin.senha}" <c:if test="${operacao == 'Excluir' }">readonly</c:if>>  </td>
                    </tr>


                    </tbody>
                </table>


                <input type="submit" onclick="return funcAdmin()" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar"/>


                <a href="PesquisaAdminController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>
            </form>


        </div>        <!--FIM Div centralizadora-->
        <hr>
        <br>
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->



    </body>
</html>