


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

<script language="javascript"  type="text/javascript" src="js/scriptJSP.js"></script>
<!--fim Header-->
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
        <title>Manter Disponibilidade - ${operacao}</title>

        <!-- INICIO JavaScript para o formulario-->

        <script language="javascript" type="text/javascript">
            function validar() {
                var txtIdDisponibilidade = form1.txtIdDisponibilidade.value;
                var txtDataDisponibilidade = form1.txtDataDisponibilidade.value;
                var txtHoraInicioDisponibilidade = form1.txtHoraInicioDisponibilidade.value;
                var txtHoraFimDisponibilidade = form1.txtHoraFimDisponibilidade.value;
                var optEspaco = form1.optEspaco.value;

                if (txtIdDisponibilidade === "") {
                    alert('Preencha o campo com um código, não permita que seja vazio');
                    form1.txtIdDisponibilidade.focus();
                    return false;
                }

                if (txtIdDisponibilidade >= 999999999) {
                    alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
                    form1.txtIdDisponibilidade.focus();
                    return false;
                }

                if (txtIdDisponibilidade <= 0) {
                    alert('Preencha o campo com um código ACIMA de número NEGATIVO');
                    form1.txtIdDisponibilidade.focus();
                    return false;
                }

                if (txtDataDisponibilidade === "") {
                    alert('Preencha o campo "Data disponivel"');
                    form1.txtDataDisponibilidade.focus();
                    return false;
                }
                if (txtHoraInicioDisponibilidade === "") {
                    alert('Preencha o campo "Hora inicio"');
                    form1.txtHoraInicioDisponibilidade.focus();
                    return false;
                }

                if (txtHoraFimDisponibilidade === "") {
                    alert('Preencha o campo "Hora fim"');
                    form1.txtHoraFimDisponibilidade.focus();
                    return false;
                }


                if (optEspaco !== rep_senha) {
                    alert('Preencha o campo "Espaço"');
                    form1.optEspaco.focus();
                    return false;
                }




            }
        </script>

        <!-- FIM JavaScript para o formulario-->


    </head>
    <body>

        
     
        <br>
        <div class="container">
            <div class="col-lg-12">
                <div>
                <h1 class="text-center"> Disponibilidade - ${operacao} </h1> <hr>  <br><br>

            </div>
        </div>


        <form name="form1" action="ManterDisponibilidadeController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterDisponibilidade">

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
                        <td>Código do disponibilidade: </td>
                        <td><input type="text" class="form-control" onkeyup="validare(this, 'numero')" name="txtIdDisponibilidade" required="required" min="1" max="999999999" autocomplete="off" placeholder="Digite apenas numeros" maxlength="9" value="${disponibilidade.id}" required autofocus<c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Data Disponivel: </td>
                            <td><input type="date" class="form-control" name="txtDataDisponibilidade" required="required"  maxlength="10" pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" autocomplete="off" min="1500-01-01" max="3000-12-31" value="${disponibilidade.dataDisponivel}" required<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Hora Inicio: </td>
                            <td><input type="time"class="form-control" name="txtHoraInicioDisponibilidade" required="required" maxlength="8" pattern="[0-9]{2}:[0-9]{2} [0-9]{2}$" autocomplete="off" value="${disponibilidade.hora_inicio}"  required<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Hora Final: </td>
                            <td><input type="time" class="form-control" name="txtHoraFimDisponibilidade" required="required" maxlength="8" pattern="[0-9]{2}:[0-9]{2} [0-9]{2}$" autocomplete="off" value="${disponibilidade.hora_fim}"  required<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <td>Espaco:</td>
                        <td>
                            <select class="form-control"  accesskey=""name="optEspaco" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                            <c:forEach items="${espacos}" var="espaco">
                                <option value="${espaco.id}" <c:if test="${espaco.id == disponibilidade.idEspaco}"> selected</c:if>>${espaco.nome}</option>  
                            </c:forEach>
                        </select>
                    </td>
                    </tr>

                    </tbody>
                </table>


                <input  onclick="return validar()" type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

                <a href="PesquisaDisponibilidadeController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>


            </div>      
        </form>
</div>      
                            
                            
                                                            <br>

      <hr>
                
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->



    </body>
</html>
