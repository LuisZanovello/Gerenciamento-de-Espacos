<%-- 
    Document   : manterReserva
    Created on : 23/10/2018, 19:05:14
    Author     : viict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Reserva</title>
    </head>
    <body>
        
        <h1>Manter Reserva - ${operacao}</h1>
        <form action="ManterReservaController?acao=prepararOperacao&operacao=${operacao}">
          <table>
              
              <tr>
              <td>Codigo do reserva: </td>
              <td> <input type="text" name="txtCodReserva" value="${resv.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
              </tr>
              
              <tr>
              <td>Data da locação: </td>
              <td> <input type="text" name="txtNomeReserva" value="${resv.dataLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
              </tr>
              
              <tr>
              <td> Horário de Inicio </td>
              <td> <input type="text" name="txtHrInicio" value="${resv.horaInicioLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
              </tr>
             
              <tr>
              <td> Horário de Fim </td>
              <td> <input type="text" name="txtHrFim" value="${resv.horaFimLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
              </tr> 
              
              
        </table>

        <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>
        
    </body>
</html>
