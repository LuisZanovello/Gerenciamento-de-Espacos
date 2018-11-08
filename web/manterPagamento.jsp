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
        <form action="ManterPagamentoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterPagamento">
            <table>

                <tr>
                    <td>Codigo do Pagamento: </td>
                    <td> <input type="text" name="txtCodPagamento" value="${pag.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                    </tr>

                    <tr>
                        <td>Vencimento: </td>
                        <td> <input type="text" name="txtVencimentoPagamento" value="${pag.vencimento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    </tr>

                    <tr>
                        <td>Codigo de Barras: </td>
                        <td> <input type="text" name="txtCodBarrasPagamento" value="${pag.numeroCodBarras}"<c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                    </tr>

                    <tr>
                        <td>Valor Total: </td>
                        <td> <input type="text" name="txtValorTotalPagamento" value="${pag.valorTotal}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
                </tr>
                <td>Reserva:</td>
                    <td>
                        <select name="optReserva" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <c:forEach items="${reservas}" var="reserva">
                                <option value="${reserva.id}" <c:if test="${reserva.id == pagamento.idReserva}"> selected</c:if>>${reserva.id}</option>  
                            </c:forEach>
                        </select>
                    </td>
                </tr>


            </table>

            <input type="submit" name="btnConfirmar" value="Confirmar">
        </form>
<a href="PesquisaPagamentoController"><button value="Voltar">Voltar</button></a>

    </body>
</html>
