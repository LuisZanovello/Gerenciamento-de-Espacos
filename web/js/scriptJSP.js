
            /* inicio javaScript Somente numero para o ID */

           function validare(dom,tipo){
	switch(tipo){
		case'numero':var regex=/[A-Za-z]/g;break;
		case'texto':var regex=/\d/g;break;
	}
	dom.value=dom.value.replace(regex,'');
                }

            /* use onkeyup="validare(this,'numero')" se for numero  no input */
            /* use onkeyup="validare(this,'texto')" se for texto  no input */
            /* fim javaScript Somente numero para o ID */


/* Abaixo Função para os inputs */
            function validar() {

                var txtSenhaCliente = form1.txtSenhaCliente.value;
                var rep_senha = form1.rep_senha.value;

                if (txtSenhaCliente === "") {

                    alert('Preencham seu nome');
                    form1.txtSenhaCliente.focus();
                    return false;
                }
            }