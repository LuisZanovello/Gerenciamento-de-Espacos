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
        <form action="ManterReservaController?acao=confirmarOperacao&operacao=${operacao}" method="POST">
          <table>
              
              <tr>
              <td>Codigo do reserva: </td>
              <td> <input type="text" name="txtCodReserva" value="${reserva.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
              </tr>
              
              <tr>
              <td>Data da locação: </td>
              <td> <input type="text" name="txtDataLocacao" value="${reserva.dataLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
              </tr>
              
              <tr>
              <td> Horário de Inicio </td>
              <td> <input type="text" name="txtHrInicio" value="${reserva.horaInicioLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
              </tr>
             
              <tr>
              <td> Horário de Fim </td>
              <td> <input type="text" name="txtHrFim" value="${reserva.horaFimLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
              </tr> 
              
              <tr>
              <td> Quantidade de pessoas </td>
              <td> <input type="text" name="txtqtPessoas" value="${reserva.qtPessoas}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
              </tr> 
              
                           <tr>
              <td> Valor da Locação</td>
              <td> <input type="text" name="txtvalorLocacao" value="${reserva.valorLocacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
              </tr> 
              
                                     <tr>
              <td> Avaliação</td>
              <td> <input type="text" name="txtAvaliacao" value="${reserva.notaAvaliacao}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>></td>
              </tr> 
              
              
              <td>CPF do Cliente:</td>
                    <td>
                        <select name="optCliente" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                            <c:forEach items="${clientes}" var="cliente">
                                <option value="${cliente.id}" <c:if test="${cliente.id == reserva.idCliente}"> selected</c:if>>${cliente.cpf}</option>  
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                
                <td>Local de Reserva:</td>
                    <td>
                        <select name="optEspaco" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                            <c:forEach items="${espacos}" var="espaco">
                                <option value="${espaco.id}" <c:if test="${espaco.id == reserva.idEspaco}"> selected</c:if>>${espaco.nome}</option>  
                            </c:forEach>
                        </select>
                    </td>
                </tr>
              
        </table>

        <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>
        
    </body>
</html>
