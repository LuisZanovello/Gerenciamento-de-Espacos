<%--
  Created by IntelliJ IDEA.
  User: luisg
  Date: 10/10/2018
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Pesquisa Tipo Espaco</title>
</head>
<body>
    
    
<table border="1">
    <tr>
        <th colspan="10">Tipo Espaço</th>
    </tr>
    <tr>
        <th>Código Tipo de Espaco</th>
        <th>Nome</th>
        <th>Modalidade Predominante</th>
        <th colspan=2>Ação</th>
    </tr>
    <c:forEach items="${tiposEspacos}" var="tipoEspaco">
        <tr>
            <td><c:out value="${tipoEspaco.id}" /></td>
            <td><c:out value="${tipoEspaco.nome}" /></td>
            <td><c:out value="${tipoEspaco.id}" /></td>
            <td><a href="ManterTipoEspacoController?acao=prepararOperacao&operacao=Editar&id= <c:out value="${tipoEspaco.id}"/>">Editar</a></td>
            <td><a href="ManterTipoEspacoController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${tipoEspaco.id}"/> ">Excluir</a></td>
        </tr>
    </c:forEach>
</table>
<form action="ManterTipoEspacoController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
</form>
<a href="index.jsp"><button value="Voltar">Voltar</button></a>
</body>

</html>
