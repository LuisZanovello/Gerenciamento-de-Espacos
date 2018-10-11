<%--
  Created by IntelliJ IDEA.
  User: Iza Ribeiro
  Date: 11/10/2018
  Time: 00:10
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
        <th>Código contato</th>
        <th>Nome contato</th>
        <th colspan="2">Ação</th>
    </tr>

    <c: forEach items="${contatos}" var="contato">
        <tr>
            <td><c: out value="${contato.id}"/></td>
            <td><c: out value="${contato.nome}"/></td>
            <td><a href="ManterContatoController?acao=prepararOperacao&operacao=Editar&id=<c: out value="${contato.id}"/>">Editar</a></td>
            <td><a href="ManterContatoController?acao=prepararOperacao&operacao=Excluir&id=<c: out value="${contato.id}"/>">Excluir</a></td>
        </tr>

        </c: forEach>
</table>

<form action="ManterContatoController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
</form>
</body>
</html>
