<%--
  Created by IntelliJ IDEA.
  User: Iza Ribeiro
  Date: 09/10/2018
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<head>
    <title>Cliente</title>
</head>
<body>
    <table border="1">
        <tr>
            <th colspan="10">Cliente</th>
        </tr>
    <tr>
        <th>Código cliente</th>
        <th>Nome cliente</th>
        <th>Sobrenome</th>
        <th colspan="2">Ação</th>
    </tr>

    <c:forEach items="${clientes}" var="cliente">
        <tr>
        <td><c:out value="${cliente.id}"/></td>
        <td><c:out value="${cliente.nome}"/></td>
        <td><c:out value="${cliente.sobrenome}"/></td>
        <td><a href="ManterClienteController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${cliente.id}"/>">Editar</a></td>
        <td><a href="ManterClienteController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${cliente.id}"/>">Excluir</a></td>
        </tr>

    </c:forEach>
    </table>

    <form action="ManterClienteController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
    </form>
    <a href="index.jsp"><button value="Voltar">Voltar</button></a>

</body>
</html>
