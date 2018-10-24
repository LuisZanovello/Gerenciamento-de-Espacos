<%--
  Created by IntelliJ IDEA.
  User: viict
  Date: 09/10/2018
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <title>Cartao</title>
</head>
<body>


<table border="1">
    <tr>
        <th colspan="10">Cartao</th>
    </tr>
    <tr>
        <th>Id</th>
        <th>Bandeira</th>

        <th colspan="2">Ação</th>
    </tr>
    <c:forEach items="${cartoes}" var="card">
        <tr>
            <td><c:out value="${card.id}" /></td>
            <td><c:out value="${card.bandeira}" /></td>
            <td><a href="ManterCartaoController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${card.id}"/>">Editar</a></td>
            <td><a href="ManterCartaoController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${card.id}"/>">Excluir</a></td>
        </tr>
    </c:forEach>
</table>

<form action="ManterCartaoController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
</form>
<a href="index.jsp"><button value="Voltar">Voltar</button></a>

</body>
</html>
