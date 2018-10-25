<%-- 
    Document   : manterDisponibilidade
    Created on : 23/10/2018, 10:44:25
    Author     : Iza Ribeiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disponibilidade</title>
    </head>

    <body>
        <h1>Manter Disponibilidade- ${operacao}</h1>
    <form action="ManterDisponibilidadeController?acao=confirmaOperacao&operacao=${operacao}" method="post">
    
        <table>
        <tr>
            <td>Código do disponibilidade: </td>
            <td><input type="text" name="txtIdDisponibilidade" value="${disponibilidade.id}"></td>
        </tr>
        <tr>
            <td>Data Dsponivel: </td>
            <td><input type="text" name="txtNomeDisponibilidade" value="${disponibilidade.dataDisponivel}"></td>
        </tr>
        <tr>
            <td>Hora Inicio: </td>
            <td><input type="text" name="txtNomeDisponibilidade" value="${disponibilidade.hora_inicio}"></td>
        </tr>
        <tr>
            <td>Hora Final: </td>
            <td><input type="text" name="txtNomeDisponibilidade" value="${disponibilidade.hora_fim}"></td>
        </tr>
       
    </table>
        
    <input type="submit" name="btnConfirmar" value="Confirmar">
    </form>

    </body>
</html>
