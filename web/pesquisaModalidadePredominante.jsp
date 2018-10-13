<%--
  Created by IntelliJ IDEA.
  User: luisg
  Date: 10/10/2018
  Time: 18:48
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
    <title>Pesquisa Modalidade Predominante</title>
</head>
<body>
<h1>Pesquisa de Modalidade Predominante</h1>
<table border="1">
    <tr>
        <th>Código Modalidade</th>
        <th>Modalidade Predominante</th>
        <th colspan=2>Ação</th>
    </tr>
    <c:forEach items="${modalidadesPredominantes}" var="modalidadePredominante">
        <tr>
            <td><c:out value="${modalidadePredominante.id}" /></td>
            <td><c:out value="${modalidadePredominante.modalidadePredominante}" /></td>
            <td><a href="ManterModalidadePredominanteController?acao=prepararOperacao&operacao=Editar&id= "><c:out value="${modalidadePredominante.id}"/>Editar</a></td>
            <td><a href="ManterModalidadePredominanteController?acao=prepararOperacao&operacao=Excluir&id= "><c:out value="${modalidadePredominante.id}"/>Excluir</a></td>
        </tr>
    </c:forEach>
</table>
<form action="ManterModalidadePredominanteController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">

    <a href="index.jsp">voltar</a>
</form>
</body>
</html>
