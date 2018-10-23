<%-- 
    Document   : manterAdmin
    Created on : 23/10/2018, 09:43:17
    Author     : viict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manter Administrador</title>
    </head>
    <body>
        
         <h1>Manter Admin - ${operacao} </h1>
    <form action="ManterAdministradorController?acao=prepararOperacao&operacao=${operacao}">
          <table>
              
              <tr>
              <td>Codigo do admin: </td>
              <td> <input type="text" name="txtCodAdmin" value="${admin.id}"></td>
              </tr>
              
              <tr>
              <td>Nome do admin: </td>
              <td> <input type="text" name="txtNomeAdmin" value="${admin.nome}"></td>
              </tr>
              
              <tr>
              <td>Email do admin: </td>
              <td> <input type="text" name="txtEmailAdmin" value="${admin.email}"></td>
              </tr>
              
              
              
        </table>

        <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>
              
              
    </body>
</html>
