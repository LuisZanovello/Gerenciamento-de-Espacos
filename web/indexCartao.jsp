
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

                
<!--inicio Header-->
<%@ include file = "Header.jsp" %>
<!--fim Header-->

       
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

      


    <header>
     
    </header>

    <!-- Page Content -->
    <div class="container">

      <div><h1 class="my-4">Área do Cartão </h1></div>
      <div><h3><small>Bem vindo(a)!</small></h3></div> <br>

      
      <hr>
      <div class="row">

        
        <!-- Inicio  Menu -->
        <div class="container">
          <div class="row">
              <div class="col">
            
            <a class="btn btn-dark btn-block" href="PesquisaCartaoController" role="button">Lista Cartões</a> <br> <br>
            </div>
            <div class="col">
            <a class="btn btn-dark btn-block" href="ManterCartaoController?acao=prepararOperacao&operacao=Incluir" role="button">Incluir Cartão</a> <br> <br>
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