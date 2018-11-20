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




    </head>
    <body>

        <!-- INICIO Navegador superior-->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">iSport</a> <!-- Nome do site emblema no canto esquerdo superior-->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">


                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Gerenciamento de Espaços</a> <!-- primeiro link direita superior-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="indexAdmin.jsp">Área do Admin</a> <!-- primeiro link direita superior-->
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- FIM Navegador superior-->

        <br>
        <div class="container"><!--Div centralizadora-->
            <div class="col-lg-12">
            <div>
                <h1 class="text-center"> Administrador - ${operacao} </h1> <hr>  <br><br>

            </div>
        </div>


        <form action="ManterAdministradorController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterAdmin">

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
                        <td>Codigo do admin: </td>
                        <td><input type="number" name="txtCodAdmin" size="60" value="${admin.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>> </td>
                        </tr>

                        <tr>
                            <td>Nome do admin: </td>
                            <td> <input type="text" name="txtNomeAdmin" size="60" value="${admin.nome}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>>  </td>
                        </tr>

                        <tr>
                            <td>Email do admin: </td>
                            <td> <input type="text" name="txtEmailAdmin" size="60" value="${admin.email}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>>  </td>
                        </tr>

                        <tr>
                            <td>Senha do admin: </td>
                            <td> <input type="text" name="txtSenhaAdmin" size="60" value="${admin.senha}" <c:if test="${operacao == 'Excluir' }">readonly</c:if>>  </td>
                    </tr>
                    </tbody>
                </table>


                <input type="submit" name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

                </form>
                <a href="PesquisaAdminController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>

</div>
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