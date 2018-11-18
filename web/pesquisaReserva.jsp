<%--
  Created by IntelliJ IDEA.
  User: viict
  Date: 09/10/2018
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="model.Espaco" %>



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

        <title>Reserva</title>
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

               
                        <li>
                            <input class="form-control" type="text" placeholder="Pesquisa" aria-label="Pesquisa">
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- FIM Navegador superior-->


        <!-- Corpo da Pagina -->
        <div class="container">

        


            <!--Inicio Tabela-->

       
            <div class="col-lg-12">
                <table class="table table-striped">
                    <thead>
                    <br>
                    <div class="col">
                        <div>
                            <h1 class="text-center">Lista de Reservas</h1><hr>  <br><br>
                        </div>
                        <!--Tabela-->

                        <c:forEach items="${reservas}" var="reserva">

                            <div class="col-lg-2">
                                <table class="table table-striped">
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <th colspan="2">
                                                Dados da reserva : <c:out value ="${reserva.idEspaco}"/>
                                            </th>
                                        </tr>
                                        <tr>
                                            <th scope="now"> ID </th>
                                            <td><c:out value="${reserva.id}" /></td>
                                        </tr>
                                        <tr>
                                            <th scope="now"> Data da Reserva</th>
                                    <td><c:out value="${reserva.dataLocacao}" /></td>
                                        </tr>
                                        <tr>
                                            <th scope="now"> Horário de Inicio </th>
                                    <td><c:out value="${reserva.horaInicioLocacao}" /></td>
                                        </tr>
                                        <tr>
                                            <th scope="now"> Horário de Fim </th>
                                    <td><c:out value="${reserva.horaFimLocacao}" /></td>
                                        </tr>
                                     

                                    <td><a href="ManterReservaController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${reserva.id}"/>"
                                           class="btn btn-outline-success" role="button" aria-pressed="true">Editar</a></td>
                                    
                                    <td><a href="ManterReservaController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${reserva.id}"/>"
                                   class="btn btn-outline-danger" role="button" aria-pressed="true">Excluir</a></td>
                                </tr>
                            </c:forEach>
                            </table>

              
                                   </tbody>
                            </table>
                            <hr>
                        </div>        
                    
    <!--Inicio DIV-->
                    <div class="row">               

                        <!--Inicio Tabela-->
                        <div class="col-lg-1">
                            <!--Div centralizadora-->
                        </div>

                        <!-- Distancia entre o botão incluir e voltar-->
                        <div class="col-lg-2"> 
                            <table class="table table-striped">

                                <br>

                                <!--Tabela-->
                                <div class="col-lg-12">
                                    <table class="table">

                                        <tbody>

                                            <tr>
                                                <td>
                                                   <form action="ManterReservaController?acao=prepararOperacao&operacao=Incluir" method="post">
                                                        <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                                    </form>
                                                </td>

                                                <td>
                                                    <a href="indexAdmin.jsp"><button class="btn btn-outline-dark btn-sm" value="Voltar">Voltar</button></a>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>

                                </div>        
                        </div> 
            
</div> <!-- Fim da DIV Centralizadora-->
                        <hr>

                        <!-- INICIO Footer -->
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
                        <!-- FIM Footer -->

                        </body>
                        </html>