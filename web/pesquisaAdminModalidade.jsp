<%-- 
    Document   : pesquisaAdminModalidade
    Created on : 18/11/2018, 11:00:11
    Author     : viict
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html  lang="en, pt-br">
    <head>

        <!-- include para pesquisa funcionar -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- fim da nova include -->

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

        <title>Admin Gerencia de Modalidades</title>
    </head>
    <body>

        
        

        <!-- Corpo da Pagina -->
        <div class="container">

            <!--Inicio Tabela-->

            <div class="col-lg-12">
                <table class="table table-striped">
                    <thead>
                    <br>
                    <div class="col">
                        <div>
                            <h1 class="text-center">Lista de Modalidades</h1><hr>  <br><br>
                        </div>
                    </div>
                    </thead>

                    <!-- INICIO TAG para buscar -->
                    <div class="col-md-12">
                        <input type="text" id="myInput" onkeyup="myFunction()" class="form-control" placeholder="Pesquisa">
                        <script>
                            $(document).ready(function () {
                                $("#myInput").on("keyup", function () {
                                    var value = $(this).val().toLowerCase();
                                    $("#myTable ${espaco.id.nome}").filter(function () {
                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                    });
                                });
                            });
                        </script>
                    </div>
                    <!-- FIM TAG para buscar -->

                    <!--INICIO Tabela botoes incluir e voltar-->

                    <div class="container">
                        <div class="row">
                            <div class="col-lg">
                                <label>
                                    <form action="ManterAdminModalidadeController?acao=prepararOperacao&operacao=Incluir" method="post">
                                        <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                    </form>
                                </label>
                                <label>
                                    <a href="indexAdmin.jsp"><button class="btn btn-outline-dark btn-sm" value="Voltar">Voltar</button></a>
                                </label>
                            </div>
                        </div>
                    </div>

                    <!--FIM Tabela botoes incluir e voltar-->

                    <div clas="card">
                        <div class="card-body">
                            <c:forEach items="${modalidades}" var="modalidade">


                                <table class="table table-striped"  id="myTable">
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <th colspan="1">
                                                Dados da modalidade : <c:out value ="${modalidade.modalidade}"/>
                                            </th>
                                            
                                                     <th colspan="1" >
                                                 <a href="ManterAdminModalidadeController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${modalidade.id}"/>"
                                           class="btn btn-outline-success" role="button" aria-pressed="true">Editar</a>
                                    <a href="ManterAdminModalidadeController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${modalidade.id}"/>"
                                           class="btn btn-outline-danger" role="button" aria-pressed="true">Excluir</a>
                                                
                                            </th>
                                            
                                        </tr>
                                        <tr>
                                            <th scope="now"> ID </th>
                                            <td><c:out value="${modalidade.id}" /></td>
                                        </tr> 
                                        <tr> 
                                            <th scope="now"> Nome da Modalidade </th>
                                            <td><c:out value="${modalidade.modalidade}" /></td>
                                        </tr>

                                   

                                    <hr>


                                    </tbody>

                                </table>
                                <hr>
                                <br>
                            </c:forEach>

                            <!--INICIO Tabela botoes incluir e voltar-->

                            <div class="container">
                                <div class="row">
                                    <div class="col-lg">
                                        <label>
                                            <form action="ManterAdminModalidadeController?acao=prepararOperacao&operacao=Incluir" method="post">
                                                <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                            </form>
                                        </label>
                                        <label>
                                            <a href="indexAdmin.jsp"><button class="btn btn-outline-dark btn-sm" value="Voltar">Voltar</button></a>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <!--FIM Tabela botoes incluir e voltar-->

                        </div>
                    </div>

                   
                            
                            
      <hr>
                
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->



                    </body>
                    </html>


