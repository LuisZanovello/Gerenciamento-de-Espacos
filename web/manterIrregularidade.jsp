<%-- 
    Document   : manterIrregularidade
    Created on : 23/10/2018, 10:43:57
    Author     : luisg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Irregularidade</title>
    </head>
    <body>
        <h2>Manter Irregularidade - ${operacao}</h2>
         <form action="ManterIrregularidadeController?acao=confirmarOperacao&operacao=${operacao}" method="post">
<table>
    <tr>
    <td>Código Irregularidade</td>
    <td><input type="text" name="txtIdIrregularidade" value="${irregularidade.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Autor</td>
    <td><input type="text" name="txtAutorIrregularidade" value="${irregularidade.autor}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td> 
    </tr>
    <tr>
    <td>Descrição</td>
    <td><input type="text" name="txtDescricaoIrregularidade" value="${irregularidade.descricao}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td> 
    </tr>
     <td>Espaco:</td>
                    <td>
                        <select name="optEspaco" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <c:forEach items="${espacos}" var="espaco">
                                <option value="${espaco.id}" <c:if test="${espaco.id == irregularidade.idEspaco}"> selected</c:if>>${espaco.nome}</option>  
                            </c:forEach>
                        </select>
                    </td>
                </tr>
</table>
    <input type="submit" name="btnConfirmar" value="Confirmar">
        </form>
    <a href="PesquisaIrregularidadeController"><button value="Voltar">Voltar</button></a>
    </body>
</html>
