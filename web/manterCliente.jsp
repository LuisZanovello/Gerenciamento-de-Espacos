<%-- 
    Document   : manterCliente
    Created on : 23/10/2018, 10:44:25
    Author     : Iza Ribeiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente</title>
    </head>

    <body>
        <h1>Manter Cliente- ${operacao}</h1>
    <form action="ManterClienteController?acao=confirmaOperacao&operacao=${operacao}" method="post">
    
        <table>
        <tr>
            <td>Código do cliente: </td>
            <td><input type="text" name="txtIdCliente" value="${cliente.id}"></td>
        </tr>
        <tr>
            <td>Nome do cliente: </td>
            <td><input type="text" name="txtNomeCliente" value="${cliente.nome}"></td>
        </tr>
        <tr>
            <td>Sobrenome: </td>
            <td> <input type="text" name="txtSobrenomeCliente" value="${cliente.sobrenome}"></td>
        </tr>
         <tr>
            <td>Data de Nascimento: </td>
            <td> <input type="text" name="txtSobrenomeCliente" value="${cliente.dataNascimento}"></td>
        </tr>
        <tr>
            <td>Email: </td>
            <td> <input type="text" name="txtSobrenomeCliente" value="${cliente.email}"></td>
        </tr>
        <tr>
            <td>CPF: </td>
            <td> <input type="text" name="txtSobrenomeCliente" value="${cliente.cpf}"></td>
        </tr>
    </table>
        
    <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>

    </body>
</html>
