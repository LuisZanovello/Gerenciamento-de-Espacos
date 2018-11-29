
/* inicio javaScript Somente numero para o ID */

function validare(dom, tipo) {
    switch (tipo) {
        case'numero':
            var regex = /[A-Za-z]/g;
            break;
        case'texto':
            var regex = /\d/g;
            break;
    }
    dom.value = dom.value.replace(regex, '');
}

/* use onkeyup="validare(this,'numero')" se for numero  no input */
/* use onkeyup="validare(this,'texto')" se for texto  no input */
/* fim javaScript Somente numero para o ID */

/* Abaixo Função para os inputs */


/* Função para a classe pagamento */

function funcPagamento() {
    var txtCodPagamento = form1.txtCodPagamento.value;
    var txtVencimentoPagamento = form1.txtVencimentoPagamento.value;
    var txtCodBarrasPagamento = form1.txtCodBarrasPagamento.value;
    var txtValorTotalPagamento = form1.txtValorTotalPagamento.value;
    var optReserva = form1.optReserva.value;

    if (txtCodPagamento === "") {
        alert('Preencha o campo com um código, não permita que seja vazio');
        form1.txtCodPagamento.focus();
        return false;
    }

    if (txtCodPagamento >= 9999999999) {
        alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
        form1.txtCodPagamento.focus();
        return false;
    }

    if (txtCodPagamento <= 0) {
        alert('Preencha o campo com um código ACIMA de número NEGATIVO');
        form1.txtCodPagamento.focus();
        return false;
    }

    if (txtVencimentoPagamento === "") {
        alert('Preencha o campo "Vencimento"');
        form1.txtVencimentoPagamento.focus();
        return false;
    }
    if (txtCodBarrasPagamento === "") {
        alert('Preencha o campo "Cod Barras"');
        form1.txtCodBarrasPagamento.focus();
        return false;
    }

    if (txtValorTotalPagamento === "") {
        alert('Preencha o campo "Valor de pagamento"');
        form1.txtValorTotalPagamento.focus();
        return false;
    }


    if (optReserva === "") {
        alert('Preencha o campo "Local Reservado"');
        form1.optReserva.focus();
        return false;
    }



}



/* Função para a classe espaço */
function funcAdminEspaco() {
    var txtIdEspaco = form1.txtIdEspaco.value;
    var txtNome = form1.txtNome.value;
    var txtCep = form1.txtCep.value;
    var txtLogradouro = form1.txtLogradouro.value;
    var txtNumero = form1.txtNumero.value;
    var txtCnpj = form1.txtCnpj.value;
    var txtBairro = form1.txtBairro.value;
    var txtUf = form1.txtUf.value;
    var txtCidade = form1.txtCidade.value;
    var txtArea = form1.txtArea.value;
    var txtHoraFuncionamentoInicio = form1.txtHoraFuncionamentoInicio.value;
    var txtHoraFuncionamentoFinal = form1.txtHoraFuncionamentoFinal.value;
    var txtQuantidadePessoas = form1.txtQuantidadePessoas.value;





    if (txtIdEspaco === "") {
        alert('Preencha o campo com um código, não permita que seja vazio');
        form1.txtIdEspaco.focus();
        return false;
    }
    if (txtIdEspaco <= 0) {
        alert('Preencha o campo com um código ACIMA de número NEGATIVO');
        form1.txtIdEspaco.focus();
        return false;
    }
    if (txtIdEspaco >= 9999999999) {
        alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
        form1.txtIdEspaco.focus();
        return false;
    }

    if (txtNome === "") {
        alert('Preencha o campo "Nome", não o deixe em branco');
        form1.txtNome.focus();
        return false;
    }


    if (txtCep === "") {
        alert('Preencha o campo do "Cep", não o deixe em branco');
        form1.txtCep.focus();
        return false;
    }

    if (txtLogradouro === "") {
        alert('Preencha o campo "Logradouro", não o deixe em branco');
        form1.txtLogradouro.focus();
        return false;
    }

    if (txtNumero === "") {
        alert('Preencha o campo "Nº residencial", não o deixe em branco');
        form1.txtNumero.focus();
        return false;
    }

    if (txtCnpj === "") {
        alert('Preencha o campo "CNPJ", não o deixe em branco');
        form1.txtCnpj.focus();
        return false;
    }

    if (txtBairro === "") {
        alert('Preencha o campo "Bairro", não o deixe em branco');
        form1.txtBairro.focus();
        return false;
    }
    if (txtUf === "") {
        alert('Preencha o campo "UF", não o deixe em branco');
        form1.txtUf.focus();
        return false;
    }

    if (txtCidade === "") {
        alert('Preencha o campo "Cidade", não o deixe em branco');
        form1.txtCidade.focus();
        return false;
    }

    if (txtArea === "") {
        alert('Preencha o campo "Área" , não o deixe em branco');
        form1.txtArea.focus();
        return false;
    }

    if (txtHoraFuncionamentoInicio === "") {
        alert('Preencha o campo "Inicio de Funcionamento", não o deixe em branco');
        form1.txtHoraFuncionamentoInicio.focus();
        return false;
    }
    if (txtHoraFuncionamentoFinal === "") {
        alert('Preencha o campo "Fim  de Funcionamento", não o deixe em branco');
        form1.txtHoraFuncionamentoFinal.focus();
        return false;
    }
    if (txtQuantidadePessoas === "") {
        alert('Preencha o campo "Quantidade de Pessoas", não o deixe em branco');
        form1.txtQuantidadePessoas.focus();
        return false;
    }


}


