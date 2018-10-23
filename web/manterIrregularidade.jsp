<%-- 
    Document   : manterIrregularidade
    Created on : 23/10/2018, 10:43:57
    Author     : luisg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Manter Irregularidade - ${operacao}</h2>
         <form action="ManterIrregularidadeController?acao=confirmarOperacao&operacao=${operacao}" method="post">
<table>
    <tr>
    <td>Código Irregularidade</td>
    <td><input type="text" name="txtIdIrregularidade" value="${irregularidade.id}"></td>
    </tr>
    <tr>
    <td>Autor</td>
    <td><input type="text" name="txtIdIrregularidade" value="${irregularidade.autor}"></td> 
    </tr>
</table>
    <input type="submit" name="btnConfirmar" value="Confirmar">
        </form>
    </body>
</html>
