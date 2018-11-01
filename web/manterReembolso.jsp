<%-- 
    Document   : manterReembolso
    Created on : 26/10/2018, 12:18:31
    Author     : viict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Reembolso</title>
    </head>
    <body>

        <h1>Manter Reembolso - ${operacao} </h1>
        <form action="ManterReembolsoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterReembolso">
            <table>

                <tr>
                    <td>Codigo do Reembolso: </td>
                    <td><input type="text" name="txtCodReembolso" value="${reb.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                    </tr>

                    <tr>
                        <td>Status: </td>
                        <td> <input type="text" name="txtNomeReembolso" value="${reb.estado}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                </tr>
                
                <td>Número do Codigo de Barras:</td>
                    <td>
                        <select name="optPagamento" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                            <c:forEach items="${pagamentos}" var="pag">
                                <option value="${pag.id}" <c:if test="${pag.id == reb.idPagamento}"> selected</c:if>>${pag.numeroCodBarras}</option>  
                            </c:forEach>
                        </select>
                    </td>
                </tr>



            </table>

            <input type="submit" name="btnConfirmar" value="Confirmar">
        </form>

    </body>
</html>
