<%--
  Created by IntelliJ IDEA.
  User: Iza Ribeiro
  Date: 11/10/2018
  Time: 00:15
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
        <th>Código disponibildade</th>
        <th>Nome disponibildade</th>
        <th colspan="2">Ação</th>
    </tr>

    <c: forEach items="${disponibildades}" var="disponibildade">
        <tr>
            <td><c: out value="${disponibildade.id}"/></td>
            <td><c: out value="${disponibildade.nome}"/></td>
            <td><a href="ManterDisponibilidadeController?acao=prepararOperacao&operacao=Editar&id=<c: out value="${disponibildade.id}"/>">Editar</a></td>
            <td><a href="ManterDisponibilidadeController?acao=prepararOperacao&operacao=Excluir&id=<c: out value="${disponibildade.id}"/>">Excluir</a></td>
        </tr>

        </c: forEach>
</table>

<form action="ManterDisponibilidadeController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
</form>
</body>
</html>