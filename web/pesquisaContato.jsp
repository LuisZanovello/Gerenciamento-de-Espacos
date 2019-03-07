

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
        
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
                position: relative; 
                bottom: 0; 
                left: 0px; 
                right: 0px;
                width: 100%;
                text-align: center;
            }
        </style>

        <title>Contatos</title>

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
                            <h1 class="text-center">Lista de Contatos</h1><hr>  <br><br>
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
                                            $("#myTable ${contato.numero}").filter(function () {
                                                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                            });
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                    <!-- FIM TAG para buscar -->
<!--INICIO Tabela botoes incluir e voltar-->

                    <div class="container">
                        <div class="row">                                   
                            <div class="col-lg">
                                <label>
                                    <form action="ManterContatoController?acao=prepararOperacao&operacao=Incluir" method="post">
                                        <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                    </form>
                                </label>
                                
                           <label>
                                    <form action="ReportContato" method="post">
                                        <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Gerar Relatório">
                                    </form>
                                </label>
                                
                                                                               <a href="#" class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#modalReserva">Relatório com parametro</a>

                                    <div class="modal fade" id="modalReserva" tabindex="-1" role="dialog">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">


                                                <div class="modal-body">
                                                    <h5>
                                                        Selecione o nome da cidade desejada
                                                    </h5>
                                                    <form action="ReportReservaController" method="POST" autofocus>
                                <select class="form-control" id="cliente" name="optCliente"  <c:if test="${operacao == 'Excluir'}" > readonly </c:if>>
                                <c:forEach items="${clientes}" var="cliente">
                                    <option value="${cliente.id}" <c:if test="${cliente.id == contato.idCliente}"> selected</c:if>>${cliente.nome}</option>  
                                </c:forEach>
                            </select>
                                                        <input type="submit" class="btn btn-outline-primary btn-sm"/>

                                                    </form>
                                                </div>


                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>                            
      

                          
                                
                            </div>
                        </div>
                    </div>                            

                    <!--FIM Tabela botoes incluir e voltar--> 
                    
                        <div clas="card">
                            <div class="card-body">
                                <c:forEach items="${contatos}" var="contato">


                                    <table class="table table-striped" id="myTable">
                                        </thead>
                                        <tbody>

                                            <tr>
                                                <th colspan="1">
                                                    Número do Contato : <c:out value ="${contato.numero}"/>
                                                </th>

                                                <th colspan="1">
                                                    <a href="ManterContatoController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${contato.id}"/>"
                                                       class="btn btn-outline-success" role="button" aria-pressed="true">Editar</a>
                                                    <a href="ManterContatoController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${contato.id}"/>"
                                                       class="btn btn-outline-danger" role="button" aria-pressed="true">Excluir</a>
                                                </th>

                                            </tr>



                                        </tbody>

                                    </table>


                                    <hr>
                                </c:forEach>



                            </div>        
                        </div>





                        <!--Inicio DIV -->
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
                                                        <form action="ManterContatoController?acao=prepararOperacao&operacao=Incluir" method="post">
                                                            <input type="submit" name="btnIncluir" class="btn btn-outline-primary btn-sm" value="Incluir">
                                                        </form>
                                                    </td>

                                    
                                                </tr>

                                            </tbody>
                                        </table>

                                    </div>        
                            </div> 

                            <hr>




                         
                            
                            
      <hr>
                
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->



                            </body>
                            </html>


