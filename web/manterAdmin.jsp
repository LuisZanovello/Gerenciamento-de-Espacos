<%-- 
    Document   : manterAdmin
    Created on : 23/10/2018, 09:43:17
    Author     : viict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Administrador</title>
    </head>
    <body>
        
         <h1>Manter Admin - ${operacao} </h1>
         <form action="ManterAdministradorController?acao=prepararOperacao&operacao=${operacao}" method="post" name="frmManterAdmin">
          <table>
              
              <tr>
              <td>Codigo do admin: </td>
              <td><input type="text" name="txtCodAdmin" value="${admin.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>> </td>
              </tr>
              
              <tr>
              <td>Nome do admin: </td>
              <td> <input type="text" name="txtNomeAdmin" value="${admin.nome}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>>  </td>
              </tr>
              
              <tr>
              <td>Email do admin: </td>
              <td> <input type="text" name="txtEmailAdmin" value="${admin.email}" <c:if test="${operacao == 'Excluir'}">readonly</c:if>>  </td>
              </tr>
              
              
              
        </table>

        <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>
              
              
    </body>
</html>
