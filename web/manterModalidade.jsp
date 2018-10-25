<%-- 
    Document   : manterModalidade
    Created on : 24/10/2018, 23:23:51
    Author     : luisg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modalidade</title>
    </head>
    <body>
        <h2>Manter Modalidade - ${operacao}</h2>
         <form action="ManterModalidadeController?acao=confirmarOperacao&operacao=${operacao}" method="post">
<table>
    <tr>
    <td>Código Modalidade</td>
    <td><input type="text" name="txtIdModalidade" value="${modalidade.id}"></td>
    </tr>
    <tr>
    <td>Modalidade</td>
    <td><input type="text" name="txtModalidade" value="${modalidade.modalidade}"></td>
    </tr>
    <tr>
    <td>Descrição</td>
    <td><input type="text" name="txtDescricao" value="${modalidade.descricao}"></td>
    </tr>
</table>
     <input type="submit" name="btnConfirmar" value="Confirmar">
         </form>
    </body>
</html>
