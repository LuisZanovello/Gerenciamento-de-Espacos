<%--
  Created by IntelliJ IDEA.
  User: viict
  Date: 09/10/2018
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<head>
    <title>Pagamento</title>
</head>
<body>


<table border="1">
    <tr>
        <th colspan="5">Pagamento</th>
    </tr>
    <tr>
        <th>Id</th>
        <th>Vencimento</th>
        <th>Valor</th>
        <th colspan="2">Ação</th>
    </tr>
    <c:forEach items="${pagamento}" var="admin">
        <tr>
            <td><c:out value="${admin.id}" /></td>
            <td><c:out value="${admin.vencimento}" /></td>
            <td><c:out value="${admin.valorTotal}" /></td>
            <td><a href="ManterPagamentoController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${admin.id}"/>">Editar</a></td>
            <td><a href="ManterPagamentoController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${admin.id}"/>">Excluir</a></td>
        </tr>
    </c:forEach>
</table>

<form action="ManterPagamentoController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
</form>
<a href="index.html">voltar</a>

</body>
</html>
