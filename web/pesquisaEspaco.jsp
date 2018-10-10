<%--
  Created by IntelliJ IDEA.
  User: luisg
  Date: 10/10/2018
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Pesquisa de Espaco</title>
</head>
<body>
<h1>Pesquisa de Espaco</h1>
<table border="1">
    <tr>
        <th>Código Espaco</th>
        <th>Nome</th>
        <th colspan=2>Ação</th>
    </tr>
    <c: forEach items="${espacos}" var="espaco">
        <tr>
            <td><c: out value="${espaco.id}" /></td>
            <td><c: out value="${espaco.nome}" /></td>
            <td><a href="ManterEspacoController?acao=prepararOperacao&operacao=Editar&id= <c: out value="${espaco.id}"/>">Editar</a></td>
            <td><a href="ManterEspacoController?acao=prepararOperacao&operacao=Excluir&id= <c: out value="${espaco.id}"/>">Excluir</a></td>
        </tr>
    </c: forEach>
</table>
<form action="ManterEspacoController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
</form>
</body>
</html>
