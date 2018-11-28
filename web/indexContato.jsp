
<%-- 
    Document   : indexAdmin
    Created on : 16/11/2018, 22:08:11
    Author     : viict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html lang="pt-br">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Home Admin</title>
 
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

  </head>

  <body>

    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">iSport</a> <!-- Nome do site emblema no canto esquerdo superior-->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Classes
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                                
                                <a class="dropdown-item" href="indexCliente.jsp">Cliente</a>                                
                                <a class="dropdown-item" href="PesquisaContatoController">Contato</a>
                                <a class="dropdown-item" href="indexCartao.jsp">Cartão</a>
                                <a class="dropdown-item" href="indexDisponibilidade.jsp">Disponibilidade</a>
                                
                                <a class="dropdown-item" href="PesquisaEspacoController">Espaços</a>
                                <a class="dropdown-item" href="PesquisaTipoEspacoController">Tipo de Espaço</a>
                                <a class="dropdown-item" href="PesquisaModalidadeController">Modalidade</a>
                                <a class="dropdown-item" href="PesquisaIrregularidadeController">Irregularidade</a>
                                
                                
                                <a class="dropdown-item" href="PesquisaReservaController">Reservas</a>
                                <a class="dropdown-item" href="PesquisaPagamentoController">Pagamento</a>
                                <a class="dropdown-item" href="PesquisaReembolsoController">Reembolso</a>    
                                <a class="dropdown-item" href="indexAdmin.jsp"<c:if test="${tipoLogin != 'administrador'}"> hidden </c:if>>>Administrador</a>
                            </li>
                        <li>
                            <input class="form-control" type="text" placeholder="Pesquisa" aria-label="Pesquisa">
                        </li>

                    </ul>
                </div>
            </div>
        </nav>


    <header>
     
    </header>

    <!-- Page Content -->
    <div class="container">

      <div><h1 class="my-4">Área do Contato </h1></div>
      <div><h3><small>Bem vindo(a)!</small></h3></div> <br>

      
      <hr>
      <div class="row">

        
        <!-- Inicio  Menu -->
        <div class="container">
          <div class="row">
              <div class="col">
            
            <a class="btn btn-dark btn-block" href="PesquisaContatoController" role="button">Lista Contatos</a> <br> <br>
            </div>
            <div class="col">
            <a class="btn btn-dark btn-block" href="ManterContatoController?acao=prepararOperacao&operacao=Incluir" role="button">Incluir Contato</a> <br> <br>
          </div> 
          <div class="col"> 
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle btn-block" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Gerenciar Cadastros
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <a class="dropdown-item" href="PesquisaAdminClienteController">Gerenciar Clientes</a>
                  <a class="dropdown-item" href="PesquisaAdminEspacoController">Gerenciar Espaços</a>
                </div> 
                </div>
              </div>
              </div>
              
              
            <br><br><br>
                </div>
        </div>
      </div>
    
                <!-- Fim Menu -->

             

            
<!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->



    </body>
</html>