/* Função para a classe Admin Cliente */

function adminCliente() {
    var txtIdCliente = form1.txtIdCliente.value;
    var txtNomeCliente = form1.txtNomeCliente.value;
    var txtSobrenomeCliente = form1.txtSobrenomeCliente.value;
    var txtEmailCliente = form1.txtEmailCliente.value;
    var txtSenhaCliente = form1.txtSenhaCliente.value;
    var txtDataNascimentoCliente = form1.txtDataNascimentoCliente.value;
    var txtCPFCliente = form1.txtCPFCliente.value;
    var rep_senha = form1.rep_senha.value;

    if (txtIdCliente === "") {
        alert('Preencha o campo com um código, não permita que seja vazio');
        form1.txtIdCliente.focus();
        return false;
    }

    if (txtIdCliente >= 9999999999) {
        alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
        form1.txtIdCliente.focus();
        return false;
    }

    if (txtIdCliente <= 0) {
        alert('Preencha o campo com um código ACIMA de número NEGATIVO');
        form1.txtIdCliente.focus();
        return false;
    }
    if (txtNomeCliente === "") {
        alert('Preencha o campo com seu nome corretamente');
        form1.txtNomeCliente.focus();
        return false;
    }
    if (txtSobrenomeCliente === "") {
        alert('Preencha o campo com seu sobrenome');
        form1.txtSobrenomeCliente.focus();
        return false;
    }


    if (txtDataNascimentoCliente === "") {
        alert('Preencha o campo da data de aniversário');
        form1.txtDataNascimentoCliente.focus();
        return false;
    }


    if (txtCPFCliente <= 0) {
        alert('Preencha o campo com seu CPF com números ACIMA DE NEGATIVO');
        form1.txtCPFCliente.focus();
        return false;
    }

    if (txtCPFCliente === "") {
        alert('Preencha o campo com seu CPF');
        form1.txtCPFCliente.focus();
        return false;
    }


    if (txtEmailCliente === "") {
        alert('Preencha o campo com um e-mail válido');
        form1.txtEmailCliente.focus();
        return false;
    }

    if (txtSenhaCliente === "") {
        alert('Preencha o campo senha');
        form1.txtSenhaCliente.focus();
        return false;
    }


    if (txtSenhaCliente !== rep_senha) {
        alert('Senhas diferentes');
        form1.txtSenhaCliente.focus();
        return false;
    }



}

/* Função para a classe  Cliente*/

function funcCliente() {
    var txtSenhaCliente = form1.txtSenhaCliente.value;
    var rep_senha = form1.rep_senha.value;

    if (txtSenhaCliente === "") {

        alert('Preencha o campo senha');
        form1.txtSenhaCliente.focus();
        return false;
    }

    if (txtSenhaCliente !== rep_senha) {
        alert('Senhas diferentes');
        form1.txtSenhaCliente.focus();
        return false;
    }
}

function funcAdmin() {

    var rep_senha = form1.rep_senha.value;
    var txtSenhaAdmin = form1.txtSenhaAdmin.value;

    if (txtSenhaAdmin === "") {

        alert('Preencha o campo senha');
        form1.txtSenhaAdmin.focus();
        return false;
    }

    if (txtSenhaAdmin !== rep_senha) {
        alert('Senhas diferentes');
        form1.txtSenhaAdmin.focus();
        return false;
    }
}

/* Função para a classe Reserva  */

