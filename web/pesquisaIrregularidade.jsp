<%--
  Created by IntelliJ IDEA.
  User: luisg
  Date: 09/10/2018
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%--
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
--%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Pesquisa de Irregularidade</title>
</head>
<body>
<h1>Pesquisa de Irregularidade</h1>
<table border="1">
    <tr>
    <th>Código Irregularidade</th>
    <th>Autor</th>
    <th colspan=2>Ação</th>
    </tr>
    <c:forEach items="${irregularidades}" var="irregularidade">
        <tr>
            <td><c:out value="${irregularidade.id}" /></td>
            <td><c:out value="${irregularidade.autor}" /></td>
            <td><a href="ManterIrregularidadeController?acao=prepararOperacao&operacao=Editar&id= "><c:out value="${irregularidade.id}"/>Editar</a></td>
            <td><a href="ManterIrregularidadeController?acao=prepararOperacao&operacao=Excluir&id= "><c:out value="${irregularidade.id}"/>Excluir</a></td>
        </tr>
    </c:forEach>
</table>
<form action="ManterIrregularidadeController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">

    <a href="index.jsp">voltar</a>
</form>
</body>
</html>
