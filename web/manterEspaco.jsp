<%-- 
    Document   : manterEspaco
    Created on : 24/10/2018, 23:06:10
    Author     : luisg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Espaco</title>
    </head>
    <body>
       <h2>Manter Espaco - ${operacao}</h2>
         <form action="ManterEspacoController?acao=confirmarOperacao&operacao=${operacao}" method="post">
<table>
    <tr>
    <td>Codigo Espaco</td>
    <td><input type="text" name="txtIdEspaco" value="${espaco.id}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Espaço</td>
    <td><input type="text" name="txtNome" value="${espaco.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>CNPJ</td>
    <td><input type="text" name="txtCnpj" value="${espaco.cnpj}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Cep</td>
    <td><input type="text" name="txtCep" value="${espaco.cep}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Logradouro</td>
    <td><input type="text" name="txtLogradouro" value="${espaco.logradouro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Numero</td>
    <td><input type="text" name="txtNumero" value="${espaco.numero}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Complemento</td>
    <td><input type="text" name="txtComplemento" value="${espaco.complemento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Bairro</td>
    <td><input type="text" name="txtBairro" value="${espaco.bairro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Cidade</td>
    <td><input type="text" name="txtCidade" value="${espaco.cidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Uf</td>
    <td><input type="text" name="txtUf" value="${espaco.uf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Area</td>
    <td><input type="text" name="txtArea" value="${espaco.area}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Quantidade  de pessoas</td>
    <td><input type="text" name="txtQuantidadePessoas" value="${espaco.quantidadePessoas}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
    <tr>
    <td>Horario de funcionamento - Inicio</td>
    <td><input type="text" name="txtHoraFuncionamentoInicio" value="${espaco.horaFuncionamentoInicio}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
     <tr>
    <td>Horario de funcionamento - Fim</td>
    <td><input type="text" name="txtHoraFuncionamentoFinal" value="${espaco.horaFuncionamentoFinal}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
    </tr>
</table>
    <input type="submit" name="btnConfirmar" value="Confirmar">
         </form>
    </body>
</html>
