<%-- 
    Document   : manterCartao
    Created on : 23/10/2018, 10:44:25
    Author     : Iza Ribeiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cartao</title>
    </head>

    <body>
        <h1>Manter Cartao- ${operacao}</h1>
    <form action="ManterCartaoController?acao=confirmaOperacao&operacao=${operacao}" method="post">
    
        <table>
        <tr>
            <td>Código do cartao: </td>
            <td><input type="text" name="txtIdCartao" value="${cartao.id}"></td>
        </tr>
        <tr>
            <td>Bandeira do cartao: </td>
            <td><input type="text" name="txtNomeCartao" value="${cartao.bandeira}"></td>
        </tr>

    </table>
        
    <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>

    </body>
</html>
