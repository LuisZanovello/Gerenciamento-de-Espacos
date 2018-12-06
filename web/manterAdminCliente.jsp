
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




        <!-- INICIO JavaScript para o formulario-->

        <script language="javascript" type="text/javascript">
           
        </script>

        <!-- FIM JavaScript para o formulario-->

   <!--inicio Header-->
<%@ include file = "HeaderAdmin.jsp" %>
<!--fim Header-->

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Gerencia Cliente - ${operacao}</title>
    </head>

    <body>

     
        

<br>
<br>
<div class="container"><!--Div centralizadora-->
    <div class="col">
        <div>
            <h1 class="text-center">Admin ${operacao} - Cliente  </h1> <hr>  <br><br>

        </div>
    </div>

            <!--Inicio Formulario-->
    <form name="form1" action="ManterAdminClienteController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterAdminCliente">


        


        <div class="col-lg-12">
            <table class="table table-striped">
                <thead>
                <tbody>
                <br>

                <tr>
                    <td>Código do cliente: </td>
                    <td><input type="number" onkeyup="validare(this,'numero')" min="1" max="9999999999" autocomplete="off" placeholder="Digite apenas numeros" name="txtIdCliente"   value="${cliente.id}" autofocus<c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>Nome do cliente: </td>
                        <td><input type="text" onkeyup="validare(this,'texto')" data-ls-module="charCounter" maxlength="45"    placeholder="Digite seu nome" name="txtNomeCliente" size="60"  value="${cliente.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>Sobrenome: </td>
                        <td> <input  type="text" onkeyup="validare(this,'texto')" data-ls-module="charCounter" maxlength="45"   placeholder="Digite seu Sobrenome" name="txtSobrenomeCliente" size="60"  value="${cliente.sobrenome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>Data de Nascimento: </td>
                        <td> <input type="date"  class="form-control"  name="txtDataNascimentoCliente"  maxlength="8"   value="${cliente.dataNascimento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>Email: </td>
                        <td> <input type="text"  class="form-control"  placeholder="Digite seu e-mail"  name="txtEmailCliente"  maxlength="45"   value="${cliente.email}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>CPF: </td>
                        <td> <input type="text" class="form-control"   placeholder="Digite seu CPF" name="txtCPFCliente" maxlength="11"  value="${cliente.cpf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>

                    <tr>
                        <td>Senha do Cliente: </td>
                        <td> <input type="password" class="form-control"  placeholder="Digite uma senha de 6 digitos" name="txtSenhaCliente" maxlength="6" value="${cliente.senha}" <c:if test="${operacao == 'Excluir' }">readonly</c:if>>  </td>
                    </tr>

                    <tr>
                        <td>Confirme a Senha</td>
                        <td> <input type="password"  placeholder="Confirme sua senha" class="form-control" name="rep_senha" maxlength="6"  value="${cliente.senha}" <c:if test="${operacao == 'Excluir' }">readonly</c:if>>  </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div>
            <input type="submit"  onclick="return adminCliente()"  name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

            <a href="PesquisaAdminClienteController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>

        </div>        
    </form>
                <!--FIM formulario-->
</div> 

<hr>

            
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->


</body>
</html>
