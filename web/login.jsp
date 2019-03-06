<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="pt-br">
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




        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        

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
                         <li>
                            <a class="nav-link"  href="ManterClienteController?acao=prepararOperacao&operacao=Incluir">Cadastro</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>


        <div class="container corpo">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <c:choose>
                        <c:when test="${mensagemErro!=null}">
                            <div class="alert alert-danger alert-dismissable fade in">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <strong>Ops!</strong> ${mensagemErro}.
                            </div>
                        </c:when>    
                    </c:choose>
                    
                    
                    
                    <div class="panel panel-primary">
                        <div class="col">
            <div>
                <h1 class="text-center" > Login</h1> <hr>  <br><br>

            </div></div>
                        <!--<div class="panel-heading"><h1>Login</h1></div>-->
                        <div class="panel-body">
                            <form action="LoginController?acao=logar" method="post" name="frmManterAtleta">
                                <div class="form-group">
                                    <label for="email">Email:</label>
                                    <input type="email" required class="form-control" placeholder="email@gmail.com" id="email" name="email" data-dismiss="alert" aria-label="close" autofocus>
                                </div>
                                <div class="form-group">
                                    <label for="senha">Senha:</label>
                                    <input type="password" required class="form-control" placeholder="******" id="senha" name="senha">
                                </div>
                                <div class="form-group">
                                    <div class="radio-inline">
                                        <label><input type="radio" name="optUsuario" checked="checked" value="administrador">Administrador</label>
                                    </div>
                                    <div class="radio-inline">
                                        <label><input type="radio" name="optUsuario"  value="cliente">Cliente</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-2">
                                        <button type="submit" class="btn btn-info btn-block">Entrar</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br><br>
        <br><br>
        <br><br>
        <br>
        
        <!-- Bootstrap JS and jQuery -->
        <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
        <script type="text/javascript" src="public/bootstrap/js/jquery-3.2.1.js"></script>
        <script type="text/javascript" src="public/bootstrap/js/bootstrap.js"></script>
        
        <!--inicio Footer-->
<%@ include file = "Footer.jsp" %>
<!--fim Footer-->
    </body>
</html>