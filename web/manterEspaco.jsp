<%-- 
    Document   : manterEspaco
    Created on : 24/10/2018, 23:06:10
    Author     : luisg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <td>Código Espaço</td>
    <td><input type="text" name="txtIdEspaco" value="${espaco.id}"></td>
    </tr>
    <tr>
    <td>Espaço</td>
    <td><input type="text" name="txtNome" value="${espaco.nome}"></td>
    </tr>
    <tr>
    <td>CNPJ</td>
    <td><input type="text" name="txtCnpj" value="${espaco.cnpj}"></td>
    </tr>
    <tr>
    <td>Cep</td>
    <td><input type="text" name="txtCep" value="${espaco.cep}"></td>
    </tr>
    <tr>
    <td>Logradouro</td>
    <td><input type="text" name="txtLogradouro" value="${espaco.logradouro}"></td>
    </tr>
    <tr>
    <td>Número</td>
    <td><input type="text" name="txtNumero" value="${espaco.numero}"></td>
    </tr>
    <tr>
    <td>Complemento</td>
    <td><input type="text" name="txtComplemento" value="${espaco.complemento}"></td>
    </tr>
    <tr>
    <td>Bairro</td>
    <td><input type="text" name="txtBairro" value="${espaco.bairro}"></td>
    </tr>
    <tr>
    <td>Cidade</td>
    <td><input type="text" name="txtCidade" value="${espaco.cidade}"></td>
    </tr>
    <tr>
    <td>Uf</td>
    <td><input type="text" name="txtUf" value="${espaco.uf}"></td>
    </tr>
    <tr>
    <td>Área</td>
    <td><input type="text" name="txtArea" value="${espaco.area}"></td>
    </tr>
    <tr>
    <td>Quantidade  de pessoas</td>
    <td><input type="text" name="txtQuantidadePessoas" value="${espaco.quantidadePessoas}"></td>
    </tr>
    <tr>
    <td>Horário de funcionamento - Inicio</td>
    <td><input type="text" name="txtHoraFuncionamentoInicio" value="${espaco.horaFuncionamentoInicio}"></td>
    </tr>
    <tr>
    <td>Horário de funcionamento - Fim</td>
    <td><input type="text" name="txtHoraFuncionamentoFim" value="${espaco.horaFuncionamentoFim}"></td>
    </tr>
</table>
    <input type="submit" name="btnConfirmar" value="Confirmar">
         </form>
    </body>
</html>
