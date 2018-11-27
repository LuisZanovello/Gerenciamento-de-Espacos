                                                           
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


        <!-- INICIO JavaScript para o formulario-->

        <script language="javascript" type="text/javascript">
            function validar() {
                var txtIdCartao = form1.txtIdCartao.value;
                var txtBandeiraCartao = form1.txtBandeiraCartao.value;
                var txtValidadeCartao = form1.txtValidadeCartao.value;
                var txtNumeroCartao = form1.txtNumeroCartao.value;
                var txtCodCartao = form1.txtCodCartao.value;
            
            
                

                if (txtIdCartao === "") {
                    alert('Preencha o campo com um c�digo, n�o permita que seja vazio');
                    form1.txtIdCartao.focus();
                    return false;
                }

                if (txtIdCartao >= 9999999999) {
                    alert('O campo de c�digo foi preenchido acima do suportado (10 d�gitos) ');
                    form1.txtIdCartao.focus();
                    return false;
                }

                if (txtIdCartao <= 0) {
                    alert('Preencha o campo com um c�digo ACIMA de n�mero NEGATIVO');
                    form1.txtIdCartao.focus();
                    return false;
                }

                if (txtBandeiraCartao === "") {
                    alert('Preencha o campo "Bandeira do Cart�o"');
                    form1.txtBandeiraCartao.focus();
                    return false;
                }
                if (txtValidadeCartao === "") {
                    alert('Preencha o campo "Validade do Cart�o"');
                    form1.txtValidadeCartao.focus();
                    return false;
                }

                if (txtNumeroCartao === "") {
                    alert('Preencha o campo "N� do cart�o"');
                    form1.txtNumeroCartao.focus();
                    return false;
                }


                if (txtCodCartao !== rep_senha) {
                    alert('Preencha o campo "C�digo de Seguran�a"');
                    form1.txtCodCartao.focus();
                    return false;
                }



            }
        </script>

        <!-- FIM JavaScript para o formulario-->


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Cart�o - ${operacao}</title>




    </head>
    <body>

      
        <!-- INICIO Navegador superior-->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">iSport</a> <!-- Nome do site emblema no canto esquerdo superior-->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">

            
                        



                    </ul>
                </div>

                <!-- INICIO DROPDOWN-->
                <div>

                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Classes
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">

                                <a class="dropdown-item" href="PesquisaClienteController">Cliente</a>                                
                                <a class="dropdown-item" href="PesquisaContatoController">Contato</a>
                                <a class="dropdown-item" href="PesquisaCartaoController">Cart�o</a>
                                <a class="dropdown-item" href="PesquisaDisponibilidadeController">Disponibilidade</a>

                                <a class="dropdown-item" href="PesquisaEspacoController">Espa�os</a>
                                <a class="dropdown-item" href="PesquisaTipoEspacoController">Tipo de Espa�o</a>
                                <a class="dropdown-item" href="PesquisaModalidadeController">Modalidade</a>
                                <a class="dropdown-item" href="PesquisaIrregularidadeController">Irregularidade</a>


                                <a class="dropdown-item" href="PesquisaReservaController">Reservas</a>
                                <a class="dropdown-item" href="PesquisaPagamentoController">Pagamento</a>
                                <a class="dropdown-item" href="PesquisaReembolsoController">Reembolso</a>    
                                
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Sair</a> <!-- primeiro link direita superior-->
                        </li>
                    </ul>
                </div>


                <!-- FIM DROPDOWN-->
            </div>
        </nav>
        <!-- FIM Navegador superior-->

        <br>
        <div class="container">
            <div class="col-lg-12">
                <div>
                    <h1 class="text-center"> Cartao - ${operacao} </h1> <hr>  <br><br>

                </div>
            </div>


            <form name="form1"action="ManterCartaoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterCartao">


                <table class="table table-striped">
                    <thead>
                    <tbody>
                    <br>
                    <tr>
                        <td>C�digo do cartao: </td>
                        <td><input type="text"   min="1"class="form-control" name="txtIdCartao" value="${cartao.id}"  <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Bandeira do cartao: </td>
                            <td><input type="text" class="form-control"  name="txtBandeiraCartao" value="${cartao.bandeira}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Validade do cartao: </td>
                            <td><input type="text"  class="form-control" name="txtValidadeCartao" value="${cartao.validade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>N�mero do cartao: </td>
                            <td><input type="text"  class="form-control" name="txtNumeroCartao" value="${cartao.numeroCartao}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <tr>
                            <td>Codigo do cartao: </td>
                            <td><input type="text" class="form-control"  name="txtCodCartao" value="${cartao.codigoSeguranca}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                        </tr>
                        <td>Cliente:</td>
                        <td>
                            <select class="form-control"  name="optCliente" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                            <c:forEach items="${clientes}" var="cliente">
                                <option value="${cliente.id}" <c:if test="${cliente.id == cartao.idCliente}"> selected</c:if>>${cliente.nome}</option>  
                            </c:forEach>
                        </select>
                    </td>
                    </tr>

                    </tbody>
                </table>


                <input type="submit" onclick="return validar()" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

                <a href="PesquisaCartaoController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>
            </form>


        </div>        <!--FIM Div centralizadora-->



        <hr>
        <!-- Footer -->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">LP2 - professor Marco Antonio &copy; Gerenciamento de Espa�os 2018</p> 
                <p class="m-0 text-center text-gray"> Izabella R. - Luis G. - Victor W. </p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>
</html>