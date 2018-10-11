<%--
  Created by IntelliJ IDEA.
  User: viict
  Date: 09/10/2018
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>


<html>
<head>
    <title>Administrador</title>
</head>
<body>


<table border="1">
    <tr>
        <th colspan="5">Administrador</th>
    </tr>
    <tr>
        <th>Id</th>
        <th>Nome</th>
        <th>Email</th>
        <th colspan="2">Ação</th>
    </tr>
    <c:forEach items="${administrador}" var="admin">
        <tr>
            <td><c:out value="${admin.id}" /></td>
            <td><c:out value="${admin.nome}" /></td>
            <td><a href="ManterAdministradorController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${admin.id}"/>">Editar</a></td>
            <td><a href="ManterAdministradorController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${admin.id}"/>">Excluir</a></td>
        </tr>
    </c:forEach>
</table>

<form action="ManterAdministradorController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
</form>
<a href="index.html">voltar</a>

</body>
</html>
