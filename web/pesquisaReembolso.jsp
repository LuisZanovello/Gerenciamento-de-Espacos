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
    <title>Reembolso</title>
</head>
<body>

   
<table border="1">
    <tr>
        <th colspan="10">Reembolso</th>
    </tr>
    <tr>
        <th>Id</th>
        <th>Status</th>
        
        <th colspan="2">Ação</th>
    </tr>
    <c:forEach items="${reembolsos}" var="reembolso">
        <tr>
            <td><c:out value="${reembolso.id}"/></td>
            <td><c:out value="${reembolso.estado}"/></td>
            <td><a href="ManterReembolsoController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${reembolso.id}"/>">Editar</a></td>
            <td><a href="ManterReembolsoController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${reembolso.id}"/>">Excluir</a></td>
        </tr>
    </c:forEach>
</table> <br>

<form action="ManterReembolsoController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
</form>
<a href="index.jsp"><button value="Voltar">Voltar</button></a>


</body>
</html>
