
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



        <!-- Adicionando JQuery -->
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"
                integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous"></script>

        
        <!-- JavaScript pasta ( js/scriptJSP.js  )-->
  <script language="javascript"  type="text/javascript" src="js/scriptJSP.js">
  </script>
     <!-- Fim JavaScript--> 
        
       
     
  <!-- JavaScript pasta ( js/scriptJSP.js  )-->
  <script language="javascript"  type="text/javascript" src="js/scriptJSP.js">
  </script>
     <!-- Fim JavaScript--> 
     

<!--inicio Header-->
<%@ include file = "HeaderAdmin.jsp" %>
<!--fim Header-->
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
        <title> Gerencia Espaço - ${operacao}</title>
    </head>

    <body>
      
        
            
                

        <br>



        <!--INICIO Div formulario-->

        <div class="container">

            <!--INICIO Div Nome da Pagina-->
            <div class="col">
                <div>
                    <h1 class="text-center"> Admin ${operacao} - Espaço  </h1> <hr>  <br><br>

                </div>
            </div>
            <!--FIM Div Nome da Pagina-->

            <form name="form1"action="ManterAdminEspacoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterEspaco">


                <!--Inicio Tabela-->

                <div class="col-lg-12">
                    <table class="table table-striped">

                        <tbody>
                        <br>

                     <tr>
                            <td>Codigo Espaco</td>
                            <td><input type="number" onkeyup="validare(this,'numero')" min="1" max="9999999999" placeholder="Digite apenas numeros" class="form-control"  name="txtIdEspaco"  value="${espaco.id}" autofocus<c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Nome do Espaço</td>
                                <td><input type="text" onkeyup="validare(this,'texto')" maxlength="45" placeholder="Nome do Local" class="form-control"  name="txtNome"value="${espaco.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>CNPJ</td>
                                <td><input type="text"  onkeyup="validare(this,'numero')" maxlength="15" placeholder="00.000.000/0000-00"class="form-control" name="txtCnpj"  value="${espaco.cnpj}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Cep</td>
                                <td><input type="number"onkeyup="validare(this,'numero')"  placeholder="00000-000" id="cep" class="form-control"  name="txtCep"  value="${espaco.cep}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Logradouro</td>
                                <td><input type="text" id="rua"  placeholder="Endereço local" maxlength="45" class="form-control" name="txtLogradouro"  value="${espaco.logradouro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>                     
                                <td>Numero</td>
                                <td><input type="number"   placeholder="Nº do local" class="form-control" name="txtNumero" value="${espaco.numero}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Complemento</td>
                                <td><input type="text" placeholder="Complemento"  maxlength="45" class="form-control" name="txtComplemento"  value="${espaco.complemento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Bairro</td>
                                <td><input type="text" placeholder="Bairro"  id="bairro" maxlength="45" size="60" class="form-control" name="txtBairro" value="${espaco.bairro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Cidade</td>
                                <td><input type="text" placeholder="Cidade"  id="cidade" maxlength="45" class="form-control" name="txtCidade" value="${espaco.cidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Uf</td>
                                <td><input type="text" placeholder="Estado"   id="uf" maxlength="2"class="form-control" name="txtUf"  value="${espaco.uf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Area</td>
                                <td><input type="number" placeholder="M²(mestro quadrado)"  class="form-control"  name="txtArea" size="60" value="${espaco.area}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Quantidade  de pessoas</td>
                                <td><input type="number"  placeholder="Quantidade de pessoas suportadas"  class="form-control" name="txtQuantidadePessoas" size="60" value="${espaco.quantidadePessoas}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Horario de funcionamento - Inicio</td>
                                <td><input type="time" placeholder=""  class="form-control"  name="txtHoraFuncionamentoInicio" size="60" value="${espaco.horaFuncionamentoInicio}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>
                            <tr>
                                <td>Horario de funcionamento - Fim</td>
                                <td><input type="time"  placeholder="" class="form-control" name="txtHoraFuncionamentoFinal" value="${espaco.horaFuncionamentoFinal}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                            </tr>



                            <td>Tipo Espaco:</td>
                            <td>
                                <select class="form-control" name="optTipoEspaco" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>

                                <c:forEach items="${tiposEspacos}" var="tipoEspaco">
                                    <option value="${tipoEspaco.id}" <c:if test="${tipoEspaco.id == espaco.idTipoEspaco}"> disabled</c:if>>${tipoEspaco.nome}</option>  
                                </c:forEach>
                            </select>
                        </td>
                        </tbody>


                    </table>
                    <br><br>
                    <input type="submit" onclick="return funcAdminEspaco()" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

                    <a href="PesquisaAdminEspacoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>

                </div>
            </form>
        </div>

        <!--FIM Div formulario-->




                  
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->


    </body>
</html>
