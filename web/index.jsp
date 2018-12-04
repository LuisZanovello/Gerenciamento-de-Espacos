<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html  lang="en, pt-br">

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
                position: absolute; 
                bottom: 0; 
                left: 0px; 
                right: 0px;
                width: 100%;
                text-align: center;
            }
            body{
                width: 100%;
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
                height: 500px;
            }

        </style>

    </head>

    <body background="https://www.setaswall.com/wp-content/uploads/2017/12/Basketball-Court-Wallpaper-29-1600x1066.jpg">

        <!-- Parte superior -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">iSport</a> <!-- Nome do site emblema no canto esquerdo superior-->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" 
                        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" 
                        aria-label="Toggle navigation" >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">

             
                        
                      
                        <li>
                            <a class="nav-link"  href="login.jsp">Login</a>
                        </li>
                        <li>
                            <a class="nav-link"  
                               href="ManterClienteController?acao=prepararOperacao&operacao=Incluir">Cadastro</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
                                
        
        
          


        <!-- Corpo da Pagina -->
        <div class="container">

            <div><h1 class="my-4" style="color: white; text-shadow: 3px 2px black">iSport </h1></div> <br>


            <hr>
            <div class="row">
                <!--Inicio -->
                <div class="col">
                    <div class="col-sm-12">
                        <h1 class="text-center"  style="color: white; text-shadow: 3px 2px black">Encontre o seu espaço e compare preços</h1><hr> <br><br> 
                    </div> 
                    </div>
                </div>
            </div>
       

        <!--Fim -->


            <br><br>
            <br><br>
            <br><br>
            <br><br>
            <br><br>
            <br><br>
            <br>
 
        
<!--inicio Header-->
<%@ include file = "Footer.jsp" %>
<!--fim Header-->



    </body>
</html>
