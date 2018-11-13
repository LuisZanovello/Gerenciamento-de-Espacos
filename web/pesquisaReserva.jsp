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
    <title>Reserva</title>
</head>
<body>


<table border="1">
    <tr>
        <th colspan="10">Reserva</th>
    </tr>
    <tr>
        <th>Id</th>
        <th>Data da Locação</th>
        <th>Hora inicio</th>
        <th>Hora fim</th>


        <th colspan="2">Ação</th>
    </tr>
    <c:forEach items="${reservas}" var="resv">
        <tr>
            <td><c:out value="${resv.id}" /></td>
            <td><c:out value="${resv.dataLocacao}" /></td>
            <td><c:out value="${resv.horaInicioLocacao}" /></td>
            <td><c:out value="${resv.horaFimLocacao}" /></td>

            <td><a href="ManterReservaController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${resv.id}"/>">Editar</a></td>
            <td><a href="ManterReservaController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${resv.id}"/>">Excluir</a></td>
        </tr>
    </c:forEach>
</table>

<form action="ManterReservaController?acao=prepararOperacao&operacao=Incluir" method="post">
    <input type="submit" name="btnIncluir" value="Incluir">
</form>
<a href="index.jsp"><button value="Voltar">Voltar</button></a>

</body>
</html>
