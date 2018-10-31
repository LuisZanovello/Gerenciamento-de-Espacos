<%-- 
    Document   : manterPagamento
    Created on : 23/10/2018, 19:27:39
    Author     : viict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Pagamento</title>
    </head>
    <body>
        <h1>Manter Pagamento - ${operacao} </h1>
    <form action="ManterPagamentoController?acao=confirmarOperacao&operacao=${operacao}">
          <table>
              
              <tr>
              <td>Codigo do Pagamento: </td>
              <td> <input type="text" name="txtCodPagamento" value="${pagamento.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
              </tr>
              
              <tr>
              <td>Vencimento: </td>
              <td> <input type="text" name="txtVencimentoPagamento" value="${pagamento.vencimento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
              </tr>
              
               <tr>
              <td>Codigo de Barras: </td>
              <td> <input type="text" name="txtCodBarrasPagamento" value="${pagamento.numeroCodBarras}"<c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
              </tr>
              
               <tr>
              <td>Valor Total: </td>
              <td> <input type="text" name="txtValorTotalPagamento" value="${pagamento.valorTotal}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
              </tr>
              
              
        </table>

        <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>
              
              
    </body>
</html>
