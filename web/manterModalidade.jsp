<%-- 
    Document   : manterModalidade
    Created on : 24/10/2018, 23:23:51
    Author     : luisg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <td><input type="text" name="txtIdModalidade" value="${modalidade.id}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Modalidade</td>
    <td><input type="text" name="txtModalidade" value="${modalidade.modalidade}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Descrição</td>
    <td><input type="text" name="txtDescricao" value="${modalidade.descricao}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
</table>
     <input type="submit" name="btnConfirmar" value="Confirmar">
         </form>
    <a href="PesquisaModalidadeController"><button value="Voltar">Voltar</button></a>
    </body>
</html>
