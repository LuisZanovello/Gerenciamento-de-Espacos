<%--
  Created by IntelliJ IDEA.
  User: luisg
  Date: 10/10/2018
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Modalidade Predominante</title>
</head>
<body>

<table border="1">
    <tr>
        <th colspan="10">Modalidades</th>
    </tr>
    <tr>
        <th>Código Modalidade</th>
        <th>Modalidade Predominante</th>
        <th colspan=2>Ação</th>
    </tr>
    <c:forEach items="${modalidades}" var="modalidade">
        <tr>
            <td><c:out value="${modalidade.id}" /></td>
            <td><c:out value="${modalidade.modalidade}" /></td>
            <td><a href="ManterModalidadeController?acao=prepararOperacao&operacao=Editar&id= <c:out value="${modalidade.id}"/>">Editar</a></td>
            <td><a href="ManterModalidadeController?acao=prepararOperacao&operacao=Excluir&id= <c:out value="${modalidade.id}"/>">Excluir</a></td>
        </tr>
    </c:forEach>
</table>
<form action="ManterModalidadeController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
</form>
<a href="index.jsp"><button value="Voltar">Voltar</button></a>
</body>
</html>
