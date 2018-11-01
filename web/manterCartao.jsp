<%-- 
    Document   : manterCartao
    Created on : 23/10/2018, 10:44:25
    Author     : Iza Ribeiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cartao</title>
    </head>

    <body>
        <h1>Manter Cartao- ${operacao}</h1>
    <form action="ManterCartaoController?acao=confirmarOperacao&operacao=${operacao}" method="post">
    
        <table>
        <tr>
            <td>Código do cartao: </td>
            <td><input type="text" name="txtIdCartao" value="${cartao.id}"  <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
        </tr>
        <tr>
            <td>Bandeira do cartao: </td>
            <td><input type="text" name="txtBandeiraCartao" value="${cartao.bandeira}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
                <tr>
            <td>Validade do cartao: </td>
            <td><input type="text" name="txtValidadeCartao" value="${cartao.bandeira}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
                <tr>
            <td>Número do cartao: </td>
            <td><input type="text" name="txtNumeroCartao" value="${cartao.bandeira}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
                <tr>
            <td>Codigo do cartao: </td>
            <td><input type="text" name="txtCodCartao" value="${cartao.bandeira}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
                 <td>Cliente:</td>
                    <td>
                        <select name="optCliente" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                            <c:forEach items="${clientes}" var="cliente">
                                <option value="${cliente.id}" <c:if test="${cliente.id == cartao.idCliente}"> selected</c:if>>${cliente.nome}</option>  
                            </c:forEach>
                        </select>
                    </td>
                </tr>

    </table>
        
    <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>

    </body>
</html>
