<%--
  Created by IntelliJ IDEA.
  User: viict
  Date: 09/10/2018
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
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
<%@ include file = "Header.jsp" %>
<!--fim Header-->




        <title>Contatos</title>

    </head>
    <body>
        



        <!--Inicio Box-->
        <div class="row">               



            <!--Inicio Tabela-->

            <div class="col-lg-1">
                <!--Div centralizadora-->
            </div>
            <div class="col-lg-9">
                <table class="table table-striped">
                    <thead>
                    <br>
                    <div class="col">
                        <div>
                            <h1 class="text-center">Lista de Irregularidades</h1><hr>  <br><br>
                        </div>
                        <!--Tabela-->
                        
                        <!-- INICIO TAG para buscar -->
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <input type="text" id="myInput" onkeyup="myFunction()" class="form-control" placeholder="Pesquisa">
                                <script>
                                    $(document).ready(function () {
                                        $("#myInput").on("keyup", function () {
                                            var value = $(this).val().toLowerCase();
                                            $("#myTable ${irregularidade.autor}").filter(function () {
                                                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                            });
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                    <!-- FIM TAG para buscar -->

                              <div class="container">
                        <div class="row">                                   
                            <div class="col-lg">
                                <label>
                                    <form action="ManterIrregularidadeController?acao=prepararOperacao&operacao=Incluir" method="post">
                                        <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                    </form>
                                </label>
                          
                                
                            </div>
                        </div>
                    </div>                         
                            <div clas="card">
                        <div class="card-body">
                        <c:forEach items="${irregularidades}" var="irregularidade">

                            
                                <table class="table table-striped" id="myTable">
                                    
                                    <tbody>
                
                                        
                                    
                                            <tr>
                                            <th colspan="1">
                                                Dados Irregularidade (Autor): <c:out value ="${irregularidade.autor}"/> 
                                            </th>

                                            <th colspan="1">
                                                <a href="ManterIrregularidadeController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${irregularidade.id}"/>"
                                                   class="btn btn-outline-success" role="button" aria-pressed="true">Editar</a>
                                                <a href="ManterIrregularidadeController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${irregularidade.id}"/>"
                                                   class="btn btn-outline-danger" role="button" aria-pressed="true">Excluir</a>
                                            </th>

                                        </tr>
                     

                                    </tbody>

                                </table>


                                <hr>
                            </c:forEach>

                            <!--INICIO Tabela botoes incluir e voltar-->

                            <div class="container">
                                <div class="row">
                                    <div class="col-lg">
                                        <label>
                                            <form action="ManterIrregularidadeController?acao=prepararOperacao&operacao=Incluir" method="post">
                                                <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                            </form>
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


