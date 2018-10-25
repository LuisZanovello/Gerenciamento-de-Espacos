<%-- 
    Document   : manterContato
    Created on : 23/10/2018, 10:44:25
    Author     : Iza Ribeiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contato</title>
    </head>

    <body>
        <h1>Manter Contato- ${operacao}</h1>
    <form action="ManterContatoController?acao=confirmaOperacao&operacao=${operacao}" method="post">
    
        <table>
        <tr>
            <td>Código do contato: </td>
            <td><input type="text" name="txtIdCliente" value="${contato.id}"></td>
        </tr>
        <tr>
            <td>Número de contato: </td>
            <td><input type="text" name="txtNomeCliente" value="${contato.numero}"></td>
        </tr>

    </table>
        
    <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>

    </body>
</html>
