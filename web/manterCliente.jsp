
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html  lang="en, pt-br">
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


        <!-- INICIO JavaScript para o formulario-->

        <script language="javascript" type="text/javascript">
            function validar() {
                var txtIdCliente = form1.txtIdCliente.value;
                var txtNomeCliente = form1.txtNomeCliente.value;
                var txtSobrenomeCliente = form1.txtSobrenomeCliente.value;
                var txtEmailCliente = form1.txtEmailCliente.value;
                var txtSenhaCliente = form1.txtSenhaCliente.value;
                var txtDataNascimentoCliente = form1.txtDataNascimentoCliente.value;
                var txtCPFCliente = form1.txtCPFCliente.value;
                var rep_senha = form1.rep_senha.value;

                if (txtIdCliente === "") {
                    alert('Preencha o campo com um código, não permita que seja vazio');
                    form1.txtIdCliente.focus();
                    return false;
                }
                if (txtIdCliente <= 0) {
                    alert('Preencha o campo com um código ACIMA de número NEGATIVO');
                    form1.txtIdCliente.focus();
                    return false;
                }
                if (txtNomeCliente === "") {
                    alert('Preencha o campo com seu nome corretamente');
                    form1.txtNomeCliente.focus();
                    return false;
                }
                if (txtSobrenomeCliente === "") {
                    alert('Preencha o campo com seu sobrenome');
                    form1.txtSobrenomeCliente.focus();
                    return false;
                }


                if (txtDataNascimentoCliente === "") {
                    alert('Preencha o campo da data de aniversário');
                    form1.txtDataNascimentoCliente.focus();
                    return false;
                }


                if (txtCPFCliente <= 0 ) {
                    alert('Preencha o campo com seu CPF com números ACIMA DE NEGATIVO');
                    form1.txtCPFCliente.focus();
                    return false;
                }

                if (txtCPFCliente === "") {
                    alert('Preencha o campo com seu CPF');
                    form1.txtCPFCliente.focus();
                    return false;
                }


                if (txtEmailCliente === "") {
                    alert('Preencha o campo com um e-mail válido');
                    form1.txtEmailCliente.focus();
                    return false;
                }

                if (txtSenhaCliente === "") {
                    alert('Preencha o campo com seu nome');
                    form1.txtSenhaCliente.focus();
                    return false;
                }


                if (txtSenhaCliente !== rep_senha) {
                    alert('Senhas diferentes');
                    form1.txtSenhaCliente.focus();
                    return false;
                }



            }
        </script>

        <!-- FIM JavaScript para o formulario-->



        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Cliente - ${operacao}</title>
    </head>

    <body>

        <!-- INICIO Navegador superior-->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">iSport</a> <!-- Nome do site emblema no canto esquerdo superior-->
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">

                 



                    </ul>
                </div>

                <!-- INICIO DROPDOWN-->
                <div>

                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Classes
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">

                                <a class="dropdown-item" href="PesquisaClienteController">Cliente</a>                                
                                <a class="dropdown-item" href="indexContato.jsp">Contato</a>
                                <a class="dropdown-item" href="PesquisaCartaoController">Cartão</a>
                                <a class="dropdown-item" href="PesquisaDisponibilidadeController">Disponibilidade</a>

                                <a class="dropdown-item" href="PesquisaEspacoController">Espaços</a>
                                <a class="dropdown-item" href="PesquisaTipoEspacoController">Tipo de Espaço</a>
                                <a class="dropdown-item" href="PesquisaModalidadeController">Modalidade</a>
                                <a class="dropdown-item" href="PesquisaIrregularidadeController">Irregularidade</a>


                                <a class="dropdown-item" href="PesquisaReservaController">Reservas</a>
                                <a class="dropdown-item" href="PesquisaPagamentoController">Pagamento</a>
                                <a class="dropdown-item" href="PesquisaReembolsoController">Reembolso</a>    
                                
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Sair</a> <!-- primeiro link direita superior-->
                        </li>
                    </ul>
                </div>


                <!-- FIM DROPDOWN-->

            </div>
        </nav>
        <!-- FIM Navegador superior-->
    </div>
</nav>
<!-- FIM Navegador superior-->


<br>
<br>
<div class="container"><!--Div centralizadora-->
    <div class="col">
        <div>
            <h1 class="text-center">${operacao} - Cliente  </h1> <hr>  <br><br>

        </div>
    </div>

            <!--Inicio Formulario-->
    <form name="form1" action="ManterClienteController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterAdminCliente">


        


        <div class="col-lg-12">
            <table class="table table-striped">
                <thead>
                <tbody>
                <br>

                <tr>
                    <td>Código do cliente: </td>
                    <td><input type="number"  placeholder="Digite um codigo"  class="form-control" name="txtIdCliente" size="60"  value="${cliente.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>Nome do cliente: </td>
                        <td><input type="text"  class="form-control"   placeholder="Digite seu nome" name="txtNomeCliente" size="60"  value="${cliente.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>Sobrenome: </td>
                        <td> <input type="text"  class="form-control"   placeholder="Digite seu Sobrenome" name="txtSobrenomeCliente" size="60"  value="${cliente.sobrenome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>Data de Nascimento: </td>
                        <td> <input type="date"  class="form-control"  name="txtDataNascimentoCliente" size="60"  value="${cliente.dataNascimento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>Email: </td>
                        <td> <input type="text"  class="form-control"  placeholder="Digite seu e-mail"  name="txtEmailCliente" size="60"  value="${cliente.email}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>
                    <tr>
                        <td>CPF: </td>
                        <td> <input type="number" class="form-control"   placeholder="Digite seu CPF" name="txtCPFCliente" maxlength="11"  value="${cliente.cpf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>

                    <tr>
                        <td>Senha do Cliente: </td>
                        <td> <input type="password" class="form-control"  placeholder="Digite uma senha de 6 digitos" name="txtSenhaCliente" maxlength="6" value="${cliente.senha}" <c:if test="${operacao == 'Excluir' }">readonly</c:if>>  </td>
                    </tr>

                    <tr>
                        <td>Confirme a Senha</td>
                        <td> <input type="password"  placeholder="Confirme sua senha" class="form-control" name="rep_senha" maxlength="6"  value="${cliente.senha}" <c:if test="${operacao == 'Excluir' }">readonly</c:if>>  </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div>
            <input type="submit"  onclick="return validar()"  name="btnConfirmar"  class="btn btn-outline-primary" role="button" aria-pressed="true" value="Confirmar">

            <a href="PesquisaClienteController" class="btn btn-outline-danger" role="button" aria-pressed="true" value="Voltar">Voltar</a>

        </div>        
    </form>
                <!--FIM formulario-->
</div> 

<hr>
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
