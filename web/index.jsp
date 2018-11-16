<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>Bem vindo</title>

        <!-- Bootstrap core CSS -->

        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/modern-business.css" rel="stylesheet">



        <style>
            footer{
                bottom: 0;
                position: fixed; 
                bottom: 0; 
                left: 0px; 
                right: 0px;
                width: 100%;
                text-align: center;
            }   
        </style>

    </head>

    <body>

        <!-- Parte superior -->
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

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Classes
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                                <a class="dropdown-item" href="PesquisaAdminController">Administrador</a>
                                <a class="dropdown-item" href="PesquisaClienteController">Cliente</a>
                                <a class="dropdown-item" href="PesquisaReservaController">Reservas</a>
                                <a class="dropdown-item" href="PesquisaReembolsoController">Reembolso</a>
                                <a class="dropdown-item" href="PesquisaPagamentoController">Pagamento</a>
                                <a class="dropdown-item" href="PesquisaModalidadeController">Modalidade</a>
                                <a class="dropdown-item" href="PesquisaIrregularidadeController">Irregularidade</a>
                                <a class="dropdown-item" href="PesquisaTipoEspacoController">Tipo de Espaço</a>
                                <a class="dropdown-item" href="PesquisaEspacoController">Espaços</a>
                                <a class="dropdown-item" href="PesquisaDisponibilidadeController">Disponibilidade</a>
                                <a class="dropdown-item" href="PesquisaContatoController">Contato</a>
                                <a class="dropdown-item" href="PesquisaCartaoController">Cartão</a>

                        </li>
                        <li>
                            <input class="form-control" type="text" placeholder="Pesquisa" aria-label="Pesquisa">
                        </li>

                    </ul>
                </div>
            </div>
        </nav>


        <!-- Corpo da Pagina -->
        <div class="container">

            <div><h1 class="my-4">iSport </h1></div> <br>


            <hr>
            <div class="row">
                <!--Inicio -->
                <div class="col">
                    <div class="col-sm-12">
                        <h1 class="text-center">Encontre o seu espaço e compare preços</h1><hr> <br><br> 
                    </div> 
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-11">
                                <input class="form-control " type="text" placeholder="Ex: Volei de areia ''TO EDITANDO AINDA ME DEEM IDEIAS HAHA :)'' " aria-label="Pesquisa">     
                            </div>
                            <div class="col-lg-1">
                                <a class="btn btn-danger text-center" href="#" role="button">Buscar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>

        <!--Fim -->


        <!--
                    <hr>
                    <div class="row">
                        
                        <div class="col">
                            <div class="col-sm-12">
                                <h1 class="text-center">Encontre o seu espaço e compare preços</h1><hr> <br><br> 
                            </div> 
        
                            
                            <div class="col">
                                <div class="col-sm-12">
                                    <h1 class="text-center">Gerenciamento de Espaços</h1>  <hr>
                                </div>
        
        
                                <div class="btn-group col-sm-12">
                                    <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Encontre o seu espaço e compare preços
                                    </button>
                                    <div class="dropdown-menu">
        
                                        <span class="dropdown-item-text">Selecione o local desejado</span>
                                        
                                      
                                        <a class="dropdown-item" href="PesquisaAdminController">Administrador</a>
                                        <a class="dropdown-item" href="PesquisaClienteController">Cliente</a>
                                        <a class="dropdown-item" href="PesquisaReservaController">Reservas</a>
                                        <a class="dropdown-item" href="PesquisaReembolsoController">Reembolso</a>
                                        <a class="dropdown-item" href="PesquisaPagamentoController">Pagamento</a>
                                        <a class="dropdown-item" href="PesquisaModalidadeController">Modalidade</a>
                                        <a class="dropdown-item" href="PesquisaIrregularidadeController">Irregularidade</a>
                                        <a class="dropdown-item" href="PesquisaTipoEspacoController">Tipo de Espaço</a>
                                        <a class="dropdown-item" href="PesquisaEspacoController">Espaços</a>
                                        <a class="dropdown-item" href="PesquisaDisponibilidadeController">Disponibilidade</a>
                                        <a class="dropdown-item" href="PesquisaContatoController">Contato</a>
                                        <a class="dropdown-item" href="PesquisaCartaoController">Cartão</a>
                                    </div>
                                </div>
                            </div>
                        </div>
        
                    </div>
                </div>
        
            </div>
        
        
            
            <hr>
        
            Fim -->






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
