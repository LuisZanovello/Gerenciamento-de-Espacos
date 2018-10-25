<%-- 
    Document   : manterTipoEspaco
    Created on : 24/10/2018, 23:32:10
    Author     : luisg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tipo de Espaço</title>
    </head>
    <body>
       <h2>Manter Irregularidade - ${operacao}</h2>
         <form action="ManterIrregularidadeController?acao=confirmarOperacao&operacao=${operacao}" method="post">
<table>
    <tr>
    <td>Código Tipo Espaço</td>
    <td><input type="text" name="txtIdTipoEspaco" value="${tipoEspaco.id}"></td>
    </tr>
     <tr>
    <td>Tipo Espaço</td>
    <td><input type="text" name="txtTipoEspaco" value="${tipoEspaco.nome}"></td>
    </tr>
    
</table>
    <input type="submit" name="btnConfirmar" value="Confirmar">
         </form>
    </body>
</html>
