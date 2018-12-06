


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

  <script language="javascript"  type="text/javascript" src="js/scriptJSP.js">
  </script>
        

<script language="javascript"  type="text/javascript" src="js/scriptJSP.js"></script>
        
        
 <!-- INICIO JavaScript para o formulario-->

        <script language="javascript" type="text/javascript">
            function validar() {
                var txtIdModalidade = form1.txtIdModalidade.value;
                var txtModalidade = form1.txtModalidade.value;
                var txtDescricao = form1.txtDescricao.value;
              
              
            
            
                

                if (txtIdModalidade === "") {
                    alert('Preencha o campo com um código, não permita que seja vazio');
                    form1.txtIdModalidade.focus();
                    return false;
                }

                if (txtIdModalidade >= 999999999) {
                    alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
                    form1.txtIdModalidade.focus();
                    return false;
                }

                if (txtIdModalidade <= 0) {
                    alert('Preencha o campo com um código ACIMA de número NEGATIVO');
                    form1.txtIdModalidade.focus();
                    return false;
                }

                if (txtModalidade === "") {
                    alert('Preencha o campo "Modalidade"');
                    form1.txtModalidade.focus();
                    return false;
                }
                if (txtDescricao === "") {
                    alert('Preencha o campo "Descrição"');
                    form1.txtDescricao.focus();
                    return false;
                }

         
         

            }
        </script>

        <!-- FIM JavaScript para o formulario-->
        
        

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Modalidade- ${operacao}</title>




    </head>
    <body>

        

    <br>
        <div class="container">
            <div class="col-lg-12">
                <div>
                    <h1 class="text-center"> Modalidade - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>


        <form name="form1" action="ManterModalidadeController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterContato">

          
                <table class="table table-striped">
                    <thead>
                    <tbody>
                    <br>

                    <tr>
                        <td>Código Modalidade</td>
                        <td><input  min="1"  class="form-control" placeholder="Digite apenas numeros" onkeyup="validare(this, 'numero')" required="required"  maxlength="9" autocomplete="off"  max="999999999" class="form-control" type="text" name="txtIdModalidade" value="${modalidade.id}"required autofocus<c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Modalidade</td>
                            <td><input class="form-control" onkeyup="validare(this,'texto')" data-ls-module="charCounter" maxlength="45"    placeholder="Digite a modalidade" autocomplete="off" class="form-control" maxlength="45" type="text" name="txtModalidade" value="${modalidade.modalidade}"required<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Descrição</td>
                            <td><input class="form-control" onkeyup="validare(this,'texto')" data-ls-module="charCounter" maxlength="45"    placeholder="Descreva" autocomplete="off"  class="form-control" maxlength="45" type="text" name="txtDescricao" value="${modalidade.descricao}" required<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>

                    </tbody>
                </table>


                <input type="submit" onclick="return validar()" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

                <a href="PesquisaModalidadeController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>

                </form>

            </div>      
            
                    
                            
                                                            <br>
                                <br>
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