function funcReserva() {
    var txtCodReserva = form1.txtCodReserva.value;
    var txtDataLocacao = form1.txtDataLocacao.value;
    var txtHrInicio = form1.txtHrInicio.value;
    var txtHrFim = form1.txtHrFim.value;
    var txtqtPessoas = form1.txtqtPessoas.value;
    var txtvalorLocacao = form1.txtvalorLocacao.value;
    var txtAvaliacao = form1.txtAvaliacao.value;
    var optCliente = form1.optCliente.value;
    var optEspaco = form1.optEspaco.value;


    if (txtCodReserva === "") {
        alert('Preencha o campo com um código, não permita que seja vazio');
        form1.txtCodReserva.focus();
        return false;
    }

    if (txtCodReserva >= 9999999999) {
        alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
        form1.txtCodReserva.focus();
        return false;
    }

    if (txtCodReserva <= 0) {
        alert('Preencha o campo com um código ACIMA de número NEGATIVO');
        form1.txtCodReserva.focus();
        return false;
    }

    if (txtDataLocacao === "") {
        alert('Preencha o campo "Data locação"');
        form1.txtDataLocacao.focus();
        return false;
    }
    if (txtHrInicio === "") {
        alert('Preencha o campo "Hora inicio"');
        form1.txtHrInicio.focus();
        return false;
    }

    if (txtHrFim === "") {
        alert('Preencha o campo "Hora fim"');
        form1.txtHrFim.focus();
        return false;
    }


    if (txtAvaliacao === "") {
        alert('Preencha o campo "Avaliação"');
        form1.txtAvaliacao.focus();
        return false;
    }


    if (txtqtPessoas === "") {
        alert('Preencha o campo "Quantidade de Pessoas"');
        form1.txtqtPessoas.focus();
        return false;
    }

    if (txtvalorLocacao === "") {
        alert('Preencha o campo "Valor de locação"');
        form1.txtvalorLocacao.focus();
        return false;
    }

    if (optCliente === "") {
        alert('Preencha o campo "Cliente"');
        form1.optCliente.focus();
        return false;
    }
    if (optEspaco === "") {
        alert('Preencha o campo "Espaço"');
        form1.optEspaco.focus();
        return false;
    }


}


/* Função para a classe Reembolso*/
function funcReembolso() {
    var txtCodReembolso = form1.txtCodReembolso.value;
    var txtNomeReembolso = form1.txtNomeReembolso.value;
    var optPagamento = form1.optPagamento.value;



    if (txtCodReembolso === "") {
        alert('Preencha o campo com um código, não permita que seja vazio');
        form1.txtCodReembolso.focus();
        return false;
    }

    if (txtCodReembolso >= 9999999999) {
        alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
        form1.txtCodReembolso.focus();
        return false;
    }

    if (txtCodReembolso <= 0) {
        alert('Preencha o campo com um código ACIMA de número NEGATIVO');
        form1.txtCodReembolso.focus();
        return false;
    }

    if (txtNomeReembolso === "") {
        alert('Preencha o campo "Tipo do Reembolso"');
        form1.txtNomeReembolso.focus();
        return false;
    }
    if (optPagamento === "") {
        alert('Preencha o campo "Pagamento"');
        form1.optPagamento.focus();
        return false;
    }


}


/* Função para a classe AdminModalidade*/


function funcAdminModalidade() {
    var txtIdModalidade = form1.txtIdModalidade.value;



    if (txtIdModalidade === "") {
        alert('Preencha o campo com um código, não permita que seja vazio');
        form1.txtIdModalidade.focus();
        return false;
    }

    if (txtIdModalidade <= 0) {
        alert('Preencha o campo com um código ACIMA de número NEGATIVO');
        form1.txtIdModalidade.focus();
        return false;
    }

    if (txtIdModalidade >= 9999999999) {
        alert('O campo de código foi preenchido acima do suportado (10 dígitos) ');
        form1.txtIdModalidade.focus();
        return false;
    }
}


/* Função para o CEP  */
$(document).ready(function () {

    function limpa_formulário_cep() {
        // Limpa valores do formulário de cep.
        $("#rua").val("");
        $("#bairro").val("");
        $("#cidade").val("");
        $("#uf").val("");
        $("#ibge").val("");
    }

    //Quando o campo cep perde o foco.
    $("#cep").blur(function () {

        //Nova variável "cep" somente com dígitos.
        var cep = $(this).val().replace(/\D/g, '');

        //Verifica se campo cep possui valor informado.
        if (cep != "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{8}$/;

            //Valida o formato do CEP.
            if (validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                $("#rua").val("...");
                $("#bairro").val("...");
                $("#cidade").val("...");
                $("#uf").val("...");
                $("#ibge").val("...");

                //Consulta o webservice viacep.com.br/
                $.getJSON("https://viacep.com.br/ws/" + cep + "/json/?callback=?", function (dados) {

                    if (!("erro" in dados)) {
                        //Atualiza os campos com os valores da consulta.
                        $("#rua").val(dados.logradouro);
                        $("#bairro").val(dados.bairro);
                        $("#cidade").val(dados.localidade);
                        $("#uf").val(dados.uf);
                        $("#ibge").val(dados.ibge);
                    } //end if.
                    else {
                        //CEP pesquisado não foi encontrado.
                        limpa_formulário_cep();
                        alert("CEP não encontrado.");
                    }
                });
            } //end if.
            else {
                //cep é inválido.
                limpa_formulário_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulário_cep();
        }
    });
});
