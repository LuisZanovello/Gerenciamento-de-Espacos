<%-- 
    Document   : manterDisponibilidade
    Created on : 23/10/2018, 10:44:25
    Author     : Iza Ribeiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disponibilidade</title>
    </head>

    <body>
        <h1>Manter Disponibilidade- ${operacao}</h1>
    <form action="ManterDisponibilidadeController?acao=confirmarOperacao&operacao=${operacao}" method="post">
    
        <table>
        <tr>
            <td>Código do disponibilidade: </td>
            <td><input type="text" name="txtIdDisponibilidade" value="${disponibilidade.id}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
        </tr>
        <tr>
            <td>Data Dsponivel: </td>
            <td><input type="text" name="txtDataDisponibilidade" value="${disponibilidade.dataDisponivel}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
        <tr>
            <td>Hora Inicio: </td>
            <td><input type="text" name="txtHoraInicioDisponibilidade" value="${disponibilidade.hora_inicio}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
        <tr>
            <td>Hora Final: </td>
            <td><input type="text" name="txtHoraFimDisponibilidade" value="${disponibilidade.hora_fim}"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
        </tr>
        <td>Espaco:</td>
                    <td>
                        <select name="optEspaco" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <c:forEach items="${espacos}" var="espaco">
                                <option value="${espaco.id}" <c:if test="${espaco.id == disponibilidade.idEspaco}"> selected</c:if>>${espaco.nome}</option>  
                            </c:forEach>
                        </select>
                    </td>
                </tr>
       
    </table>
        
    <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>
<a href="PesquisaDisponibilidadeController"><button value="Voltar">Voltar</button></a>
    </body>
</html>
