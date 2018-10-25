<%-- 
    Document   : manterReembolso
    Created on : 23/10/2018, 20:00:16
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
        <form action="ManterReembolsoController?acao=prepararOperacao&operacao=${operacao}" method="post">
            <table>

                <tr>
                    <td>Codigo do reembolso: </td>
                    <td> <input type="text" name="txtCodReembolso" value="${reembol.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>> </td>
                </tr>

                <tr>
                    <td>Status </td>
                    <td> <input type="text" name="txtStatus" value="${reembol.estado}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>> </td>
                </tr>

            </table>

            <input type="submit" name="btnConfirmar" value="Confirmar">
        </form>

    </body>
</html>
