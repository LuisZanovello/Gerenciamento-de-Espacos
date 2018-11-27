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


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Administrador - ${operacao}</title>

        <!-- INICIO JavaScript para o formulario-->

        <script language="javascript" type="text/javascript">
            function validar() {
                var txtCodAdmin = form1.txtCodAdmin.value;
                var txtNomeAdmin = form1.txtNomeAdmin.value;
                var txtEmailAdmin = form1.txtEmailAdmin.value;
                var txtSenhaAdmin = form1.txtSenhaAdmin.value;
                var rep_senha = form1.rep_senha.value;

                if (txtCodAdmin === "") {
                    alert('Preencha o campo com um código, não permita que seja vazio');
                    form1.txtCodAdmin.focus();
                    return false;
                }
                if (txtCodAdmin <= 0) {
                    alert('Preencha o campo com um código ACIMA de número NEGATIVO');
                    form1.txtCodAdmin.focus();
                    return false;
                }
                if (txtNomeAdmin === "") {
                    alert('Preencha o campo com seu nome');
                    form1.txtNomeAdmin.focus();
                    return false;
                }
                if (txtEmailAdmin === "") {
                    alert('Preencha o campo com um e-mail válido');
                    form1.txtEmailAdmin.focus();
                    return false;
                }

                if (txtSenhaAdmin === "") {
                    alert('Preencha o campo com seu nome');
                    form1.txtSenhaAdmin.focus();
                    return false;
                }


                if (txtSenhaAdmin !== rep_senha) {
                    alert('Senhas diferentes');
                    form1.txtSenhaAdmin.focus();
                    return false;
                }



            }
        </script>

        <!-- FIM JavaScript para o formulario-->



    </head>
    <body>

        <!-- INICIO Navegador superior-->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="indexAdmin.jsp">iSport</a> <!-- Nome do site emblema no canto esquerdo superior-->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item">
                            <a class="nav-link" href="indexAdmin.jsp">Área do Admin</a> <!-- primeiro link direita superior-->
                        </li>



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
                                <a class="dropdown-item" href="indexContato.jsp">Contato</a>
                                <a class="dropdown-item" href="PesquisaCartaoController">Cartão</a>
                                <a class="dropdown-item" href="PesquisaDisponibilidadeController">Disponibilidade</a>

                                <a class="dropdown-item" href="PesquisaEspacoController">Espaços</a>
                                <a class="dropdown-item" href="PesquisaTipoEspacoController">Tipo de Espaço</a>
                                <a class="dropdown-item" href="PesquisaModalidadeController">Modalidade</a>
                                <a class="dropdown-item" href="PesquisaIrregularidadeController">Irregularidade</a>


                                <a class="dropdown-item" href="PesquisaReservaController">Reservas</a>
                                <a class="dropdown-item" href="PesquisaPagamentoController">Pagamento</a>
                                <a class="dropdown-item" href="PesquisaReembolsoController">Reembolso</a>    
                                <a class="dropdown-item" href="indexAdmin.jsp">Administrador</a>
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
                        <td><input type="number" min="1" placeholder="Digite apenas numeros" class="form-control" name="txtCodAdmin" size="60" value="${admin.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>> </td>
                        </tr>

                        <tr>
                            <td>Nome do admin: </td>
                            <td> <input type="text"  placeholder="Digite seu nome" class="form-control"  name="txtNomeAdmin" size="60" value="${admin.nome}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>>  </td>
                        </tr>

                        <tr>
                            <td>Email do admin: </td>
                            <td> <input type="text"   placeholder="Digite seu e-mail" class="form-control" name="txtEmailAdmin" size="60" value="${admin.email}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>>  </td>
                        </tr>

                        <tr>
                            <td>Senha do admin: </td>
                            <td> <input type="password"  placeholder="Digite sua senha" class="form-control" name="txtSenhaAdmin" size="60" value="${admin.senha}" <c:if test="${operacao == 'Excluir' }">readonly</c:if>>  </td>
                    </tr>

                    <tr>
                        <td>Confirme a Senha</td>
                        <td> <input type="password"  placeholder="Confirme sua senha" class="form-control" name="rep_senha"  value="${admin.senha}" <c:if test="${operacao == 'Excluir' }">readonly</c:if>>  </td>
                    </tr>


                    </tbody>
                </table>


                <input type="submit" onclick="return validar()" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">


                <a href="PesquisaAdminController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>
            </form>


        </div>        <!--FIM Div centralizadora-->



        <hr>
        <!-- Footer -->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">LP2 - professor Marco Antonio &copy; Gerenciamento de Espaços 2018</p> 
                <p class="m-0 text-center text-gray"> Izabella R. - Luis G. - Victor W. </p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>
</html>