<%--
  Created by IntelliJ IDEA.
  User: Iza Ribeiro
  Date: 11/10/2018
  Time: 00:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>Código cartao</th>
        <th>Nome cartao</th>
        <th colspan="2">Ação</th>
    </tr>

    <c: forEach items="${cartoes}" var="cliente">
        <tr>
            <td><c: out value="${cartao.id}"/></td>
            <td><c: out value="${cartao.nome}"/></td>
            <td><a href="ManterCartaoController?acao=prepararOperacao&operacao=Editar&id=<c: out value="${cartao.id}"/>">Editar</a></td>
            <td><a href="ManterCartaoController?acao=prepararOperacao&operacao=Excluir&id=<c: out value="${cartao.id}"/>">Excluir</a></td>
        </tr>

        </c: forEach>
</table>

<form action="ManterCartaoController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
</form>
</body>
</html>

