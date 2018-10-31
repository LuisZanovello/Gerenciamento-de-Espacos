<%-- 
    Document   : manterCliente
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
        <title>Cliente</title>
    </head>

    <body>
        <h1>Manter Cliente- ${operacao}</h1>
    <form action="ManterClienteController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterCliente">
    
        <table>
        <tr>
            <td>Código do cliente: </td>
            <td><input type="text" name="txtIdCliente" value="${cliente.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
        </tr>
        <tr>
            <td>Nome do cliente: </td>
            <td><input type="text" name="txtNomeCliente" value="${cliente.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
        <tr>
            <td>Sobrenome: </td>
            <td> <input type="text" name="txtSobrenomeCliente" value="${cliente.sobrenome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
         <tr>
            <td>Data de Nascimento: </td>
            <td> <input type="text" name="txtDataNascimentoCliente" value="${cliente.dataNascimento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
        <tr>
            <td>Email: </td>
            <td> <input type="text" name="txtEmailCliente" value="${cliente.email}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
        <tr>
            <td>CPF: </td>
            <td> <input type="text" name="txtCPFCliente" value="${cliente.cpf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
    </table>
        
    <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>

    </body>
</html>
