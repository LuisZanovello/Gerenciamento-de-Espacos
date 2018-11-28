
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

        <%@ include file = "Header.jsp" %>
        
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

        <script language="javascript" type="text/javascript">

 /* inicio javaScript Somente numero para o ID */
        
        
            
            /* use onkeyup="somenteNumeros(this);"  no input */
/* fim javaScript Somente numero para o ID */

            function validar() {

                var txtSenhaCliente = form1.txtSenhaCliente.value;
                var rep_senha = form1.rep_senha.value;

                if (txtSenhaCliente === "") {

                    alert('Preencham seu nome');
                    form1.txtSenhaCliente.focus();
                    return false;
                }
            }
        </script>



        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Cliente - ${operacao}</title>
    </head>

    <body>

        <header>
            
        </header>
        


<br>
<br>
<div class="container"><!--Div centralizadora-->
    <div class="col">
        <div>
            <h1 class="text-center">${operacao} - Cliente  </h1> <hr>  <br><br>

        </div>
    </div>

    <!--Inicio Formulario-->
    <form name="form1" action="ManterClienteController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterAdminCliente">





        <div class="col-lg-12">
            <table class="table table-striped">
                <thead>
                <tbody>
                <br>


                <tr>
                    <td>Código do cliente: </td>
                    <td><input type="text" required="required" maxlength="11" min="1" max="9999999999"  onkeyup="somenteNumeros(this);" placeholder="Digite um codigo"  class="form-control" name="txtIdCliente"   value="${cliente.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>/></td>
                    </tr>
                    <tr>
                        <td>Nome do cliente: </td>
                        <td><input type="text"  class="form-control" data-ls-module="charCounter" maxlength="45"  placeholder="Digite seu nome" name="txtNomeCliente" size="60"  value="${cliente.nome}" required<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>Sobrenome: </td>
                        <td> <input type="text"  class="form-control" data-ls-module="charCounter" maxlength="45"  placeholder="Digite seu Sobrenome" name="txtSobrenomeCliente" size="60"  value="${cliente.sobrenome}" required<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>Data de Nascimento: </td>
                        <td> <input type="date"  class="form-control"  name="txtDataNascimentoCliente"  maxlength="8" min="1900-01-01" max="3000-02-18"  value="${cliente.dataNascimento}" required<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>Email: </td>
                        <td> <input type="text"  class="form-control" placeholder="exemplo@exemplo.br" name="txtEmailCliente" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]$" size="60"  value="${cliente.email}" required <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>CPF: </td>
                        <td> <input type="text" onBlur="ValidarCPF(form1.txtCPFCliente);" onKeyPress="MascaraCPF(form1.txtCPFCliente);" maxlength="14" class="form-control"   
                                    placeholder="Digite seu CPF" name="txtCPFCliente"  value="${cliente.cpf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
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
            <input type="submit" onclick="return validar()"  name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

            <a href="PesquisaClienteController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>

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
