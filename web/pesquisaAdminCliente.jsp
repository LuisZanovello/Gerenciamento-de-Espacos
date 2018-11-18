
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


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

        <title>Admin Gerencia Cliente</title>

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

        <!--Inicio Tabela-->

        <div class="col-lg-4">
            <!--Div centralizadora-->
        </div>
        <div class="col-lg-12">
            <table class="table table-striped">
                <thead>
                <br>
                <div class="col">
                    <div>
                        <h1 class="text-center">Lista de Clientes</h1><hr>  <br><br>
                    </div>
                    <!--Tabela-->

                    <fieldset>
                        <div class="col-lg-11">
                            <input class="form-control " type="text" name="pesquisa"/>
                        </div>
                        <div class="col-lg-1">
                            <input class="btn btn-outline-danger" role="button" aria-pressed="true" type="submit" value="Pesquisar"/>
                        </div>

                    </fieldset>

                    <c:forEach items="${clientes}" var="cliente">

                        <div class="col-lg-2">
                            <table class="table table-striped">
                                </thead>
                                <tbody>

                                    <tr>
                                        <th colspan="2">
                                            Dados do Cliente : <c:out value ="${cliente.nome}"/>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th scope="now"> ID </th>
                                        <td><c:out value="${cliente.id}"/></td>
                                    </tr>
                                    <tr> 
                                        <th scope="now"> Nome </th>
                                        <td><c:out value="${cliente.nome}"/></td>
                                    </tr>

                                    <tr> 
                                        <th scope="now"> Sobrenome </th>
                                        <td><c:out value="${cliente.sobrenome}"/></td>
                                    </tr>
                                    <tr>
                                        <th scope="now"> Nascimento </th>
                                        <td><c:out value="${cliente.dataNascimento}"/></td>
                                    </tr>

                                    <tr>
                                        <th scope="now"> E-mail </th>
                                        <td><c:out value="${cliente.email}"/></td>
                                    </tr>

                                    <tr>
                                        <th scope="now"> CPF </th>
                                        <td><c:out value="${cliente.cpf}"/></td>
                                    </tr>

                                <td><a href="ManterAdminClienteController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${cliente.id}"/>"
                                       class="btn btn-outline-success" role="button" aria-pressed="true">Editar</a></td>
                                <td><a href="ManterAdminClienteController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${cliente.id}"/>"
                                       class="btn btn-outline-danger" role="button" aria-pressed="true">Excluir</a></td>
                                </tr>

                            </c:forEach>

                            </tbody>
                        </table>
                        <hr>
                    </div>        
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
                                                <form action="ManterAdminClienteController?acao=prepararOperacao&operacao=Incluir" method="post">
                                                    <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir Novo Cliente">
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
